# create table
https://dev.mysql.com/doc/refman/5.7/en/create-table-secondary-indexes.html#json-column-indirect-index

```sql
CREATE TABLE test.data (
     id BIGINT NOT NULL AUTO_INCREMENT,
     value INT NOT NULL,
     category_ids JSON NOT NULL,
     device_ids JSON NOT NULL,
     PRIMARY KEY (id)
);

CREATE TABLE test.category (
     id BIGINT NOT NULL AUTO_INCREMENT,
     name VARCHAR(1024) NOT NULL,
     PRIMARY KEY (id)
);

CREATE TABLE test.device (
     id BIGINT NOT NULL AUTO_INCREMENT,
     name VARCHAR(1024) NOT NULL,
     PRIMARY KEY (id)
);
```

# insert data

```sql
INSERT INTO test.category (name) VALUES ('HTML'), ('Ruby'), ('PHP'), ('CSS');

INSERT INTO test.device (name) VALUES ('iPhone7'), ('Nexus7'), ('Xperia');

INSERT INTO test.data (value, category_ids, device_ids) VALUES (340, '[1, 3, 4]', '[3]'), (220, '[]', '[1, 2, 3]'), (510, '[2, 3]', '[]');
```

# check data
https://stackoverflow.com/questions/39818296/using-mysql-json-field-to-join-on-a-table
https://dev.mysql.com/doc/refman/5.7/en/json-search-functions.html

```sql
# get category name of data(id=1)
SELECT c.name FROM test.data d LEFT JOIN test.category c ON JSON_CONTAINS(d.category_ids, CAST(c.id AS JSON), '$') WHERE d.id = 1;

# get data which contains categoryId3
SELECT id FROM test.data WHERE JSON_CONTAINS(category_ids, '3', '$');
```
