# 1.创建数据库employee_db
create database employee_db;
use employee_db;
# 2.在数据库employee_db中创建table：`Employee`
create table Employee
(
  id        long not null auto_increment,
  name      varchar(225),
  age       int,
  gender    varchar(225),
  companyId int,
  salary    varchar(225),
  primary key (id)
) default charset = utf8;
# 3.将`employee-data.csv`文件中的数据导入数据表Employee中
load data local infile '/Users/qiqijiao/java-homework/MySQL-Quiz-2019-3-14-7-49-4-960/employee-data.csv' into table Employee fields terminated by ','  lines terminated by '\n' (id, name, age, gender, companyId, salary);

# 4.在数据库employee_db中创建table：`Company`
create table Company
(
  id              int not null auto_increment,
  companyName     varchar(225),
  employeesNumber int,
  primary key (id)
) default charset = utf8;
# 5.将`company-data.csv`文件中的数据导入Company数据表中
LOAD DATA LOCAL INFILE '/Users/qiqijiao/java-homework/MySQL-Quiz-2019-3-14-7-49-4-960/employee-data.csv' INTO TABLE Company FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' (id, companyName, employeesNumber);

# 6.找出Employee表中姓名包含`n`字符并且薪资大于6000的雇员所有个人信息
select * from Employee where name like '%n%' and salary > 6000;

# ps:本练习中只需要将6的结果复制到`result.txt`文件中