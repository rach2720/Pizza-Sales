-- Q.8)Join relevant tables to find the category-wise distribution of pizzas.


SELECT 
    category, COUNT(name)
FROM
    pizza_type
GROUP BY category
;