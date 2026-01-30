sqoop import \
  --connect jdbc:mysql://mysql-db:3306/company \
  --username root \
  --password rootpass \
  --table employees \
  --target-dir /user/student/employees \
  --fields-terminated-by ',' \
  --driver com.mysql.jdbc.Driver \
  --num-mappers 1
