# 找出薪水在公司的平均薪水之上的人员名字
# 输出标准中包含Employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal

select * from (select B.* ,C.avgsal from (select Employee.*, Company.companyName from Employee left join Company on Employee.companyId = Company.id) B left join (select companyId,avg(salary) as avgsal from Employee group by companyId) C on B.companyId = C.companyId) D where D.salary>= D.avgsal;