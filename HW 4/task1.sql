DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

CREATE TABLE petPet (
    petname VARCHAR(20) PRIMARY KEY,
    owner VARCHAR(45),
    species ENUM('M', 'F'),
    gender VARCHAR(15),
    birth DATE,
    death DATE
);
CREATE TABLE petEvent (
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    petname VARCHAR(20),
    eventdate DATE,
    eventtype VARCHAR(15),
    remark VARCHAR(255),
    FOREIGN KEY (petname) REFERENCES petPet(petname)
);
