DROP DATABASE IF EXISTS 2111002060_lokaverk;
CREATE DATABASE 2111002060_lokaverk;
USE 2111002060_lokaverk;

CREATE TABLE flytjandi
(
	id INT PRIMARY KEY,
    nofn VARCHAR(40),
    stofn VARCHAR(8),
    lok VARCHAR(8),
    bio VARCHAR(40)
);
CREATE TABLE lagalisti
(
	id INT PRIMARY KEY,
    nafn VARCHAR(40),
    lengd VARCHAR(40),
    texti VARCHAR(512),
    utgafudagur VARCHAR(8)
);
CREATE TABLE tegund
(
	id INT PRIMARY KEY,
    tontegund VARCHAR(40),
    flytjandi VARCHAR(40)
);
CREATE TABLE utgefandi
(
	id INT PRIMARY KEY,
    nafn VARCHAR(40),
    stefna VARCHAR(40),
    copyright VARCHAR(40),
    stadur VARCHAR(40)
);
CREATE TABLE askrifandi
(
	id INT PRIMARY KEY,
    nafn VARCHAR(40),
    netfang VARCHAR(40),
    heimili VARCHAR(40)
);
CREATE TABLE lagaval
(
	id INT PRIMARY KEY,
    askrifandi VARCHAR(40),
    flytjandi VARCHAR(40),
    lag VARCHAR(40),
    dagsetning VARCHAR(8)
);
CREATE TABLE tonleikar
(
	id INT PRIMARY KEY,
    flytjendur VARCHAR(40),
    stadur VARCHAR(40),
    dagsetning VARCHAR(8),
    midasala VARCHAR(40),
    askrifendur_VP VARCHAR(40),
    dagskra VARCHAR(40)
);
CREATE TABLE midasala
(
	id INT PRIMARY KEY,
    fjoldi VARCHAR(40),
    stadur VARCHAR(40),
    flytjandi VARCHAR(40),
    dagsetning VARCHAR(8)
);


