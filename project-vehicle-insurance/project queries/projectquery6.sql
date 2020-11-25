SELECT c.* FROM g2customer AS c INNER JOIN  g2claim_settlement  AS s ON s.Cust_Id=c.Cust_Id
INNER JOIN g2claim AS r ON (r.Claim_Id=s.Claim_Id)INNER JOIN g2coverage AS l ON (l.Coverage_Id=s.Coverage_Id AND 
r.Claim_Amount<l.Coverage_Amount AND r.Claim_Amount>(s.Claim_Settlement_Id+s.Vehicle_Id+s.Claim_Id+s.Cust_Id));
    