# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name
SELECT Employee.companyName, Employee.name FROM (SELECT Employee.*, Company.companyName FROM Employee LEFT JOIN Company ON Employee.companyId = Company.id) Employee Right JOIN (SELECT companyId, max(salary) AS maxsalary FROM Employee GROUP BY companyId) t ON t.maxsalary = Employee.salary AND Employee.companyId = t.companyId;
