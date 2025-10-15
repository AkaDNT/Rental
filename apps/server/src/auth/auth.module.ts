import { Module } from '@nestjs/common';
import { JwtModule, JwtModuleOptions } from '@nestjs/jwt';
import { PassportModule } from '@nestjs/passport';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { AuthService } from './auth.service';
import { AuthController } from './auth.controller';
import { UsersModule } from '../users/users.module';
import { PrismaModule } from '../prisma/prisma.module';
import { JwtStrategy } from './jwt.strategy';

@Module({
  imports: [
    ConfigModule.forRoot({ isGlobal: true }),
    UsersModule,
    PrismaModule,
    PassportModule.register({ defaultStrategy: 'jwt' }),
    JwtModule.registerAsync({
      imports: [ConfigModule],
      inject: [ConfigService],
      useFactory: (
        cs: ConfigService<{ JWT_ACCESS_SECRET: string; JWT_ACCESS_TTL?: string }>,
      ): JwtModuleOptions => {
        const secret = cs.getOrThrow('JWT_ACCESS_SECRET');
        const raw = cs.get('JWT_ACCESS_TTL') ?? '900';
        const seconds = /^\d+$/.test(raw)
          ? Number(raw)
          : (() => {
              throw new Error('JWT_ACCESS_TTL must be an integer number of seconds');
            })();
        return {
          secret,
          signOptions: { expiresIn: seconds },
        };
      },
    }),
  ],
  providers: [AuthService, JwtStrategy],
  controllers: [AuthController],
  exports: [AuthService],
})
export class AuthModule {}
