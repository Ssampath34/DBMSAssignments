
SELECT i.* FROM g2insurance_company AS i JOIN  g2product as p
on p.Company_Name=i.Company_Name group by p.Company_Name having count(*)>
ALL(select count(d.Department_Name) from g2insurance_company as r join g2department as d on r.Company_Name=d.Company_Name  group by 
d.Department_Name having count(d.Department_Name)and count(r.Company_Location)>1)
