import { IsEmail, IsIn, IsOptional, IsString, MinLength } from 'class-validator';

export class RegisterDto {
  @IsEmail() email: string;
  @IsString() @MinLength(6) password: string;
  @IsString() user_name: string;
  @IsString() @IsIn(['TENANT', 'MANAGER']) role: 'TENANT' | 'MANAGER';
}
