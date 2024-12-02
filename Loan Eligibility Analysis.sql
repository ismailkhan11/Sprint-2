mysql> CREATE DATABASE loan_eligible;
Query OK, 1 row affected (0.06 sec)

mysql> SHOW databases;
+----------------------+
| Database             |
+----------------------+
| anpc8905             |
| information_schema   |
| loan_eligible        |
| loandata             |
| mysql                |
| parks_and_recreation |
| performance_schema   |
| pizza_db             |
| sakila               |
| sql_lab              |
| sys                  |
| world                |
| world_layoffs        |
+----------------------+
13 rows in set (0.07 sec)

mysql> USE loan_eligible;
Database changed

mysql> CREATE TABLE Applicants (
    ->     Applicant_ID INT PRIMARY KEY AUTO_INCREMENT,
    ->     Loan_ID VARCHAR(10),
    ->     Gender VARCHAR(10),
    ->     Married VARCHAR(10),
    ->     Dependents INT,
    ->     Education VARCHAR(20),
    ->     Self_Employed VARCHAR(10),
    ->     ApplicantIncome DECIMAL(10, 2),
    ->     CoapplicantIncome DECIMAL(10, 2),
    ->     Credit_History DECIMAL(2, 1),
    ->     Property_Area VARCHAR(20));
Query OK, 0 rows affected (0.09 sec)

mysql> DESC Applicants;
+-------------------+---------------+------+-----+---------+----------------+
| Field             | Type          | Null | Key | Default | Extra          |
+-------------------+---------------+------+-----+---------+----------------+
| Applicant_ID      | int           | NO   | PRI | NULL    | auto_increment |
| Loan_ID           | varchar(10)   | YES  |     | NULL    |                |
| Gender            | varchar(10)   | YES  |     | NULL    |                |
| Married           | varchar(10)   | YES  |     | NULL    |                |
| Dependents        | int           | YES  |     | NULL    |                |
| Education         | varchar(20)   | YES  |     | NULL    |                |
| Self_Employed     | varchar(10)   | YES  |     | NULL    |                |
| ApplicantIncome   | decimal(10,2) | YES  |     | NULL    |                |
| CoapplicantIncome | decimal(10,2) | YES  |     | NULL    |                |
| Credit_History    | decimal(2,1)  | YES  |     | NULL    |                |
| Property_Area     | varchar(20)   | YES  |     | NULL    |                |
+-------------------+---------------+------+-----+---------+----------------+
11 rows in set (0.00 sec)

