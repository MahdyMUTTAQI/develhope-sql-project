-- 2016
SELECT Orders.shipcountry As Country, 
ROUND(SUM((unitprice-(unitprice*discount))*quantity), 3) as Sales_Amount,

CASE WHEN ROUND(SUM((unitprice-(unitprice*discount))*quantity), 3) <= 18000 
and ROUND(SUM((unitprice-(unitprice*discount))*quantity), 3)>7000 THEN 'Midium'
WHEN ROUND(SUM((unitprice-(unitprice*discount))*quantity), 3) <= 7000 THEN 'Low'
ELSE 'High' END AS Range from 'Order Details' 

JOIN Orders on Orders.OrderID = 'Order Details'.orderid

WHERE Orders.orderdate BETWEEN '2016-01-01' and '2016-12-31'
GROUP by Orders.shipcountry
order by Sales_Amount DESC

-- 2017
SELECT Orders.shipcountry As Country, 
ROUND(SUM((unitprice-(unitprice*discount))*quantity), 3) as Sales_Amount,

CASE WHEN ROUND(SUM((unitprice-(unitprice*discount))*quantity), 3) <= 18000 
and ROUND(SUM((unitprice-(unitprice*discount))*quantity), 3)>7000 THEN 'Midium'
WHEN ROUND(SUM((unitprice-(unitprice*discount))*quantity), 3) <= 7000 THEN 'Low'
ELSE 'High' END AS Range from 'Order Details' 

JOIN Orders on Orders.OrderID = 'Order Details'.orderid

WHERE Orders.orderdate BETWEEN '2017-01-01' and '2017-12-31'
GROUP by Orders.shipcountry
order by Sales_Amount DESC

-- 2018
SELECT Orders.shipcountry As Country, 
ROUND(SUM((unitprice-(unitprice*discount))*quantity), 3) as Sales_Amount,

CASE WHEN ROUND(SUM((unitprice-(unitprice*discount))*quantity), 3) <= 18000 
and ROUND(SUM((unitprice-(unitprice*discount))*quantity), 3)>7000 THEN 'Midium'
WHEN ROUND(SUM((unitprice-(unitprice*discount))*quantity), 3) <= 7000 THEN 'Low'
ELSE 'High' END AS Range from 'Order Details' 

JOIN Orders on Orders.OrderID = 'Order Details'.orderid

WHERE Orders.orderdate BETWEEN '2018-01-01' and '2018-12-31'
GROUP by Orders.shipcountry
order by Sales_Amount DESC
