dnf module disable nodejs -y
dnf module enable nodejs:20 -y
dnf install nodejs -y

#starting because changing the location.
cp catalogue /etc/systemd/system/catalogue.service
cp mongo.service /etc/yum.repos.d/mongo.repo


useradd roboshop
mkdir /app
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue-v3.zip
cd /app
unzip /tmp/catalogue.zip
cd /app
npm install


dnf install mongodb-mongosh -y
mongosh --host mongodb-dev.veerankitek.in </app/db/master-data.js
systemctl daemon-reload
systemctl enable catalogue
systemctl start catalogue