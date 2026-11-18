CREATE DATABASE employee;
ERROR 1007 (HY000): Can't create database 'employee'; database exists
mysql> USE employee;
Database changed
mysql> CREATE TABLE employee(
    -> emp-id INT,
    -> emp-name VARCHAR(50),
    -> salary INT
    ->
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-id INT,
emp-name VARCHAR(50),
salary INT

)' at line 2
mysql> CREATE TABLE employee(
    -> emp-id INT,
    -> emp-name VARCHAR(50),
    -> salary INT
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-id INT,
emp-name VARCHAR(50),
salary INT
)' at line 2
mysql> CREATE TABLE employee(
    -> emp_id INT,
    -> emp_name VARCHAR(50),
    -> salary INT
    -> );
ERROR 1050 (42S01): Table 'employee' already exists
mysql> ALTER TABLE employee
    -> ADD department VARCHAR(30);
Query OK, 0 rows affected (0.27 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE employee
    -> MODIFY salary DECIMAL(10,2);
ERROR 1054 (42S22): Unknown column 'salary' in 'employee'
mysql> TRANCATE TABLE emplyee;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'TRANCATE TABLE emplyee' at line 1
mysql> DESC employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| EMPID        | int         | YES  |     | NULL    |       |
| EMPLOYEENAME | varchar(25) | YES  |     | NULL    |       |
| EMPSAL       | int         | YES  |     | NULL    |       |
| department   | varchar(30) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> ALTER TABLE employee
    -> ADD salary DECIMAL(10,2);
Query OK, 0 rows affected (0.36 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> RENAME TABLE employee TO staff;
Query OK, 0 rows affected (0.24 sec)

mysql> TRUNCATE TABLE staff;
Query OK, 0 rows affected (0.62 sec)

mysql> DROP TABLE staff;
Query OK, 0 rows affected (0.14 sec)