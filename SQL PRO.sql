
--intepreting data
select *

from SQLEXPRESS..supermarket_sales


 --sort product base on sales
select [Product line], sum(total)
 from SQLEXPRESS..supermarket_sales
 group by [Product line]
 order by sum(total) desc;


--customer portfolio

 select [Customer type], gender, count(*), Branch
 from SQLEXPRESS..supermarket_sales
group by [Customer type], Branch, gender;



-- Aerage quality purchase per branch
select avg(quantity), Branch
  from SQLEXPRESS..supermarket_sales
  group by Branch




-- top 5 dates with the highest sales
 select top 5 date, sum(total)
 from SQLEXPRESS..supermarket_sales
 group by date
 order by sum(total) desc



 --max sales amount
 select [Product line],  max([Unit price]) - min([Unit price]) as diff
from SQLEXPRESS..supermarket_sales
 group by [Product line] 




 select count(*) from SQLEXPRESS..supermarket_sales             
   where date = (                                  
   select date from SQLEXPRESS..supermarket_sales
  where total = (                              
   select max(total) from SQLEXPRESS..supermarket_sales ));




--product based on total
select [Product line], sum(quantity) 
 from SQLEXPRESS..supermarket_sales
 group by [Product line]
order by sum(Quantity) desc;



  select
 [Product line], count(*) as COUNT
 from SQLEXPRESS..supermarket_sales
 group by  [Product line]
 order by 2 desc



--revenue for each branch
select City, Branch, SUM(Total) revenue
from SQLEXPRESS..supermarket_sales
group by City, Branch
order by 2 desc




--top 5 rated product
SELECT TOP 5 [Product line], [Total], Branch, Rating
FROM SQLEXPRESS..supermarket_sales
ORDER BY  [Total]  DESC

--customer type with highest revenue
 select branch, [Customer type], avg(total)
FROM SQLEXPRESS..supermarket_sales
 group by branch, [Customer type]
 order by avg(total) desc




SELECT TOP 5 Rating, [Product line]
FROM SQLEXPRESS..supermarket_sales
ORDER BY  [Total]  DESC





SELECT [Product line], Branch, SUM(Quantity*[unit price])
FROM SQLEXPRESS..supermarket_sales
group by  [Product line],Branch
ORDER BY 2 DESC



