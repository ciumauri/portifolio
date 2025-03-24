/*
  Warnings:

  - You are about to drop the column `createdAt` on the `technologies` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `technologies` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "technologies" DROP COLUMN "createdAt",
DROP COLUMN "updatedAt";

-- CreateTable
CREATE TABLE "projects" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT,
    "image" TEXT[],
    "level" INTEGER NOT NULL,
    "type" TEXT NOT NULL,
    "featured" BOOLEAN NOT NULL DEFAULT false,
    "repository" TEXT NOT NULL,

    CONSTRAINT "projects_pkey" PRIMARY KEY ("id")
);
