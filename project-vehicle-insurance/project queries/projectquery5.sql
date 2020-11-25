SELECT v.* FROM g2vehicle AS v,g2premium_payment AS p 
	where v.Cust_Id=p.Cust_Id and p.Premium_Payment_Amount>v.Vehicle_Number order by Vehicle_Id asc;