mysql> INSERT INTO Applicants
    -> (Applicant_ID, Loan_ID, Gender, Married, Dependents, Education, Self_Employed, ApplicantIncome,
    ->  CoapplicantIncome, Credit_History, Property_Area)
    -> VALUES
    -> (1,'LP001005','Male','Yes',0,'Graduate','Yes',3000,0,1,'Semiurban'),
    -> (2,'LP001006','Male','Yes',0,'Graduate','No',2583,2358,1,'Semiurban'),
    -> (3,'LP001008','Male','Yes',0,'Graduate','No',6000,0,1,'Semiurban'),
    -> (4,'LP001013','Male','Yes',0,'Graduate','No',2333,1516,1,'Semiurban'),
    -> (5,'LP001024','Male','Yes',0,'Graduate','No',3200,700,1,'Semiurban'),
    -> (6,'LP001027','Male','Yes',0,'Graduate','No',2500,1840,1,'Semiurban'),
    -> (7,'LP001029','Male','Yes',0,'Graduate','No',1853,2840,1,'Semiurban'),
    -> (8,'LP001030','Male','Yes',0,'Graduate','No',1299,1086,1,'Semiurban'),
    -> (9,'LP001032','Male','Yes',0,'Graduate','No',4950,0,1,'Semiurban'),
    -> (10,'LP001034','Male','Yes',0,'Graduate','No',3596,0,1,'Semiurban'),
    -> (11,'LP001038','Male','Yes',0,'Graduate','No',4887,0,1,'Semiurban'),
    -> (12,'LP001041','Male','Yes',0,'Graduate','No',2600,3500,1,'Semiurban'),
    -> (13,'LP001043','Male','Yes',0,'Graduate','No',7660,0,1,'Semiurban'),
    -> (14,'LP001047','Male','Yes',0,'Graduate','No',2600,1911,1,'Semiurban'),
    -> (15,'LP001068','Male','Yes',0,'Graduate','No',2799,2253,1,'Semiurban'),
    -> (16,'LP001073','Male','Yes',0,'Graduate','No',4226,1040,1,'Semiurban'),
    -> (17,'LP001086','Male','Yes',1,'Graduate','No',1442,0,1,'Semiurban'),
    -> (18,'LP001087','Male','Yes',1,'Graduate','No',3750,2083,1,'Semiurban'),
    -> (19,'LP001095','Male','Yes',1,'Graduate','No',3167,0,1,'Semiurban'),
    -> (20,'LP001098','Male','Yes',1,'Graduate','No',3500,1667,1,'Semiurban'),
    -> (21,'LP001109','Male','Yes',1,'Graduate','No',1828,1330,1,'Urban'),
    -> (22,'LP001119','Male','Yes',1,'Graduate','No',3600,0,1,'Urban'),
    -> (23,'LP001120','Male','Yes',1,'Graduate','No',1800,1213,1,'Urban'),
    -> (24,'LP001123','Male','Yes',1,'Graduate','No',2400,0,1,'Urban'),
    -> (25,'LP001131','Male','Yes',1,'Graduate','No',3941,2336,1,'Urban'),
    -> (26,'LP001136','Male','Yes',1,'Graduate','Yes',4695,0,1,'Urban'),
    -> (27,'LP001138','Male','Yes',1,'Graduate','No',2510,0,1,'Urban'),
    -> (28,'LP001140','Male','Yes',1,'Graduate','No',3280,0,1,'Urban'),
    -> (29,'LP001155','Male','Yes',2,'Graduate','No',1928,1644,1,'Urban'),
    -> (30,'LP001164','Male','Yes',2,'Not Graduate','No',4230,0,1,'Urban'),
    -> (31,'LP001199','Male','Yes',2,'Not Graduate','No',3357,2859,1,'Urban'),
    -> (32,'LP001205','Male','Yes',2,'Not Graduate','No',2500,3796,1,'Urban'),
    -> (33,'LP001206','Male','Yes',2,'Not Graduate','No',3029,0,1,'Rural'),
    -> (34,'LP001250','Male','No',2,'Not Graduate','Yes',5200,2000,1,'Rural'),
    -> (35,'LP001251','Male','No',2,'Not Graduate','No',4500,0,1,'Rural'),
    -> (36,'LP001014','Female','No',2,'Not Graduate','No',2333,1516,1,'Rural'),
    -> (37,'LP001036','Female','No',3,'Not Graduate','No',3510,0,1,'Rural'),
    -> (38,'LP001042','Female','No',3,'Not Graduate','No',2600,3500,1,'Rural'),
    -> (39,'LP001112','Female','No',3,'Not Graduate','No',3667,1459,1,'Rural'),
    -> (40,'LP001137','Female','No',3,'Not Graduate','No',3410,0,1,'Rural'),
    -> (41,'LP001157','Female','Yes',0,'Graduate','No',3086,0,0,'Semiurban'),
    -> (42,'LP001165','Female','Yes',0,'Graduate','No',4230,0,0,'Semiurban'),
    -> (43,'LP001194','Female','Yes',0,'Graduate','No',2708,1167,0,'Semiurban'),
    -> (44,'LP001197','Female','Yes',0,'Graduate','No',3366,0,0,'Semiurban'),
    -> (45,'LP001222','Female','Yes',1,'Graduate','No',4166,0,0,'Semiurban'),
    -> (46,'LP001228','Female','Yes',1,'Graduate','No',3200,2254,0,'Urban'),
    -> (47,'LP001241','Female','Yes',1,'Not Graduate','No',3000,0,0,'Urban'),
    -> (48,'LP001252','Female','No',2,'Not Graduate','No',2800,1800,0,'Urban'),
    -> (49,'LP001253','Female','No',2,'Not Graduate','No',2000,1000,0,'Rural'),
    -> (50,'LP001254','Female','No',3,'Not Graduate','No',2900,1500,0,'Rural');
Query OK, 50 rows affected (0.06 sec)
Records: 50  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Applicants;
+--------------+----------+--------+---------+------------+--------------+---------------+-----------------+-------------------+----------------+---------------+
| Applicant_ID | Loan_ID  | Gender | Married | Dependents | Education    | Self_Employed | ApplicantIncome | CoapplicantIncome | Credit_History | Property_Area |
+--------------+----------+--------+---------+------------+--------------+---------------+-----------------+-------------------+----------------+---------------+
|            1 | LP001005 | Male   | Yes     |          0 | Graduate     | Yes           |         3000.00 |
  0.00 |            1.0 | Semiurban     |
