source common.sh
component=shipping
MAVEN

dnf install mysql -y
#RoboShop@1
mysql -h mysql-dev.veerankitek.in -uroot -p$1 < /app/db/schema.sql
mysql -h mysql-dev.veerankitek.in -uroot -p$1 < /app/db/app-user.sql
mysql -h mysql-dev.veerankitek.in -uroot -p$1 < /app/db/master-data.sql
