#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary
select B.companyName, A.avgSalary from (select companyId,avg(salary) as avgSalary from Employee group by companyId) A inner join Company B on A.companyId=B.id ;
