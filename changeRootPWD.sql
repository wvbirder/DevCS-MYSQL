UPDATE mysql.user SET authentication_string = PASSWORD('Alpha2018_'), password_expired = 'N' WHERE User = 'root' AND Host = 'localhost';
exit;
