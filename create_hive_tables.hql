CREATE EXTERNAL TABLE IF NOT EXISTS employees (
  id INT,
  name STRING,
  department_id INT,
  salary INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/student/employees';

CREATE EXTERNAL TABLE IF NOT EXISTS departments (
  id INT,
  name STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/user/student/departments';
