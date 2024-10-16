-- Q.5)List the top 5 most ordered pizza types along with their quantities.


SELECT 
    pizza_type.name, SUM(order_details.quantity) AS quantity
FROM
    pizza_type
        JOIN
    pizzas ON pizza_type.pizza_type_id = pizzas.pizza_type_id
        JOIN
	order_details ON order_details.pizza_id=pizzas.pizza_id
GROUP BY pizza_type.name
ORDER BY quantity DESC
LIMIT 5
;