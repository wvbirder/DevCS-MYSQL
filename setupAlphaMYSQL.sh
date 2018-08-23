#!/bin/sh
#
sudo systemctl stop mysqld
sudo sed -i.bak "\$askip-grant-tables" /etc/my.cnf
sudo systemctl start mysqld
mysql -uroot < changeRootPWD.sql
sudo sed -i.bak "\$d" /etc/my.cnf
sudo systemctl stop mysqld
sudo systemctl start mysqld
mysql -uroot -pAlpha2018_ < createUserAlpha.sql
mysql -ualpha -pAlpha2018_ < createProducts.sql
