# Reference

https://dev.mysql.com/doc/mysql-yum-repo-quick-guide/en/
https://dev.mysql.com/doc/refman/5.7/en/adding-users.html

# Installation Instructions

```bash
# 20171020
$ sudo su -

# CentOS 7
$ curl -LO https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
# CentOS 6
# curl -LO https://dev.mysql.com/get/mysql57-community-release-el6-11.noarch.rpm

# install MySQL5.7
# if you want to install MySQL5.6, see official manual.
$ yum install mysql-community-server

$ systemctl start mysqld.service
$ systemctl status mysqld.service

# check temporary password and connect to MySQL
$ grep 'temporary password' /var/log/mysqld.log
$ mysql -uroot -p

# change password
mysql> ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyNewPass4!';

# add USER
# see official manual about PRIVILEGES
mysql> CREATE USER 'mfham'@'localhost' IDENTIFIED BY 'password';
mysql> GRANT ALL PRIVILEGES ON *.* TO 'mfham'@'localhost' WITH GRANT OPTION;
```