|            2 | LP001006 | Male   | Yes     |          0 | Graduate     | No            |         2583.00 |           2358.00 |            1.0 | Semiurban     |
|            3 | LP001008 | Male   | Yes     |          0 | Graduate     | No            |         6000.00 |
  0.00 |            1.0 | Semiurban     |
|            4 | LP001013 | Male   | Yes     |          0 | Graduate     | No            |         2333.00 |           1516.00 |            1.0 | Semiurban     |
|            5 | LP001024 | Male   | Yes     |          0 | Graduate     | No            |         3200.00 |
700.00 |            1.0 | Semiurban     |
|            6 | LP001027 | Male   | Yes     |          0 | Graduate     | No            |         2500.00 |           1840.00 |            1.0 | Semiurban     |
|            7 | LP001029 | Male   | Yes     |          0 | Graduate     | No            |         1853.00 |           2840.00 |            1.0 | Semiurban     |
|            8 | LP001030 | Male   | Yes     |          0 | Graduate     | No            |         1299.00 |           1086.00 |            1.0 | Semiurban     |
|            9 | LP001032 | Male   | Yes     |          0 | Graduate     | No            |         4950.00 |
  0.00 |            1.0 | Semiurban     |
|           10 | LP001034 | Male   | Yes     |          0 | Graduate     | No            |         3596.00 |
  0.00 |            1.0 | Semiurban     |
|           11 | LP001038 | Male   | Yes     |          0 | Graduate     | No            |         4887.00 |
  0.00 |            1.0 | Semiurban     |
|           12 | LP001041 | Male   | Yes     |          0 | Graduate     | No            |         2600.00 |           3500.00 |            1.0 | Semiurban     |
|           13 | LP001043 | Male   | Yes     |          0 | Graduate     | No            |         7660.00 |
  0.00 |            1.0 | Semiurban     |
|           14 | LP001047 | Male   | Yes     |          0 | Graduate     | No            |         2600.00 |           1911.00 |            1.0 | Semiurban     |
|           15 | LP001068 | Male   | Yes     |          0 | Graduate     | No            |         2799.00 |           2253.00 |            1.0 | Semiurban     |
|           16 | LP001073 | Male   | Yes     |          0 | Graduate     | No            |         4226.00 |           1040.00 |            1.0 | Semiurban     |
|           17 | LP001086 | Male   | Yes     |          1 | Graduate     | No            |         1442.00 |
  0.00 |            1.0 | Semiurban     |
|           18 | LP001087 | Male   | Yes     |          1 | Graduate     | No            |         3750.00 |           2083.00 |            1.0 | Semiurban     |
|           19 | LP001095 | Male   | Yes     |          1 | Graduate     | No            |         3167.00 |
  0.00 |            1.0 | Semiurban     |
|           20 | LP001098 | Male   | Yes     |          1 | Graduate     | No            |         3500.00 |           1667.00 |            1.0 | Semiurban     |
|           21 | LP001109 | Male   | Yes     |          1 | Graduate     | No            |         1828.00 |           1330.00 |            1.0 | Urban         |
|           22 | LP001119 | Male   | Yes     |          1 | Graduate     | No            |         3600.00 |
  0.00 |            1.0 | Urban         |
|           23 | LP001120 | Male   | Yes     |          1 | Graduate     | No            |         1800.00 |           1213.00 |            1.0 | Urban         |
|           24 | LP001123 | Male   | Yes     |          1 | Graduate     | No            |         2400.00 |
  0.00 |            1.0 | Urban         |
|           25 | LP001131 | Male   | Yes     |          1 | Graduate     | No            |         3941.00 |           2336.00 |            1.0 | Urban         |
|           26 | LP001136 | Male   | Yes     |          1 | Graduate     | Yes           |         4695.00 |
  0.00 |            1.0 | Urban         |
|           27 | LP001138 | Male   | Yes     |          1 | Graduate     | No            |         2510.00 |
  0.00 |            1.0 | Urban         |
|           28 | LP001140 | Male   | Yes     |          1 | Graduate     | No            |         3280.00 |
  0.00 |            1.0 | Urban         |
