#!/bin/sh
#
mysql -uroot -p-p`grep 'temporary password' /var/log/mysqld.log | awk -e '{ print $11 }'` < changeRootPWD.sql
mysql -uroot -pAlpha2018_ < createUserAlpha.sql
mysql -ualpha -pAlpha2018_ < createProducts.sql
