# Install PHP7
```bash
$ sudo su -
$ rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
$ rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

$ yum erase php-*
$ yum install --enablerepo=remi-php71 php php-cli php-common php-devel php-fpm php-gd php-mbstring php-mysqlnd php-pdo php-pear php-pecl-apcu php-soap php-xml php-xmlrpc

# check php version
$ php --version

# install zip, unzip for installing Laravel
$ yum install zip unzip
```

# Install Composer

```bash
$ sudo su -

# get composer like this
https://getcomposer.org/download/

$ mv composer.phar /usr/local/bin/composer
```

# Install Laravel
```bash
$ composer create-project --prefer-dist laravel/laravel test

# change directory permission
$ chmod -R 777 test/storage
$ chmod -R 777 bootstrap/cache
```