|           29 | LP001155 | Male   | Yes     |          2 | Graduate     | No            |         1928.00 |           1644.00 |            1.0 | Urban         |
|           30 | LP001164 | Male   | Yes     |          2 | Not Graduate | No            |         4230.00 |
  0.00 |            1.0 | Urban         |
|           31 | LP001199 | Male   | Yes     |          2 | Not Graduate | No            |         3357.00 |           2859.00 |            1.0 | Urban         |
|           32 | LP001205 | Male   | Yes     |          2 | Not Graduate | No            |         2500.00 |           3796.00 |            1.0 | Urban         |
|           33 | LP001206 | Male   | Yes     |          2 | Not Graduate | No            |         3029.00 |
  0.00 |            1.0 | Rural         |
|           34 | LP001250 | Male   | No      |          2 | Not Graduate | Yes           |         5200.00 |           2000.00 |            1.0 | Rural         |
|           35 | LP001251 | Male   | No      |          2 | Not Graduate | No            |         4500.00 |
  0.00 |            1.0 | Rural         |
|           36 | LP001014 | Female | No      |          2 | Not Graduate | No            |         2333.00 |           1516.00 |            1.0 | Rural         |
|           37 | LP001036 | Female | No      |          3 | Not Graduate | No            |         3510.00 |
  0.00 |            1.0 | Rural         |
|           38 | LP001042 | Female | No      |          3 | Not Graduate | No            |         2600.00 |           3500.00 |            1.0 | Rural         |
|           39 | LP001112 | Female | No      |          3 | Not Graduate | No            |         3667.00 |           1459.00 |            1.0 | Rural         |
|           40 | LP001137 | Female | No      |          3 | Not Graduate | No            |         3410.00 |
  0.00 |            1.0 | Rural         |
|           41 | LP001157 | Female | Yes     |          0 | Graduate     | No            |         3086.00 |
  0.00 |            0.0 | Semiurban     |
|           42 | LP001165 | Female | Yes     |          0 | Graduate     | No            |         4230.00 |
  0.00 |            0.0 | Semiurban     |
|           43 | LP001194 | Female | Yes     |          0 | Graduate     | No            |         2708.00 |           1167.00 |            0.0 | Semiurban     |
|           44 | LP001197 | Female | Yes     |          0 | Graduate     | No            |         3366.00 |
  0.00 |            0.0 | Semiurban     |
|           45 | LP001222 | Female | Yes     |          1 | Graduate     | No            |         4166.00 |
  0.00 |            0.0 | Semiurban     |
|           46 | LP001228 | Female | Yes     |          1 | Graduate     | No            |         3200.00 |           2254.00 |            0.0 | Urban         |
|           47 | LP001241 | Female | Yes     |          1 | Not Graduate | No            |         3000.00 |
  0.00 |            0.0 | Urban         |
|           48 | LP001252 | Female | No      |          2 | Not Graduate | No            |         2800.00 |           1800.00 |            0.0 | Urban         |
|           49 | LP001253 | Female | No      |          2 | Not Graduate | No            |         2000.00 |           1000.00 |            0.0 | Rural         |
|           50 | LP001254 | Female | No      |          3 | Not Graduate | No            |         2900.00 |           1500.00 |            0.0 | Rural         |
+--------------+----------+--------+---------+------------+--------------+---------------+-----------------+-------------------+----------------+---------------+
50 rows in set (0.00 sec)

mysql> CREATE TABLE Loans (
    ->     Loan_ID VARCHAR(10) PRIMARY KEY ,
    ->     LoanAmount DECIMAL(10, 2),
    ->     Loan_Amount_Term INT,
    ->     Loan_Status VARCHAR(10)
    -> );
Query OK, 0 rows affected (0.09 sec)

