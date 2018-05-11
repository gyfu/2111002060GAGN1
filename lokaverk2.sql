DROP DATABASE IF EXISTS 2111002060_lokaverk2;
CREATE DATABASE 2111002060_lokaverk2;
USE 2111002060_lokaverk2;
CREATE TABLE flytjandi (
	flytjandi_ID INT AUTO_INCREMENT PRIMARY KEY, 
    nafn VARCHAR(256),
    stofn VARCHAR(256),
    lokadagur VARCHAR(256),
    lysing VARCHAR(256)
    );
CREATE TABLE tegund (
	tegund_ID INT AUTO_INCREMENT PRIMARY KEY,
	nafn VARCHAR(256)
);
CREATE TABLE utgefandi (
	utgefandi_ID INT AUTO_INCREMENT PRIMARY KEY,
    nafn VARCHAR(256),
	netfang VARCHAR(256),
    stadsetning VARCHAR(256)
);
CREATE TABLE notandi (
	notandi_ID INT AUTO_INCREMENT PRIMARY KEY,
    nafn VARCHAR(256),
    faedingardagur VARCHAR(256),
	netfang VARCHAR(256),
    heimili VARCHAR(256)
);
CREATE TABLE notandalisti (
	listi_ID INT AUTO_INCREMENT PRIMARY KEY,
    heiti VARCHAR(256),
    stofndagur VARCHAR(256),
    notandiID INT,
    CONSTRAINT notandiID_FK FOREIGN KEY (notandiID) REFERENCES notandi(notandi_ID)
);
CREATE TABLE lag (
	lag_ID INT AUTO_INCREMENT PRIMARY KEY,
	heiti VARCHAR(256),
    lengd VARCHAR(256),
    texti VARCHAR(4096),
    utgafudagur VARCHAR(256),
    tegundID INT,
	utgefandiID INT,
    flytjandiID INT,
    CONSTRAINT tegundID_FK FOREIGN KEY (tegundID) REFERENCES tegund(tegund_ID),
    CONSTRAINT utgefandiID_FK FOREIGN KEY (utgefandiID) REFERENCES utgefandi(utgefandi_ID),
    CONSTRAINT flytjandiID_FK FOREIGN KEY (flytjandiID) REFERENCES flytjandi(flytjandi_ID)
);
CREATE TABLE listalog (
	listalag_ID INT AUTO_INCREMENT PRIMARY KEY,
    rod  INT,
    listiID INT,
    lagID INT,
    CONSTRAINT listiID_FK FOREIGN KEY (listiID) REFERENCES notandalisti(listi_ID),
    CONSTRAINT lagID_FK FOREIGN KEY (lagID) REFERENCES lag(lag_ID)
);

