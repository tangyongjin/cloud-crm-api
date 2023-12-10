rm -fr nanx.sql
mysqldump -uroot -p123456 nanx >nanx.sql

mysql -uroot -pAws@123456 -h119.254.88.173 nanx <nanx.sql