dnf install rabbitmq-server -y

cp rabbitmq.repo /etc/yum.repos.d/rabbitmq.repo

rabbitmqctl add_user roboshop roboshop123
rabbitmqctl set_permissions -p / roboshop ".*" ".*" ".*"

systemctl enable rabbitmq-server
systemctl start rabbitmq-server