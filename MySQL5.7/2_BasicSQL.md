# create database
https://dev.mysql.com/doc/refman/5.7/en/create-database.html
https://dev.mysql.com/doc/refman/5.7/en/charset.html
http://blog.tmd45.jp/entry/2016/07/30/134145
https://qiita.com/tfunato/items/e48ad0a37b8244a788f6

```sql
CREATE DATABASE IF NOT EXISTS test CHARACTER SET utf8mb4 COLLATE utf8mb4_bin;
```

# check database
https://dev.mysql.com/doc/refman/5.7/en/show-databases.html

```sql
SHOW DATABASES;
```

# create table
https://dev.mysql.com/doc/refman/5.7/en/create-table.html
https://dev.mysql.com/doc/refman/5.7/en/example-auto-increment.html

```sql
CREATE TABLE test.user (
     id BIGINT NOT NULL AUTO_INCREMENT,
     name CHAR(30) NOT NULL,
     age INT NOT NULL,
     PRIMARY KEY (id)
);
```

# check table list
https://dev.mysql.com/doc/refman/5.7/en/show-tables.html

```sql
SHOW [FULL] TABLES FROM test;
```

# check columns
https://dev.mysql.com/doc/refman/5.7/en/show-columns.html

```sql
SHOW [FULL] COLUMNS FROM test.user;
```

# insert data
https://dev.mysql.com/doc/refman/5.7/en/insert.html

```sql
INSERT INTO test.user (name, age) VALUES ('山田太郎', 25), ('鈴木花子', 19);
```

# check data
https://dev.mysql.com/doc/refman/5.7/en/select.html

```sql
SELECT * FROM test.user;
```
