create database AlphaOfficeDB;
use AlphaOfficeDB;
CREATE USER 'alpha'@'localhost' IDENTIFIED BY 'Alpha2018_';
GRANT ALL PRIVILEGES ON *.* TO 'alpha'@'localhost' WITH GRANT OPTION;
CREATE USER 'alpha'@'%' IDENTIFIED BY 'Alpha2018_';
GRANT ALL PRIVILEGES ON *.* TO 'alpha'@'%' WITH GRANT OPTION;
exit
