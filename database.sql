CREATE DATABASE petmanager;
USE petmanager;

CREATE TABLE pet
(
    petId       BIGINT(10) PRIMARY KEY AUTO_INCREMENT,
    petName     VARCHAR(50) NOT NULL,
    petBreed    INT         NOT NULL,
    petSex      INT         NOT NULL,
    birthday    DATETIME    NOT NULL,
    description VARCHAR(200)
);

INSERT INTO pet (petName, petBreed, petSex, birthday)
VALUES ('小明', 1, 1, '2020-01-02 09:00:00'),
       ('小红', 2, 2, '2021-02-03 10:00:00'),
       ('小蓝', 3, 1, '2022-03-04 11:00:00'),
       ('小黄', 4, 2, '2023-04-05 12:00:00');