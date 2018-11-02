DROP DATABASE if exists BlinkData;

CREATE DATABASE BlinkData;

USE BlinkData;

CREATE TABLE Users (
	userID int(11) primary key not null auto_increment,
    username varchar(50) not null,
    fname varchar(50) not null,
    lname varchar(50) not null,
    state int(2) not null,
    password varchar(50) not null,
    email varchar(50) not null,
    profileImg varchar(50) not null
);

CREATE TABLE Guests(
	guestID int(11) primary key not null auto_increment,
    fname varchar(50) not null,
    lname varchar(50) not null,
    state int(2) not null
);

CREATE TABLE Survey(
	ID int(11) primary key not null auto_increment,
    age int(3) not null,
    gender varchar(10) not null
);