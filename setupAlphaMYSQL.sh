#!/bin/sh
#
mysql -uroot -p`grep 'temporary password' /var/log/mysqld.log | awk -e '{ print $11 }'` --connect-expired-password
mysql -uroot -pAlpha2018_ < createUserAlpha.sql
mysql -ualpha -pAlpha2018_ < createProducts.sql
