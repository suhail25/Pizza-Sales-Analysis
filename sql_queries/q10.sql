-- Determine the top 3 most ordered pizza types based on revenue.

select pizza_types.name, sum(order_details.quantity * pizzas.price) as pizza_revenue
from order_details join pizzas
on order_details.pizza_id = pizzas.pizza_id
join pizza_types
on pizza_types.pizza_type_id = pizzas.pizza_type_id
group by pizza_types.name
order by pizza_revenue desc limit 3;