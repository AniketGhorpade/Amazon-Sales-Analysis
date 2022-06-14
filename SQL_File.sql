use amazon;
select * from sales;

## Average Volumme ordered by customer in 1 order 

select customer,zone,item,coutry, sum(salesquantity) as total_Q , um 
from sales
group by customer,item; 

select customer,zone,item, sum(salesquantity)/count(salesquantity) as total_Q , um 
from sales
group by customer,item
order by total_Q desc;

select customer,zone, sum(salesquantity)/count(salesquantity) as total_Q , um 
from sales
group by customer
order by total_Q Desc;

