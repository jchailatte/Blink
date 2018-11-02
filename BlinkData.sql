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
	name varchar(50) not null,
	email varchar(50) not null,
    age int(3) not null,
    gender varchar(10) not null,
    genderPreference varchar(10) not null,
    indoorOutdoor varchar(10) not null,
    earlyBirdNightOwl varchar(20) not null,
    catDog varchar(10) not null,
    music varchar(20) not null,
    sports varchar(10) not null,
    workout varchar(10) not null,
    idealDate varchar(10000) not null
);