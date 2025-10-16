import { IsEmail, IsString, MinLength } from 'class-validator';

export class LoginDto {
  @IsString() user_name: string;
  @IsString() @MinLength(6) password: string;
}
