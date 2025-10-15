import { Injectable, UnauthorizedException, ForbiddenException } from '@nestjs/common';
import { UsersService } from '../users/users.service';
import * as argon2 from 'argon2';
import { JwtService } from '@nestjs/jwt';
import { PrismaService } from '../prisma/prisma.service';
import { randomUUID } from 'crypto';
import { ConfigService } from '@nestjs/config';
import * as jwt from 'jsonwebtoken';

type MsString = `${number}${'ms' | 's' | 'm' | 'h' | 'd' | 'w' | 'y'}`;

@Injectable()
export class AuthService {
  constructor(
    private users: UsersService,
    private jwt: JwtService,
    private prisma: PrismaService,
    private cs: ConfigService<{ JWT_REFRESH_SECRET: string; JWT_REFRESH_TTL?: string }>,
  ) {}

  async register(email: string, password: string, name?: string) {
    const user = await this.users.createLocal(email, password, name);
    return this.issueTokens(user.id, await this.getUserRoles(user.id));
  }

  async login(email: string, password: string) {
    const user = await this.users.findByEmail(email);
    if (!user || !user.passwordHash) throw new UnauthorizedException();
    const ok = await argon2.verify(user.passwordHash, password);
    if (!ok) throw new UnauthorizedException();
    return this.issueTokens(user.id, await this.getUserRoles(user.id));
  }

  async issueTokens(userId: string, roles: string[]) {
    const jti = randomUUID();
    const accessToken = await this.jwt.signAsync({ sub: userId, roles });
    const refreshToken = await this.signRefresh({ sub: userId, jti });
    const hashed = await argon2.hash(refreshToken);
    const ttl = this.cs.get('JWT_REFRESH_TTL') ?? '30d';
    const expires = this.addFromNow(ttl);
    await this.prisma.refreshToken.create({
      data: { userId, hashed, jti, expiresAt: expires },
    });
    return { accessToken, refreshToken };
  }

  async refresh(refreshToken: string) {
    const payload = await this.verifyRefresh(refreshToken).catch(() => {
      throw new UnauthorizedException();
    });
    const record = await this.prisma.refreshToken.findUnique({ where: { jti: payload.jti } });
    if (!record || record.revokedAt) throw new UnauthorizedException();
    const valid = await argon2.verify(record.hashed, refreshToken);
    if (!valid || record.expiresAt < new Date()) throw new UnauthorizedException();
    await this.prisma.refreshToken.update({
      where: { id: record.id },
      data: { revokedAt: new Date() },
    });
    return this.issueTokens(payload.sub, await this.getUserRoles(payload.sub));
  }

  async logout(refreshToken: string) {
    const payload = await this.verifyRefresh(refreshToken).catch(() => null);
    if (!payload) return;
    await this.prisma.refreshToken.updateMany({
      where: { jti: payload.jti, revokedAt: null },
      data: { revokedAt: new Date() },
    });
  }

  private async getUserRoles(userId: string) {
    const user = await this.prisma.user.findUnique({
      where: { id: userId },
      include: { roles: true },
    });
    return (user?.roles || []).map(r => r.role);
  }

  private parseExpires(raw: string | undefined): number | MsString {
    if (!raw) return '30d';
    if (/^\d+$/.test(raw)) return Number(raw);
    if (/^\d+(ms|s|m|h|d|w|y)$/i.test(raw)) return raw.toLowerCase() as MsString;
    throw new Error('JWT_REFRESH_TTL must be seconds or <number><unit>');
  }

  private async signRefresh(data: any) {
    const secret = this.cs.getOrThrow('JWT_REFRESH_SECRET') as jwt.Secret;
    const expiresIn = this.parseExpires(this.cs.get('JWT_REFRESH_TTL'));
    return jwt.sign(data, secret, { expiresIn });
  }

  private async verifyRefresh(token: string) {
    const secret = this.cs.getOrThrow('JWT_REFRESH_SECRET') as jwt.Secret;
    return new Promise<any>((resolve, reject) =>
      jwt.verify(token, secret, (e, d) => (e ? reject(e) : resolve(d as any))),
    );
  }

  private addFromNow(span: string) {
    const now = new Date();
    const m = span.match(/^(\d+)([smhdw])$/i) ?? span.match(/^(\d+)$/);
    if (!m) return new Date(now.getTime() + 30 * 24 * 3600 * 1000);
    const v = parseInt(m[1], 10);
    const u = m[2]?.toLowerCase();
    const ms = !u
      ? v * 1000
      : u === 's'
        ? v * 1000
        : u === 'm'
          ? v * 60000
          : u === 'h'
            ? v * 3600000
            : u === 'd'
              ? v * 86400000
              : v * 7 * 86400000;
    return new Date(now.getTime() + ms);
  }
}
