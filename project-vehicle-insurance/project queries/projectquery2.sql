select c.* from g2customer as c,g2premium_payment as p where p.Cust_Id=c.Cust_Id and p.Premium_Payment_Amount>(select
sum(c.Cust_ID) from g2customer as c);