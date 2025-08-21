create database supply_chain;
use supply_chain;

select * from products_df;
select * from orders_df;
select * from shipments_df;

#Total_Quantity
select sum(Quantity) as Total_Quantity from orders_df;

#Total_Orders
select count(distinct OrderID) as Total_Orders from orders_df; 

#Delivered_Orders
select count(*) as Delivered_Orders from orders_df
where OrderStatus='Delivered';

#Cancelled_Orders
select count(*) as Cancelled_Orders from orders_df
where OrderStatus='Cancelled';

#Pending_Orders
select count(*) as Pending_Orders from orders_df
where OrderStatus='Pending';

#Total_Price
select sum(UnitPriceUSD) as Total_Price from products_df;

# how many customer orders were successfully fulfilled
SELECT 
    (COUNT(CASE WHEN OrderStatus = 'Delivered' THEN 1 END) * 100.0) 
    / COUNT(DISTINCT OrderID) AS Fulfillment_Rate
FROM orders_df;

#Average_Orders
select (sum(Quantity) / COUNT(DISTINCT OrderID)) as Avg_Order
from orders_df;

#Revenue Per ProductID
select p.ProductID, p.UnitPriceUSD,o.Quantity ,sum(p.UnitPriceUSD * o.Quantity) as Revenue
from products_df as p
join orders_df as o
on p.ProductID= o.ProductID
group by p.ProductID, p.UnitPriceUSD,o.Quantity ;

#Total_Revenue
select sum(p.UnitPriceUSD * o.Quantity) as Total_Revenue
from products_df as p
join orders_df as o
on p.ProductID= o.ProductID;

# Average Delivery Time (days)
Select AVG(DATEDIFF(DeliveryDate, ShipDate)) AS AvgDeliveryDays
FROM shipments_df
WHERE DeliveryDate IS NOT NULL;

#Avg_Shipping_Cost
select (sum(s.ShippingCostUSD) / count(distinct o.OrderID )) as Avg_Shipping_Cost
from orders_df as o
join shipments_df as s
on o.OrderID = s.OrderID;

# Shipping Cost by Mode – Air, Sea, Road, Rail
select ShippingMode, sum(ShippingCostUSD) as Total_Shipping_Cost
from shipments_df
group by ShippingMode
order by Total_Shipping_Cost desc;

# Shipment Mode which are delivered
select ShippingMode, count(case when Delivered='True' then 1 End)  as Delivereds
from  shipments_df
group by ShippingMode
order by Delivereds desc;

# which Category generates the highest Total Revenue
select p.Category, sum(p.UnitPriceUSD * o.Quantity) as Total_Revenue
from products_df as p
join orders_df as o
on p.ProductID = o.ProductID
group by p.Category
order by Total_Revenue desc;

# which Category generates the highest Orders
select p.Category, count(distinct o.OrderID) as Total_Orders
from products_df as p
join orders_df as o
on p.ProductID = o.ProductID
group by p.Category
order by Total_Orders desc;

# which Category has highes quantities sold
select p.Category, Sum(o.Quantity) as Total_Quantity
from products_df as p
join orders_df as o
on p.ProductID = o.ProductID
group by p.Category
order by Total_Quantity desc;


#Highest Revenue by Warehouse
select o.Warehouse, sum(p.UnitPriceUSD * o.Quantity) as Total_Revenue
from products_df as p
join orders_df as o
on p.ProductID = o.ProductID
group by o.Warehouse
order by Total_Revenue desc;

# Which Supplier and Country is making high Revnue,
select s.SupplierID, s.Country,sum(p.UnitPriceUSD * o.Quantity) as Total_Revenue
from products_df as p
join orders_df as o
on p.ProductID = o.ProductID
join suppliers_df as s
on p.SupplierID=s.SupplierID
group by s.SupplierID, s.Country
order by Total_Revenue desc;

# Avg_LeadTimeDays
select Avg(LeadTimeDays) as Avg_LeadTimeDays from suppliers_df;

# Which Category has highest StockLevel
select Category, sum(StockLevel) as In_Shock
from products_df
group by Category
order by  In_Shock desc;

# Which SupplierID has highest StockLevel
select SupplierID, sum(StockLevel) as In_Shock
from products_df
group by SupplierID
order by  In_Shock desc;


select 