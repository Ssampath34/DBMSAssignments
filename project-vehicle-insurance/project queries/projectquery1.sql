SELECT c.*,v.* FROM
g2customer AS c,g2vehicle AS v,g2claim AS r WHERE r.Claim_Status='pending'AND r.Cust_Id=c.Cust_Id AND c.Cust_Id=v.Cust_Id;