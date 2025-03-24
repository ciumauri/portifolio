/*
  Warnings:

  - The primary key for the `_ProjectToTechnology` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `technologies` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `technologies` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - Changed the type of `B` on the `_ProjectToTechnology` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- DropForeignKey
ALTER TABLE "_ProjectToTechnology" DROP CONSTRAINT "_ProjectToTechnology_B_fkey";

-- AlterTable
ALTER TABLE "_ProjectToTechnology" DROP CONSTRAINT "_ProjectToTechnology_AB_pkey",
DROP COLUMN "B",
ADD COLUMN     "B" INTEGER NOT NULL,
ADD CONSTRAINT "_ProjectToTechnology_AB_pkey" PRIMARY KEY ("A", "B");

-- AlterTable
ALTER TABLE "technologies" DROP CONSTRAINT "technologies_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "technologies_pkey" PRIMARY KEY ("id");

-- CreateIndex
CREATE INDEX "_ProjectToTechnology_B_index" ON "_ProjectToTechnology"("B");

-- AddForeignKey
ALTER TABLE "_ProjectToTechnology" ADD CONSTRAINT "_ProjectToTechnology_B_fkey" FOREIGN KEY ("B") REFERENCES "technologies"("id") ON DELETE CASCADE ON UPDATE CASCADE;
