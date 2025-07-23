Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 21
Server version: 9.3.0 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| information_schema        |
| mysql                     |
| performance_schema        |
| product                   |
| student                   |
| student_management_system |
| stusent_management_system |
| sys                       |
+---------------------------+
8 rows in set (0.014 sec)

mysql> use student;
Database changed
mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| information_schema        |
| mysql                     |
| performance_schema        |
| product                   |
| student                   |
| student_management_system |
| stusent_management_system |
| sys                       |
+---------------------------+
8 rows in set (0.010 sec)

mysql> show tables;
+-------------------+
| Tables_in_student |
+-------------------+
| student           |
+-------------------+
1 row in set (0.018 sec)

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int         | NO   | PRI | NULL    |       |
| name    | varchar(20) | NO   |     | NULL    |       |
| address | varchar(10) | NO   |     | NULL    |       |
| age     | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.017 sec)

mysql> alter table student add marks int not null;
Query OK, 0 rows affected (0.349 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int         | NO   | PRI | NULL    |       |
| name    | varchar(20) | NO   |     | NULL    |       |
| address | varchar(10) | NO   |     | NULL    |       |
| age     | int         | NO   |     | NULL    |       |
| marks   | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
5 rows in set (0.016 sec)

mysql> alter table student drop marks;
Query OK, 0 rows affected (0.348 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int         | NO   | PRI | NULL    |       |
| name    | varchar(20) | NO   |     | NULL    |       |
| address | varchar(10) | NO   |     | NULL    |       |
| age     | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.015 sec)

mysql> alter table student drop primary key;
Query OK, 0 rows affected (0.377 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int         | NO   |     | NULL    |       |
| name    | varchar(20) | NO   |     | NULL    |       |
| address | varchar(10) | NO   |     | NULL    |       |
| age     | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.018 sec)

mysql> alter table student add constraint id primary key(id);
Query OK, 0 rows affected (0.535 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int         | NO   | PRI | NULL    |       |
| name    | varchar(20) | NO   |     | NULL    |       |
| address | varchar(10) | NO   |     | NULL    |       |
| age     | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.016 sec)

mysql> alter table student rename column id to student_id;
Query OK, 0 rows affected (0.123 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | int         | NO   | PRI | NULL    |       |
| name       | varchar(20) | NO   |     | NULL    |       |
| address    | varchar(10) | NO   |     | NULL    |       |
| age        | int         | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.017 sec)

mysql> alter table student modify column name varchar(50)not null;
Query OK, 0 rows affected (0.085 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | int         | NO   | PRI | NULL    |       |
| name       | varchar(50) | NO   |     | NULL    |       |
| address    | varchar(10) | NO   |     | NULL    |       |
| age        | int         | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.015 sec)

mysql> insert into student(student_id,name,address,age)values(1,'tanvi','ahmedabad',22);
Query OK, 1 row affected (0.031 sec)

mysql> select*from student;
+------------+-------+-----------+-----+
| student_id | name  | address   | age |
+------------+-------+-----------+-----+
|          1 | tanvi | ahmedabad |  22 |
+------------+-------+-----------+-----+
1 row in set (0.005 sec)

mysql> select*from student;
+------------+-------+-----------+-----+
| student_id | name  | address   | age |
+------------+-------+-----------+-----+
|          1 | tanvi | ahmedabad |  22 |
+------------+-------+-----------+-----+
1 row in set (0.005 sec)

ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '3,'parth','gandhinagar',25)' at line 1
mysql> select*from student;
+------------+-------+-----------+-----+
| student_id | name  | address   | age |
+------------+-------+-----------+-----+
|          1 | tanvi | ahmedabad |  22 |
|          2 | janvi | bhavnagar |  27 |
+------------+-------+-----------+-----+
2 rows in set (0.005 sec)

mysql> insert into student values(3,'parth','kolkata',25);
Query OK, 1 row affected (0.033 sec)

mysql> select*from student;
+------------+-------+-----------+-----+
| student_id | name  | address   | age |
+------------+-------+-----------+-----+
|          1 | tanvi | ahmedabad |  22 |
|          2 | janvi | bhavnagar |  27 |
|          3 | parth | kolkata   |  25 |
+------------+-------+-----------+-----+
3 rows in set (0.005 sec)

mysql> insert into student values(4,'john','goa',30);
Query OK, 1 row affected (0.033 sec)

mysql> select*from student;
+------------+-------+-----------+-----+
| student_id | name  | address   | age |
+------------+-------+-----------+-----+
|          1 | tanvi | ahmedabad |  22 |
|          2 | janvi | bhavnagar |  27 |
|          3 | parth | kolkata   |  25 |
|          4 | john  | goa       |  30 |
+------------+-------+-----------+-----+
4 rows in set (0.005 sec)

mysql> insert into student values(5,'raj','dubai',20);
Query OK, 1 row affected (0.035 sec)

mysql> select*from student;
+------------+-------+-----------+-----+
| student_id | name  | address   | age |
+------------+-------+-----------+-----+
|          1 | tanvi | ahmedabad |  22 |
|          2 | janvi | bhavnagar |  27 |
|          3 | parth | kolkata   |  25 |
|          4 | john  | goa       |  30 |
|          5 | raj   | dubai     |  20 |
+------------+-------+-----------+-----+
5 rows in set (0.005 sec)

mysql> select*from student limit 2;
+------------+-------+-----------+-----+
| student_id | name  | address   | age |
+------------+-------+-----------+-----+
|          1 | tanvi | ahmedabad |  22 |
|          2 | janvi | bhavnagar |  27 |
+------------+-------+-----------+-----+
2 rows in set (0.005 sec)

mysql> select*from student limit 3;
+------------+-------+-----------+-----+
| student_id | name  | address   | age |
+------------+-------+-----------+-----+
|          1 | tanvi | ahmedabad |  22 |
|          2 | janvi | bhavnagar |  27 |
|          3 | parth | kolkata   |  25 |
+------------+-------+-----------+-----+
3 rows in set (0.005 sec)

mysql> select*from student;
+------------+-------+-----------+-----+
| student_id | name  | address   | age |
+------------+-------+-----------+-----+
|          1 | tanvi | ahmedabad |  22 |
|          2 | janvi | bhavnagar |  27 |
|          3 | parth | kolkata   |  25 |
|          4 | john  | goa       |  30 |
|          5 | raj   | dubai     |  20 |
+------------+-------+-----------+-----+
5 rows in set (0.005 sec)

mysql> select age from student;
+-----+
| age |
+-----+
|  22 |
|  27 |
|  25 |
|  30 |
|  20 |
+-----+
5 rows in set (0.005 sec)

mysql> select *from student order by age;
+------------+-------+-----------+-----+
| student_id | name  | address   | age |
+------------+-------+-----------+-----+
|          5 | raj   | dubai     |  20 |
|          1 | tanvi | ahmedabad |  22 |
|          3 | parth | kolkata   |  25 |
|          2 | janvi | bhavnagar |  27 |
|          4 | john  | goa       |  30 |
+------------+-------+-----------+-----+
5 rows in set (0.006 sec)

mysql> select*from student order by age desc;
+------------+-------+-----------+-----+
| student_id | name  | address   | age |
+------------+-------+-----------+-----+
|          4 | john  | goa       |  30 |
|          2 | janvi | bhavnagar |  27 |
|          3 | parth | kolkata   |  25 |
|          1 | tanvi | ahmedabad |  22 |
|          5 | raj   | dubai     |  20 |
+------------+-------+-----------+-----+
5 rows in set (0.005 sec)

mysql> select*from student;
+------------+-------+-----------+-----+
| student_id | name  | address   | age |
+------------+-------+-----------+-----+
|          1 | tanvi | ahmedabad |  22 |
|          2 | janvi | bhavnagar |  27 |
|          3 | parth | kolkata   |  25 |
|          4 | john  | goa       |  30 |
|          5 | raj   | dubai     |  20 |
+------------+-------+-----------+-----+
5 rows in set (0.005 sec)

mysql> select sum(age) from student;
+----------+
| sum(age) |
+----------+
|      124 |
+----------+
1 row in set (0.034 sec)

mysql> select avg(age)from  student;
+----------+
| avg(age) |
+----------+
|  24.8000 |
+----------+
1 row in set (0.011 sec)

mysql> select*from student;
+------------+-------+-----------+-----+
| student_id | name  | address   | age |
+------------+-------+-----------+-----+
|          1 | tanvi | ahmedabad |  22 |
|          2 | janvi | bhavnagar |  27 |
|          3 | parth | kolkata   |  25 |
|          4 | john  | goa       |  30 |
|          5 | raj   | dubai     |  20 |
+------------+-------+-----------+-----+
5 rows in set (0.005 sec)

mysql> select min(age) from student;
+----------+
| min(age) |
+----------+
|       20 |
+----------+
1 row in set (0.016 sec)

mysql> select max(age) from student;
+----------+
| max(age) |
+----------+
|       30 |
+----------+
1 row in set (0.005 sec)

mysql> select*from student;
+------------+-------+-----------+-----+
| student_id | name  | address   | age |
+------------+-------+-----------+-----+
|          1 | tanvi | ahmedabad |  22 |
|          2 | janvi | bhavnagar |  27 |
|          3 | parth | kolkata   |  25 |
|          4 | john  | goa       |  30 |
|          5 | raj   | dubai     |  20 |
+------------+-------+-----------+-----+
5 rows in set (0.005 sec)

mysql> select count(*)age  from student;
+-----+
| age |
+-----+
|   5 |
+-----+
1 row in set (0.036 sec)

mysql> select*from student;
+------------+-------+-----------+-----+
| student_id | name  | address   | age |
+------------+-------+-----------+-----+
|          1 | tanvi | ahmedabad |  22 |
|          2 | janvi | bhavnagar |  27 |
|          3 | parth | kolkata   |  25 |
|          4 | john  | goa       |  30 |
|          5 | raj   | dubai     |  20 |
+------------+-------+-----------+-----+
5 rows in set (0.005 sec)

mysql>