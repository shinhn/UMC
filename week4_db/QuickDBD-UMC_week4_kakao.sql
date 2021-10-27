-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/XkCorO
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE `User` (
    `userIndex` int AUTO_INCREMENT NOT NULL ,
    `name` varchar(30)  NOT NULL ,
    `email` varchar(50)  NOT NULL ,
    `profileImgUrl` text  NULL ,
    `backGroundImgUrl` text  NULL ,
    `status` varchar(30)  NOT NULL DEFAULT 'active',
    `createAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `updateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    PRIMARY KEY (
        `userIndex`
    )
);

CREATE TABLE `Room` (
    `roomIndex` int AUTO_INCREMENT NOT NULL ,
    `name` varchar(30)  NOT NULL ,
    `imgUrl` text  NULL ,
    `status` varchar(30)  NOT NULL DEFAULT 'active',
    `createAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `updateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    PRIMARY KEY (
        `roomIndex`
    )
);

CREATE TABLE `Chat` (
    `chatIndex` int AUTO_INCREMENT NOT NULL ,
    `roomIndex` int  NOT NULL ,
    `message` text  NOT NULL ,
    `status` varchar(10)  NOT NULL DEFAULT 'active',
    `createAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `updateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    PRIMARY KEY (
        `chatIndex`
    )
);

CREATE TABLE `Member` (
    `memberIndex` int AUTO_INCREMENT NOT NULL ,
    `roomIndex` int  NOT NULL ,
    `userIndex` int  NOT NULL ,
    `status` varchar(10)  NOT NULL DEFAULT 'active',
    `createAt` timestamp  NOT NULL DEFAULT current_timestamp,
    `updateAt` timestamp  NOT NULL DEFAULT current_timestamp,
    PRIMARY KEY (
        `memberIndex`
    )
);

ALTER TABLE `Chat` ADD CONSTRAINT `fk_Chat_roomIndex` FOREIGN KEY(`roomIndex`)
REFERENCES `Room` (`roomIndex`);

-- SELECT * FROM User;