mysql> DESC Loans;
+------------------+---------------+------+-----+---------+-------+
| Field            | Type          | Null | Key | Default | Extra |
+------------------+---------------+------+-----+---------+-------+
| Loan_ID          | varchar(10)   | NO   | PRI | NULL    |       |
| LoanAmount       | decimal(10,2) | YES  |     | NULL    |       |
| Loan_Amount_Term | int           | YES  |     | NULL    |       |
| Loan_Status      | varchar(10)   | YES  |     | NULL    |       |
+------------------+---------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> INSERT INTO Loans
    -> (Loan_ID, LoanAmount, Loan_Amount_Term, Loan_Status)
    -> VALUES
    -> ('LP001005', 66, 360, 'Y'),
    -> ('LP001006', 120, 360, 'Y'),
    -> ('LP001008', 141, 360, 'Y'),
    -> ('LP001013', 95, 360, 'Y'),
    -> ('LP001024', 70, 360, 'Y'),
    -> ('LP001027', 109, 360, 'Y'),
    -> ('LP001029', 114, 360, 'Y'),
    -> ('LP001030', 17, 120, 'Y'),
    -> ('LP001032', 125, 360, 'Y'),
    -> ('LP001034', 100, 240, 'Y'),
    -> ('LP001038', 133, 360, 'Y'),
    -> ('LP001041', 115, 360, 'Y'),
    -> ('LP001043', 104, 360, 'Y'),
    -> ('LP001047', 116, 360, 'Y'),
    -> ('LP001068', 122, 360, 'Y'),
    -> ('LP001073', 134, 360, 'Y'),
    -> ('LP001086', 35, 360, 'Y'),
    -> ('LP001087', 120, 360, 'Y'),
    -> ('LP001095', 74, 360, 'Y'),
    -> ('LP001098', 114, 360, 'Y'),
    -> ('LP001109', 100, 240, 'Y'),
    -> ('LP001119', 80, 360, 'Y'),
    -> ('LP001120', 47, 360, 'Y'),
    -> ('LP001123', 75, 360, 'Y'),
    -> ('LP001131', 134, 360, 'Y'),
    -> ('LP001136', 96, 360, 'Y'),
    -> ('LP001138', 44, 360, 'Y'),
    -> ('LP001140', 144, 360, 'Y'),
    -> ('LP001155', 100, 360, 'Y'),
    -> ('LP001164', 112, 360, 'Y'),
    -> ('LP001199', 144, 360, 'Y'),
    -> ('LP001205', 120, 360, 'Y'),
    -> ('LP001206', 99, 360, 'Y'),
    -> ('LP001250', 145, 360, 'Y'),
    -> ('LP001251', 110, 360, 'Y'),
    -> ('LP001014', 50, 360, 'Y'),
    -> ('LP001036', 30, 180, 'Y'),
    -> ('LP001042', 75, 360, 'Y'),
    -> ('LP001112', 88, 360, 'Y'),
    -> ('LP001137', 144, 360, 'Y'),
    -> ('LP001157', 112, 360, 'N'),
    -> ('LP001165', 97, 360, 'N'),
    -> ('LP001194', 135, 360, 'N'),
    -> ('LP001197', 125, 360, 'N'),
    -> ('LP001222', 116, 360, 'N'),
    -> ('LP001228', 126, 180, 'N'),
    -> ('LP001241', 136, 360, 'N'),
    -> ('LP001252', 216, 360, 'N'),
    -> ('LP001253', 197, 360, 'N'),
    -> ('LP001254', 240, 360, 'N');
