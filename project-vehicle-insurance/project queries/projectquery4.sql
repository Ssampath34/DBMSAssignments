SELECT c.* FROM g2customer as c JOIN g2vehicle AS v ON c.Cust_Id=v.Cust_Id JOIN g2premium_payment AS g
ON g.Cust_Id =v.Cust_Id JOIN g2incident_report AS i ON i.Cust_Id=g.Cust_Id AND g.Premium_Payment_Amount=0 AND i.Incident_Type='accident'
 GROUP BY i.Cust_Id HAVING count(i.Cust_Id)>1