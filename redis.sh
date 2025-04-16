dnf module disable redis -y
dnf module enable redis:7 -y
dnf install redis -y
sed -i -e 's/c 0.0.0.0/0.0.0.0/g' -e '/protected-mode yes/c protected-mode no' /etc/redis/redis.conf
systemctl enable redis
systemctl start redis