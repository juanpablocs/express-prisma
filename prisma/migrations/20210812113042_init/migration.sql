-- Active: 1691031789391@@127.0.0.1@3306@db
-- CreateTable
CREATE TABLE `post` (
    `id` INT AUTO_INCREMENT NOT NULL,
    `createdAt` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updatedAt` TIMESTAMP NOT NULL,
    `title` VARCHAR(255) NOT NULL,
    `content` TEXT,
    `published` BOOLEAN NOT NULL DEFAULT false,
    `authorId` INT NOT NULL,

    PRIMARY KEY (`id`)
);

CREATE TABLE `profile` (
    `id` INT AUTO_INCREMENT NOT NULL,
    `bio` TEXT,
    `userId` INT NOT NULL,

    PRIMARY KEY (`id`)
);

CREATE TABLE `user` (
    `id` INT AUTO_INCREMENT NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255),

    PRIMARY KEY (`id`)
);

CREATE UNIQUE INDEX `Profile_userId_unique` ON `profile`(`userId`);
CREATE UNIQUE INDEX `User_email_unique` ON `user`(`email`);

ALTER TABLE `post` ADD FOREIGN KEY (`authorId`) REFERENCES `user`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE `profile` ADD FOREIGN KEY (`userId`) REFERENCES `user`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;