Query OK, 50 rows affected (0.01 sec)
Records: 50  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM Loans;
+----------+------------+------------------+-------------+
| Loan_ID  | LoanAmount | Loan_Amount_Term | Loan_Status |
+----------+------------+------------------+-------------+
| LP001005 |      66.00 |              360 | Y           |
| LP001006 |     120.00 |              360 | Y           |
| LP001008 |     141.00 |              360 | Y           |
| LP001013 |      95.00 |              360 | Y           |
| LP001014 |      50.00 |              360 | Y           |
| LP001024 |      70.00 |              360 | Y           |
| LP001027 |     109.00 |              360 | Y           |
| LP001029 |     114.00 |              360 | Y           |
| LP001030 |      17.00 |              120 | Y           |
| LP001032 |     125.00 |              360 | Y           |
| LP001034 |     100.00 |              240 | Y           |
| LP001036 |      30.00 |              180 | Y           |
| LP001038 |     133.00 |              360 | Y           |
| LP001041 |     115.00 |              360 | Y           |
| LP001042 |      75.00 |              360 | Y           |
| LP001043 |     104.00 |              360 | Y           |
| LP001047 |     116.00 |              360 | Y           |
| LP001068 |     122.00 |              360 | Y           |
| LP001073 |     134.00 |              360 | Y           |
| LP001086 |      35.00 |              360 | Y           |
| LP001087 |     120.00 |              360 | Y           |
| LP001095 |      74.00 |              360 | Y           |
| LP001098 |     114.00 |              360 | Y           |
| LP001109 |     100.00 |              240 | Y           |
| LP001112 |      88.00 |              360 | Y           |
| LP001119 |      80.00 |              360 | Y           |
| LP001120 |      47.00 |              360 | Y           |
| LP001123 |      75.00 |              360 | Y           |
| LP001131 |     134.00 |              360 | Y           |
| LP001136 |      96.00 |              360 | Y           |
| LP001137 |     144.00 |              360 | Y           |
| LP001138 |      44.00 |              360 | Y           |
| LP001140 |     144.00 |              360 | Y           |
| LP001155 |     100.00 |              360 | Y           |
| LP001157 |     112.00 |              360 | N           |
| LP001164 |     112.00 |              360 | Y           |
| LP001165 |      97.00 |              360 | N           |
| LP001194 |     135.00 |              360 | N           |
| LP001197 |     125.00 |              360 | N           |
| LP001199 |     144.00 |              360 | Y           |
| LP001205 |     120.00 |              360 | Y           |
| LP001206 |      99.00 |              360 | Y           |
| LP001222 |     116.00 |              360 | N           |
| LP001228 |     126.00 |              180 | N           |
| LP001241 |     136.00 |              360 | N           |
| LP001250 |     145.00 |              360 | Y           |
| LP001251 |     110.00 |              360 | Y           |
| LP001252 |     216.00 |              360 | N           |
| LP001253 |     197.00 |              360 | N           |
| LP001254 |     240.00 |              360 | N           |
+----------+------------+------------------+-------------+
50 rows in set (0.00 sec)

mysql> ALTER TABLE Applicants
    -> ADD CONSTRAINT fk_Loan_ID
    -> FOREIGN KEY (Loan_ID) REFERENCES Loans(Loan_ID);
Query OK, 50 rows affected (0.15 sec)
Records: 50  Duplicates: 0  Warnings: 0

mysql> DESC Applicants;
+-------------------+---------------+------+-----+---------+----------------+
| Field             | Type          | Null | Key | Default | Extra          |
+-------------------+---------------+------+-----+---------+----------------+
| Applicant_ID      | int           | NO   | PRI | NULL    | auto_increment |
| Loan_ID           | varchar(10)   | YES  | MUL | NULL    |                |
| Gender            | varchar(10)   | YES  |     | NULL    |                |
| Married           | varchar(10)   | YES  |     | NULL    |                |
| Dependents        | int           | YES  |     | NULL    |                |
| Education         | varchar(20)   | YES  |     | NULL    |                |
| Self_Employed     | varchar(10)   | YES  |     | NULL    |                |
| ApplicantIncome   | decimal(10,2) | YES  |     | NULL    |                |
| CoapplicantIncome | decimal(10,2) | YES  |     | NULL    |                |
| Credit_History    | decimal(2,1)  | YES  |     | NULL    |                |
| Property_Area     | varchar(20)   | YES  |     | NULL    |                |
+-------------------+---------------+------+-----+---------+----------------+
11 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM Applicants
    -> NATURAL JOIN Loans;
+----------+--------------+--------+---------+------------+--------------+---------------+-----------------+-------------------+----------------+---------------+------------+------------------+-------------+
| Loan_ID  | Applicant_ID | Gender | Married | Dependents | Education    | Self_Employed | ApplicantIncome | CoapplicantIncome | Credit_History | Property_Area | LoanAmount | Loan_Amount_Term | Loan_Status |
+----------+--------------+--------+---------+------------+--------------+---------------+-----------------+-------------------+----------------+---------------+------------+------------------+-------------+
| LP001005 |            1 | Male   | Yes     |          0 | Graduate     | Yes           |         3000.00 |              0.00 |            1.0 | Semiurban     |      66.00 |              360 | Y           |
| LP001006 |            2 | Male   | Yes     |          0 | Graduate     | No            |         2583.00 |           2358.00 |            1.0 | Semiurban     |     120.00 |              360 | Y           |
| LP001008 |            3 | Male   | Yes     |          0 | Graduate     | No            |         6000.00 |              0.00 |            1.0 | Semiurban     |     141.00 |              360 | Y           |
| LP001013 |            4 | Male   | Yes     |          0 | Graduate     | No            |         2333.00 |           1516.00 |            1.0 | Semiurban     |      95.00 |              360 | Y           |
| LP001024 |            5 | Male   | Yes     |          0 | Graduate     | No            |         3200.00 |            700.00 |            1.0 | Semiurban     |      70.00 |              360 | Y           |
| LP001027 |            6 | Male   | Yes     |          0 | Graduate     | No            |         2500.00 |           1840.00 |            1.0 | Semiurban     |     109.00 |              360 | Y           |
| LP001029 |            7 | Male   | Yes     |          0 | Graduate     | No
         |         1853.00 |           2840.00 |            1.0 | Semiurban     |     114.00 |              360 | Y           |
