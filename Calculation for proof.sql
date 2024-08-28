select *
from pizza_sales

select sum(total_price) as total_revenue
from pizza_sales

select sum(total_price) / count(distinct(order_id)) as average_order_value
from pizza_sales

select sum(quantity) as total_pizza_sell
from pizza_sales

select cast(cast(sum(quantity) as decimal(10,2)) / cast(count(distinct(order_id)) as decimal(10,2)) as decimal(10,2)) as avg_pizza_per_order
from pizza_sales

select datename(dw,order_date) as order_day, sum(quantity)
from pizza_sales
group by datename(dw,order_date)

select datepart(hour,order_time), sum(quantity)
from pizza_sales
group by datepart(hour,order_time)
order by datepart(hour,order_time)

select pizza_category, sum(total_price) * 100 /(select sum(total_price)
from pizza_sales
where month(order_date) = 1) as pct_pizza_category
from pizza_sales
where month(order_date) = 1
group by pizza_category

select pizza_size, sum(total_price) * 100 /(select sum(total_price)
from pizza_sales
where datepart(quarter, order_date) = 1) as pct_pizza_size
from pizza_sales
where datepart(quarter, order_date) = 1
group by pizza_size

select pizza_category, sum(total_price)
from pizza_sales
group by pizza_category

select top 5 pizza_name, sum(quantity)
from pizza_sales
group by pizza_name
order by sum(quantity) desc

select top 5 pizza_name, sum(quantity)
from pizza_sales
group by pizza_name
order by sum(quantity)











