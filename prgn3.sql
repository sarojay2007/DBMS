
mysql> CREATE DATABSE student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATABSE student' at line 1
mysql> CREATE DATABASE student;
ERROR 1007 (HY000): Can't create database 'student'; database exists
mysql> USE student;
Database changed
mysql> INSERT INTO student
    -> VALUES(7,'suresh','BCA',88,'Koppal');
ERROR 1146 (42S02): Table 'student.student' doesn't exist
mysql> USE college;
Database changed
mysql> SELECT*FROM student;
+----+-------+------------+-------+-----------+
| id | name  | department | marks | city      |
+----+-------+------------+-------+-----------+
|  1 | Akash | BCA        |    85 | Koppal    |
|  2 | Ravi  | BCA        |    75 | Gangavati |
|  3 | Priya | BCom       |    90 | Koppal    |
|  4 | Manoj | BCA        |    60 | Yelburga  |
|  5 | Anu   | BCom       |    90 | Koppal    |
|  6 | Kiran | BCA        |    95 | Gangavati |
+----+-------+------------+-------+-----------+
6 rows in set (0.00 sec)

mysql> INSERT INTO student
    -> VALUES(7,'suresh','BCA',88,'Koppal');
Query OK, 1 row affected (0.06 sec)

mysql> INSERT INTO student VALUES
    -> (8,'Pooja','BCA',78,'Koppal'),
    -> (9,'Ramesh','Bcom',82,'Ganagavathi'),
    -> (10,'Geeta,'BCA',91,'Yelburga');
    '> UPDATE student
    '> SET marks = 95
    '>
    '> INSERT INTO student VALUES
    '> (8,'Pooja','BCA',78,'Koppal'),
    '> (9,'Ramesh','Bcom',82,'Ganagavathi'),
    '> (10,'Geeta,'BCA',91,'Yelburga');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'BCA',91,'Yelburga');
UPDATE student
SET marks = 95

INSERT INTO student VALUES
(' at line 4
mysql> INSERT INTO student VALUES
    -> (8,'Pooja','BCA',78,'Koppal'),
    -> (9,'Ramesh','Bcom',82,'Ganagavathi'),
    -> (10,'Geeta','BCA',91,'Yelburga');
Query OK, 3 rows affected (0.05 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> UPDATE student
    -> SET marks = 95
    -> where ID = 7;
Query OK, 1 row affected (0.07 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> DELETE FROM student
    -> WHERE id = 10;
Query OK, 1 row affected (0.06 sec)

mysql> SELECT * FROM student;
+----+--------+------------+-------+-------------+
| id | name   | department | marks | city        |
+----+--------+------------+-------+-------------+
|  1 | Akash  | BCA        |    85 | Koppal      |
|  2 | Ravi   | BCA        |    75 | Gangavati   |
|  3 | Priya  | BCom       |    90 | Koppal      |
|  4 | Manoj  | BCA        |    60 | Yelburga    |
|  5 | Anu    | BCom       |    90 | Koppal      |
|  6 | Kiran  | BCA        |    95 | Gangavati   |
|  7 | suresh | BCA        |    95 | Koppal      |
|  8 | Pooja  | BCA        |    78 | Koppal      |
|  9 | Ramesh | Bcom       |    82 | Ganagavathi |
+----+--------+------------+-------+-------------+
9 rows in set (0.00 sec)

mysql> DELETE FROM student;
Query OK, 9 rows affected (0.06 sec)

