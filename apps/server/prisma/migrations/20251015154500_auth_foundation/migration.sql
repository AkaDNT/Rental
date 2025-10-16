/*
  Warnings:

  - You are about to drop the column `createdAt` on the `ApiKey` table. All the data in the column will be lost.
  - You are about to drop the column `expiresAt` on the `ApiKey` table. All the data in the column will be lost.
  - You are about to drop the column `hashedKey` on the `ApiKey` table. All the data in the column will be lost.
  - You are about to drop the column `revokedAt` on the `ApiKey` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `ApiKey` table. All the data in the column will be lost.
  - You are about to drop the column `applicationDate` on the `Application` table. All the data in the column will be lost.
  - You are about to drop the column `leaseId` on the `Application` table. All the data in the column will be lost.
  - You are about to drop the column `phoneNumber` on the `Application` table. All the data in the column will be lost.
  - You are about to drop the column `propertyId` on the `Application` table. All the data in the column will be lost.
  - You are about to drop the column `tenantId` on the `Application` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `EmailVerificationToken` table. All the data in the column will be lost.
  - You are about to drop the column `expiresAt` on the `EmailVerificationToken` table. All the data in the column will be lost.
  - You are about to drop the column `usedAt` on the `EmailVerificationToken` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `EmailVerificationToken` table. All the data in the column will be lost.
  - You are about to drop the column `endDate` on the `Lease` table. All the data in the column will be lost.
  - You are about to drop the column `propertyId` on the `Lease` table. All the data in the column will be lost.
  - You are about to drop the column `startDate` on the `Lease` table. All the data in the column will be lost.
  - You are about to drop the column `tenantId` on the `Lease` table. All the data in the column will be lost.
  - You are about to drop the column `postalCode` on the `Location` table. All the data in the column will be lost.
  - You are about to drop the column `userAgent` on the `LoginActivity` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `LoginActivity` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `LoginAttempt` table. All the data in the column will be lost.
  - You are about to drop the column `phoneNumber` on the `Manager` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `Manager` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `PasswordResetToken` table. All the data in the column will be lost.
  - You are about to drop the column `expiresAt` on the `PasswordResetToken` table. All the data in the column will be lost.
  - You are about to drop the column `usedAt` on the `PasswordResetToken` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `PasswordResetToken` table. All the data in the column will be lost.
  - You are about to drop the column `amountDue` on the `Payment` table. All the data in the column will be lost.
  - You are about to drop the column `amountPaid` on the `Payment` table. All the data in the column will be lost.
  - You are about to drop the column `dueDate` on the `Payment` table. All the data in the column will be lost.
  - You are about to drop the column `leaseId` on the `Payment` table. All the data in the column will be lost.
  - You are about to drop the column `paymentDate` on the `Payment` table. All the data in the column will be lost.
  - You are about to drop the column `paymentStatus` on the `Payment` table. All the data in the column will be lost.
  - You are about to drop the column `applicationFee` on the `Property` table. All the data in the column will be lost.
  - You are about to drop the column `averageRating` on the `Property` table. All the data in the column will be lost.
  - You are about to drop the column `isParkingIncluded` on the `Property` table. All the data in the column will be lost.
  - You are about to drop the column `isPetsAllowed` on the `Property` table. All the data in the column will be lost.
  - You are about to drop the column `locationId` on the `Property` table. All the data in the column will be lost.
  - You are about to drop the column `managerId` on the `Property` table. All the data in the column will be lost.
  - You are about to drop the column `numberOfReviews` on the `Property` table. All the data in the column will be lost.
  - You are about to drop the column `photoUrls` on the `Property` table. All the data in the column will be lost.
  - You are about to drop the column `postedDate` on the `Property` table. All the data in the column will be lost.
  - You are about to drop the column `pricePerMonth` on the `Property` table. All the data in the column will be lost.
  - You are about to drop the column `propertyType` on the `Property` table. All the data in the column will be lost.
  - You are about to drop the column `securityDeposit` on the `Property` table. All the data in the column will be lost.
  - You are about to drop the column `squareFeet` on the `Property` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `RefreshToken` table. All the data in the column will be lost.
  - You are about to drop the column `deviceId` on the `RefreshToken` table. All the data in the column will be lost.
  - You are about to drop the column `expiresAt` on the `RefreshToken` table. All the data in the column will be lost.
  - You are about to drop the column `revokedAt` on the `RefreshToken` table. All the data in the column will be lost.
  - You are about to drop the column `userAgent` on the `RefreshToken` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `RefreshToken` table. All the data in the column will be lost.
  - You are about to drop the column `phoneNumber` on the `Tenant` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `Tenant` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `emailVerified` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `isActive` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `lastLoginAt` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `passwordHash` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `phoneNumber` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `pictureUrl` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `User` table. All the data in the column will be lost.
  - The primary key for the `UserRole` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `orgId` on the `UserRole` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `UserRole` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `WebAuthnCredential` table. All the data in the column will be lost.
  - You are about to drop the column `publicKey` on the `WebAuthnCredential` table. All the data in the column will be lost.
  - You are about to drop the column `userId` on the `WebAuthnCredential` table. All the data in the column will be lost.
  - You are about to drop the `_TenantFavorites` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_TenantProperties` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[lease_id]` on the table `Application` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[user_id]` on the table `Manager` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[user_id]` on the table `Tenant` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[user_name]` on the table `User` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `hashed_key` to the `ApiKey` table without a default value. This is not possible if the table is not empty.
  - Added the required column `application_date` to the `Application` table without a default value. This is not possible if the table is not empty.
  - Added the required column `phone_number` to the `Application` table without a default value. This is not possible if the table is not empty.
  - Added the required column `property_id` to the `Application` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tenant_id` to the `Application` table without a default value. This is not possible if the table is not empty.
  - Added the required column `expires_at` to the `EmailVerificationToken` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `EmailVerificationToken` table without a default value. This is not possible if the table is not empty.
  - Added the required column `end_date` to the `Lease` table without a default value. This is not possible if the table is not empty.
  - Added the required column `property_id` to the `Lease` table without a default value. This is not possible if the table is not empty.
  - Added the required column `start_date` to the `Lease` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tenant_id` to the `Lease` table without a default value. This is not possible if the table is not empty.
  - Added the required column `postal_code` to the `Location` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `LoginActivity` table without a default value. This is not possible if the table is not empty.
  - Added the required column `phone_number` to the `Manager` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `Manager` table without a default value. This is not possible if the table is not empty.
  - Added the required column `expires_at` to the `PasswordResetToken` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `PasswordResetToken` table without a default value. This is not possible if the table is not empty.
  - Added the required column `amount_due` to the `Payment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `amount_paid` to the `Payment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `due_date` to the `Payment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `lease_id` to the `Payment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `payment_date` to the `Payment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `payment_status` to the `Payment` table without a default value. This is not possible if the table is not empty.
  - Added the required column `application_fee` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `location_id` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `manager_id` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `price_per_month` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `property_type` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `security_deposit` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `square_feet` to the `Property` table without a default value. This is not possible if the table is not empty.
  - Added the required column `expires_at` to the `RefreshToken` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `RefreshToken` table without a default value. This is not possible if the table is not empty.
  - Added the required column `phone_number` to the `Tenant` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `Tenant` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_name` to the `User` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `UserRole` table without a default value. This is not possible if the table is not empty.
  - Added the required column `public_key` to the `WebAuthnCredential` table without a default value. This is not possible if the table is not empty.
  - Added the required column `user_id` to the `WebAuthnCredential` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "public"."ApiKey" DROP CONSTRAINT "ApiKey_userId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Application" DROP CONSTRAINT "Application_leaseId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Application" DROP CONSTRAINT "Application_propertyId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Application" DROP CONSTRAINT "Application_tenantId_fkey";

-- DropForeignKey
ALTER TABLE "public"."EmailVerificationToken" DROP CONSTRAINT "EmailVerificationToken_userId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Lease" DROP CONSTRAINT "Lease_propertyId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Lease" DROP CONSTRAINT "Lease_tenantId_fkey";

-- DropForeignKey
ALTER TABLE "public"."LoginActivity" DROP CONSTRAINT "LoginActivity_userId_fkey";

-- DropForeignKey
ALTER TABLE "public"."LoginAttempt" DROP CONSTRAINT "LoginAttempt_userId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Manager" DROP CONSTRAINT "Manager_userId_fkey";

-- DropForeignKey
ALTER TABLE "public"."PasswordResetToken" DROP CONSTRAINT "PasswordResetToken_userId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Payment" DROP CONSTRAINT "Payment_leaseId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Property" DROP CONSTRAINT "Property_locationId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Property" DROP CONSTRAINT "Property_managerId_fkey";

-- DropForeignKey
ALTER TABLE "public"."RefreshToken" DROP CONSTRAINT "RefreshToken_userId_fkey";

-- DropForeignKey
ALTER TABLE "public"."Tenant" DROP CONSTRAINT "Tenant_userId_fkey";

-- DropForeignKey
ALTER TABLE "public"."UserRole" DROP CONSTRAINT "UserRole_userId_fkey";

-- DropForeignKey
ALTER TABLE "public"."WebAuthnCredential" DROP CONSTRAINT "WebAuthnCredential_userId_fkey";

-- DropForeignKey
ALTER TABLE "public"."_TenantFavorites" DROP CONSTRAINT "_TenantFavorites_A_fkey";

-- DropForeignKey
ALTER TABLE "public"."_TenantFavorites" DROP CONSTRAINT "_TenantFavorites_B_fkey";

-- DropForeignKey
ALTER TABLE "public"."_TenantProperties" DROP CONSTRAINT "_TenantProperties_A_fkey";

-- DropForeignKey
ALTER TABLE "public"."_TenantProperties" DROP CONSTRAINT "_TenantProperties_B_fkey";

-- DropIndex
DROP INDEX "public"."Application_leaseId_key";

-- DropIndex
DROP INDEX "public"."Application_tenantId_propertyId_status_idx";

-- DropIndex
DROP INDEX "public"."EmailVerificationToken_userId_expiresAt_idx";

-- DropIndex
DROP INDEX "public"."Lease_tenantId_propertyId_startDate_idx";

-- DropIndex
DROP INDEX "public"."Manager_userId_key";

-- DropIndex
DROP INDEX "public"."PasswordResetToken_userId_expiresAt_idx";

-- DropIndex
DROP INDEX "public"."Payment_leaseId_dueDate_idx";

-- DropIndex
DROP INDEX "public"."Property_locationId_postedDate_idx";

-- DropIndex
DROP INDEX "public"."RefreshToken_userId_expiresAt_idx";

-- DropIndex
DROP INDEX "public"."Tenant_userId_key";

-- AlterTable
ALTER TABLE "ApiKey" DROP COLUMN "createdAt",
DROP COLUMN "expiresAt",
DROP COLUMN "hashedKey",
DROP COLUMN "revokedAt",
DROP COLUMN "userId",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "expires_at" TIMESTAMP(3),
ADD COLUMN     "hashed_key" TEXT NOT NULL,
ADD COLUMN     "revoked_at" TIMESTAMP(3),
ADD COLUMN     "user_id" TEXT;

-- AlterTable
ALTER TABLE "Application" DROP COLUMN "applicationDate",
DROP COLUMN "leaseId",
DROP COLUMN "phoneNumber",
DROP COLUMN "propertyId",
DROP COLUMN "tenantId",
ADD COLUMN     "application_date" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "lease_id" INTEGER,
ADD COLUMN     "phone_number" TEXT NOT NULL,
ADD COLUMN     "property_id" INTEGER NOT NULL,
ADD COLUMN     "tenant_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "EmailVerificationToken" DROP COLUMN "createdAt",
DROP COLUMN "expiresAt",
DROP COLUMN "usedAt",
DROP COLUMN "userId",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "expires_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "used_at" TIMESTAMP(3),
ADD COLUMN     "user_id" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Lease" DROP COLUMN "endDate",
DROP COLUMN "propertyId",
DROP COLUMN "startDate",
DROP COLUMN "tenantId",
ADD COLUMN     "end_date" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "property_id" INTEGER NOT NULL,
ADD COLUMN     "start_date" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "tenant_id" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "Location" DROP COLUMN "postalCode",
ADD COLUMN     "postal_code" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "LoginActivity" DROP COLUMN "userAgent",
DROP COLUMN "userId",
ADD COLUMN     "user_agent" TEXT,
ADD COLUMN     "user_id" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "LoginAttempt" DROP COLUMN "userId",
ADD COLUMN     "user_id" TEXT;

-- AlterTable
ALTER TABLE "Manager" DROP COLUMN "phoneNumber",
DROP COLUMN "userId",
ADD COLUMN     "phone_number" TEXT NOT NULL,
ADD COLUMN     "user_id" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "PasswordResetToken" DROP COLUMN "createdAt",
DROP COLUMN "expiresAt",
DROP COLUMN "usedAt",
DROP COLUMN "userId",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "expires_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "used_at" TIMESTAMP(3),
ADD COLUMN     "user_id" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Payment" DROP COLUMN "amountDue",
DROP COLUMN "amountPaid",
DROP COLUMN "dueDate",
DROP COLUMN "leaseId",
DROP COLUMN "paymentDate",
DROP COLUMN "paymentStatus",
ADD COLUMN     "amount_due" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "amount_paid" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "due_date" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "lease_id" INTEGER NOT NULL,
ADD COLUMN     "payment_date" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "payment_status" "PaymentStatus" NOT NULL;

-- AlterTable
ALTER TABLE "Property" DROP COLUMN "applicationFee",
DROP COLUMN "averageRating",
DROP COLUMN "isParkingIncluded",
DROP COLUMN "isPetsAllowed",
DROP COLUMN "locationId",
DROP COLUMN "managerId",
DROP COLUMN "numberOfReviews",
DROP COLUMN "photoUrls",
DROP COLUMN "postedDate",
DROP COLUMN "pricePerMonth",
DROP COLUMN "propertyType",
DROP COLUMN "securityDeposit",
DROP COLUMN "squareFeet",
ADD COLUMN     "application_fee" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "average_rating" DOUBLE PRECISION NOT NULL DEFAULT 0,
ADD COLUMN     "is_parking_included" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "is_pets_allowed" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "location_id" INTEGER NOT NULL,
ADD COLUMN     "manager_id" INTEGER NOT NULL,
ADD COLUMN     "number_of_reviews" INTEGER NOT NULL DEFAULT 0,
ADD COLUMN     "photo_urls" TEXT[],
ADD COLUMN     "posted_date" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "price_per_month" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "property_type" "PropertyType" NOT NULL,
ADD COLUMN     "security_deposit" DOUBLE PRECISION NOT NULL,
ADD COLUMN     "square_feet" INTEGER NOT NULL;

-- AlterTable
ALTER TABLE "RefreshToken" DROP COLUMN "createdAt",
DROP COLUMN "deviceId",
DROP COLUMN "expiresAt",
DROP COLUMN "revokedAt",
DROP COLUMN "userAgent",
DROP COLUMN "userId",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "device_id" TEXT,
ADD COLUMN     "expires_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "revoked_at" TIMESTAMP(3),
ADD COLUMN     "user_agent" TEXT,
ADD COLUMN     "user_id" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Tenant" DROP COLUMN "phoneNumber",
DROP COLUMN "userId",
ADD COLUMN     "phone_number" TEXT NOT NULL,
ADD COLUMN     "user_id" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "User" DROP COLUMN "createdAt",
DROP COLUMN "emailVerified",
DROP COLUMN "isActive",
DROP COLUMN "lastLoginAt",
DROP COLUMN "passwordHash",
DROP COLUMN "phoneNumber",
DROP COLUMN "pictureUrl",
DROP COLUMN "updatedAt",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "email_verified" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "is_active" BOOLEAN NOT NULL DEFAULT true,
ADD COLUMN     "last_login_at" TIMESTAMP(3),
ADD COLUMN     "password_hash" TEXT,
ADD COLUMN     "phone_number" TEXT,
ADD COLUMN     "picture_url" TEXT,
ADD COLUMN     "updated_at" TIMESTAMP(3) NOT NULL,
ADD COLUMN     "user_name" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "UserRole" DROP CONSTRAINT "UserRole_pkey",
DROP COLUMN "orgId",
DROP COLUMN "userId",
ADD COLUMN     "org_id" TEXT,
ADD COLUMN     "user_id" TEXT NOT NULL,
ADD CONSTRAINT "UserRole_pkey" PRIMARY KEY ("user_id", "role");

-- AlterTable
ALTER TABLE "WebAuthnCredential" DROP COLUMN "createdAt",
DROP COLUMN "publicKey",
DROP COLUMN "userId",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN     "public_key" TEXT NOT NULL,
ADD COLUMN     "user_id" TEXT NOT NULL;

-- DropTable
DROP TABLE "public"."_TenantFavorites";

-- DropTable
DROP TABLE "public"."_TenantProperties";

-- CreateTable
CREATE TABLE "_tenant_favorites" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,

    CONSTRAINT "_tenant_favorites_AB_pkey" PRIMARY KEY ("A","B")
);

-- CreateTable
CREATE TABLE "_tenant_properties" (
    "A" INTEGER NOT NULL,
    "B" INTEGER NOT NULL,

    CONSTRAINT "_tenant_properties_AB_pkey" PRIMARY KEY ("A","B")
);

-- CreateIndex
CREATE INDEX "_tenant_favorites_B_index" ON "_tenant_favorites"("B");

-- CreateIndex
CREATE INDEX "_tenant_properties_B_index" ON "_tenant_properties"("B");

-- CreateIndex
CREATE UNIQUE INDEX "Application_lease_id_key" ON "Application"("lease_id");

-- CreateIndex
CREATE INDEX "Application_tenant_id_property_id_status_idx" ON "Application"("tenant_id", "property_id", "status");

-- CreateIndex
CREATE INDEX "EmailVerificationToken_user_id_expires_at_idx" ON "EmailVerificationToken"("user_id", "expires_at");

-- CreateIndex
CREATE INDEX "Lease_tenant_id_property_id_start_date_idx" ON "Lease"("tenant_id", "property_id", "start_date");

-- CreateIndex
CREATE UNIQUE INDEX "Manager_user_id_key" ON "Manager"("user_id");

-- CreateIndex
CREATE INDEX "PasswordResetToken_user_id_expires_at_idx" ON "PasswordResetToken"("user_id", "expires_at");

-- CreateIndex
CREATE INDEX "Payment_lease_id_due_date_idx" ON "Payment"("lease_id", "due_date");

-- CreateIndex
CREATE INDEX "Property_location_id_posted_date_idx" ON "Property"("location_id", "posted_date");

-- CreateIndex
CREATE INDEX "RefreshToken_user_id_expires_at_idx" ON "RefreshToken"("user_id", "expires_at");

-- CreateIndex
CREATE UNIQUE INDEX "Tenant_user_id_key" ON "Tenant"("user_id");

-- CreateIndex
CREATE UNIQUE INDEX "User_user_name_key" ON "User"("user_name");

-- AddForeignKey
ALTER TABLE "UserRole" ADD CONSTRAINT "UserRole_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "RefreshToken" ADD CONSTRAINT "RefreshToken_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "EmailVerificationToken" ADD CONSTRAINT "EmailVerificationToken_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "PasswordResetToken" ADD CONSTRAINT "PasswordResetToken_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "WebAuthnCredential" ADD CONSTRAINT "WebAuthnCredential_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ApiKey" ADD CONSTRAINT "ApiKey_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LoginActivity" ADD CONSTRAINT "LoginActivity_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LoginAttempt" ADD CONSTRAINT "LoginAttempt_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Manager" ADD CONSTRAINT "Manager_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Tenant" ADD CONSTRAINT "Tenant_user_id_fkey" FOREIGN KEY ("user_id") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Property" ADD CONSTRAINT "Property_location_id_fkey" FOREIGN KEY ("location_id") REFERENCES "Location"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Property" ADD CONSTRAINT "Property_manager_id_fkey" FOREIGN KEY ("manager_id") REFERENCES "Manager"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Application" ADD CONSTRAINT "Application_property_id_fkey" FOREIGN KEY ("property_id") REFERENCES "Property"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Application" ADD CONSTRAINT "Application_tenant_id_fkey" FOREIGN KEY ("tenant_id") REFERENCES "Tenant"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Application" ADD CONSTRAINT "Application_lease_id_fkey" FOREIGN KEY ("lease_id") REFERENCES "Lease"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Lease" ADD CONSTRAINT "Lease_property_id_fkey" FOREIGN KEY ("property_id") REFERENCES "Property"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Lease" ADD CONSTRAINT "Lease_tenant_id_fkey" FOREIGN KEY ("tenant_id") REFERENCES "Tenant"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Payment" ADD CONSTRAINT "Payment_lease_id_fkey" FOREIGN KEY ("lease_id") REFERENCES "Lease"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_tenant_favorites" ADD CONSTRAINT "_tenant_favorites_A_fkey" FOREIGN KEY ("A") REFERENCES "Property"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_tenant_favorites" ADD CONSTRAINT "_tenant_favorites_B_fkey" FOREIGN KEY ("B") REFERENCES "Tenant"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_tenant_properties" ADD CONSTRAINT "_tenant_properties_A_fkey" FOREIGN KEY ("A") REFERENCES "Property"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_tenant_properties" ADD CONSTRAINT "_tenant_properties_B_fkey" FOREIGN KEY ("B") REFERENCES "Tenant"("id") ON DELETE CASCADE ON UPDATE CASCADE;
