from pyspark.sql import SparkSession

spark = SparkSession.builder.appName("Assignment5").getOrCreate()

df = spark.read \
    .option("inferSchema", "true") \
    .option("header", "false") \
    .csv("hdfs://namenode:8020/user/student/employees")

df.show()

new_data = [
    (10, "Youssef", 1, 9000),
    (11, "Mona", 2, 8000)
]

columns = ["id", "name", "department_id", "salary"]
new_df = spark.createDataFrame(new_data, columns)

jdbc_url = "jdbc:mysql://mysql-db:3306/company?useSSL=false"
properties = {
    "user": "root",
    "password": "rootpass",
    "driver": "com.mysql.cj.jdbc.Driver"
}

new_df.write.jdbc(
    url=jdbc_url,
    table="employees",
    mode="append",
    properties=properties
)