| LP001030 |            8 | Male   | Yes     |          0 | Graduate     | No            |         1299.00 |           1086.00 |            1.0 | Semiurban     |      17.00 |              120 | Y           |
| LP001032 |            9 | Male   | Yes     |          0 | Graduate     | No            |         4950.00 |              0.00 |            1.0 | Semiurban     |     125.00 |              360 | Y           |
| LP001034 |           10 | Male   | Yes     |          0 | Graduate     | No            |         3596.00 |              0.00 |            1.0 | Semiurban     |     100.00 |              240 | Y           |
| LP001038 |           11 | Male   | Yes     |          0 | Graduate     | No            |         4887.00 |              0.00 |            1.0 | Semiurban     |     133.00 |              360 | Y           |
| LP001041 |           12 | Male   | Yes     |          0 | Graduate     | No            |         2600.00 |           3500.00 |            1.0 | Semiurban     |     115.00 |              360 | Y           |
| LP001043 |           13 | Male   | Yes     |          0 | Graduate     | No            |         7660.00 |              0.00 |            1.0 | Semiurban     |     104.00 |              360 | Y           |
| LP001047 |           14 | Male   | Yes     |          0 | Graduate     | No            |         2600.00 |           1911.00 |            1.0 | Semiurban     |     116.00 |              360 | Y           |
| LP001068 |           15 | Male   | Yes     |          0 | Graduate     | No            |         2799.00 |           2253.00 |            1.0 | Semiurban     |     122.00 |              360 | Y           |
| LP001073 |           16 | Male   | Yes     |          0 | Graduate     | No            |         4226.00 |           1040.00 |            1.0 | Semiurban     |     134.00 |              360 | Y           |
| LP001086 |           17 | Male   | Yes     |          1 | Graduate     | No            |         1442.00 |              0.00 |            1.0 | Semiurban     |      35.00 |              360 | Y           |
| LP001087 |           18 | Male   | Yes     |          1 | Graduate     | No            |         3750.00 |           2083.00 |            1.0 | Semiurban     |     120.00 |              360 | Y           |
| LP001095 |           19 | Male   | Yes     |          1 | Graduate     | No            |         3167.00 |              0.00 |            1.0 | Semiurban     |      74.00 |              360 | Y           |
| LP001098 |           20 | Male   | Yes     |          1 | Graduate     | No            |         3500.00 |           1667.00 |            1.0 | Semiurban     |     114.00 |              360 | Y           |
| LP001109 |           21 | Male   | Yes     |          1 | Graduate     | No            |         1828.00 |           1330.00 |            1.0 | Urban
|     100.00 |              240 | Y           |
| LP001119 |           22 | Male   | Yes     |          1 | Graduate     | No            |         3600.00 |              0.00 |            1.0 | Urban
|      80.00 |              360 | Y           |
| LP001120 |           23 | Male   | Yes     |          1 | Graduate     | No            |         1800.00 |           1213.00 |            1.0 | Urban
|      47.00 |              360 | Y           |
| LP001123 |           24 | Male   | Yes     |          1 | Graduate     | No            |         2400.00 |              0.00 |            1.0 | Urban
|      75.00 |              360 | Y           |
| LP001131 |           25 | Male   | Yes     |          1 | Graduate     | No            |         3941.00 |           2336.00 |            1.0 | Urban
|     134.00 |              360 | Y           |
| LP001136 |           26 | Male   | Yes     |          1 | Graduate     | Yes           |         4695.00 |              0.00 |            1.0 | Urban
|      96.00 |              360 | Y           |
| LP001138 |           27 | Male   | Yes     |          1 | Graduate     | No            |         2510.00 |              0.00 |            1.0 | Urban
|      44.00 |              360 | Y           |
| LP001140 |           28 | Male   | Yes     |          1 | Graduate     | No            |         3280.00 |              0.00 |            1.0 | Urban
|     144.00 |              360 | Y           |
| LP001155 |           29 | Male   | Yes     |          2 | Graduate     | No            |         1928.00 |           1644.00 |            1.0 | Urban
|     100.00 |              360 | Y           |
| LP001164 |           30 | Male   | Yes     |          2 | Not Graduate | No            |         4230.00 |              0.00 |            1.0 | Urban         |     112.00 |              360 | Y           |
| LP001199 |           31 | Male   | Yes     |          2 | Not Graduate | No            |         3357.00 |           2859.00 |            1.0 | Urban
|     144.00 |              360 | Y           |
| LP001205 |           32 | Male   | Yes     |          2 | Not Graduate | No            |         2500.00 |           3796.00 |            1.0 | Urban
|     120.00 |              360 | Y           |
| LP001206 |           33 | Male   | Yes     |          2 | Not Graduate | No            |         3029.00 |              0.00 |            1.0 | Rural
|      99.00 |              360 | Y           |
| LP001250 |           34 | Male   | No      |          2 | Not Graduate | Yes           |         5200.00 |           2000.00 |            1.0 | Rural
|     145.00 |              360 | Y           |
| LP001251 |           35 | Male   | No      |          2 | Not Graduate | No            |         4500.00 |              0.00 |            1.0 | Rural
|     110.00 |              360 | Y           |
| LP001014 |           36 | Female | No      |          2 | Not Graduate | No            |         2333.00 |           1516.00 |            1.0 | Rural
|      50.00 |              360 | Y           |
| LP001036 |           37 | Female | No      |          3 | Not Graduate | No            |         3510.00 |              0.00 |            1.0 | Rural
|      30.00 |              180 | Y           |
| LP001042 |           38 | Female | No      |          3 | Not Graduate | No            |         2600.00 |           3500.00 |            1.0 | Rural
|      75.00 |              360 | Y           |
| LP001112 |           39 | Female | No      |          3 | Not Graduate | No            |         3667.00 |           1459.00 |            1.0 | Rural
|      88.00 |              360 | Y           |
| LP001137 |           40 | Female | No      |          3 | Not Graduate | No            |         3410.00 |              0.00 |            1.0 | Rural
|     144.00 |              360 | Y           |
| LP001157 |           41 | Female | Yes     |          0 | Graduate     | No            |         3086.00 |              0.00 |            0.0 | Semiurban     |     112.00 |              360 | N           |
| LP001165 |           42 | Female | Yes     |          0 | Graduate     | No            |         4230.00 |              0.00 |            0.0 | Semiurban     |      97.00 |              360 | N           |
| LP001194 |           43 | Female | Yes     |          0 | Graduate     | No            |         2708.00 |           1167.00 |            0.0 | Semiurban     |     135.00 |              360 | N           |
| LP001197 |           44 | Female | Yes     |          0 | Graduate     | No            |         3366.00 |              0.00 |            0.0 | Semiurban     |     125.00 |              360 | N           |
| LP001222 |           45 | Female | Yes     |          1 | Graduate     | No            |         4166.00 |              0.00 |            0.0 | Semiurban     |     116.00 |              360 | N           |
| LP001228 |           46 | Female | Yes     |          1 | Graduate     | No            |         3200.00 |           2254.00 |            0.0 | Urban
|     126.00 |              180 | N           |
| LP001241 |           47 | Female | Yes     |          1 | Not Graduate | No            |         3000.00 |              0.00 |            0.0 | Urban
|     136.00 |              360 | N           |
| LP001252 |           48 | Female | No      |          2 | Not Graduate | No            |         2800.00 |           1800.00 |            0.0 | Urban
|     216.00 |              360 | N           |
| LP001253 |           49 | Female | No      |          2 | Not Graduate | No            |         2000.00 |           1000.00 |            0.0 | Rural         |     197.00 |              360 | N           |
| LP001254 |           50 | Female | No      |          3 | Not Graduate | No            |         2900.00 |           1500.00 |            0.0 | Rural
|     240.00 |              360 | N           |
+----------+--------------+--------+---------+------------+--------------+---------------+-----------------+-------------------+----------------+---------------+------------+------------------+-------------+
50 rows in set (0.00 sec)

mysql>