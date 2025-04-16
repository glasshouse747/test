dnf module disable redis -y
dnf module enable redis:7 -y
dnf install redis -y
sed -e 's/127.0.0.1/0.0.0.0/g' -e 's/protected-mode yes/protected-mode no' /etc/redis/redis.conf
systemctl enable redis
systemctl start redis