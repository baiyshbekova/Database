postgres=# \l
                                          List of databases
   Name    |       Owner       | Encoding | Collate | Ctype |            Access privileges            
-----------+-------------------+----------+---------+-------+-----------------------------------------
 postgres  | aselbbaiyshbekova | UTF8     | C       | C     | 
 template0 | aselbbaiyshbekova | UTF8     | C       | C     | =c/aselbbaiyshbekova                   +
           |                   |          |         |       | aselbbaiyshbekova=CTc/aselbbaiyshbekova
 template1 | aselbbaiyshbekova | UTF8     | C       | C     | =c/aselbbaiyshbekova                   +
           |                   |          |         |       | aselbbaiyshbekova=CTc/aselbbaiyshbekova
(3 rows)

postgres=# CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT
);

INSERT INTO students (name, age) VALUES ('Alice', 21), ('Bob', 23);

SELECT * FROM students;

DROP TABLE students;
CREATE TABLE
INSERT 0 2
 id | name  | age 
----+-------+-----
  1 | Alice |  21
  2 | Bob   |  23
(2 rows)

DROP TABLE
postgres=# \q