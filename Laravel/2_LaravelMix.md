```bash
# https://laravel.com/docs/5.5/mix

# install Node.js@CentOS7 and npm with yum
$ sudo yum install nodejs
[root@localhost ~]# node --version
v6.12.0
[root@localhost ~]# npm --version
3.10.10

# install Node.js@CentOS7 with command
$ sudo yum install clang
$ sudo yum install gcc

[root@localhost ~]# make --version
GNU Make 3.82
Built for x86_64-redhat-linux-gnu
Copyright (C) 2010  Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.
[root@localhost ~]# g++ --version
g++ (GCC) 4.8.5 20150623 (Red Hat 4.8.5-16)
Copyright (C) 2015 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

[root@localhost ~]# gcc --version
gcc (GCC) 4.8.5 20150623 (Red Hat 4.8.5-16)
Copyright (C) 2015 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

[root@localhost ~]# clang --version
clang version 3.4.2 (tags/RELEASE_34/dot2-final)
Target: x86_64-redhat-linux-gnu
Thread model: posix
[root@localhost ~]# python --version
Python 2.7.5
[root@localhost ~]# make --version
GNU Make 3.82
Built for x86_64-redhat-linux-gnu
Copyright (C) 2010  Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

# get
$ curl -O https://nodejs.org/dist/v8.9.3/node-v8.9.3-linux-x64.tar.gz
$ tar xzxvf node-v8.9.3-linux-x64.tar.gz


# start at root dir
$ npm install

# Run all Mix tasks...
$ npm run dev

# Run all Mix tasks and minify output...
$ npm run production
```