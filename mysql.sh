if [ -z "$1" ]; then
    echo Input password is missing.
    exit
fi


dnf install mysql-server -y
mysql_secure_installation --set-root-pass RoboShop@1
systemctl enable mysqld
systemctl start mysqld