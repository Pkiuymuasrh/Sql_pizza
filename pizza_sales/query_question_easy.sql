-- Retrieve the total  number of orders placed.
select count(order_id) as total_orders from orders;



-- calculate the total revenue generated from pizza sales.
SELECT 
    ROUND(SUM(orders_details.quantity * pizzas.price),
            2) AS total_sales
FROM
    orders_details
        JOIN
    pizzas ON pizzas.pizza_id = orders_details.pizza_id;

-- Identify the highest - priced pizza.

select pizza_types.name, pizzas.price from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
order by pizzas.price desc;



