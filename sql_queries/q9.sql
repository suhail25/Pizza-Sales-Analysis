-- Group the orders by date and calculate the average number of pizzas ordered per day.

select round(AVG(orders_perday), 0) from (select orders.order_date, sum(order_details.quantity) as orders_perday
from orders join order_details
on orders.order_id = order_details.order_id
group by orders.order_date) as avg_order_perday;