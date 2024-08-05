SELECT * FROM menu_items;
SELECT COUNT(item_name) FROM menu_items;

SELECT item_name, price 
FROM menu_items
ORDER BY price ASC
LIMIT 1;

SELECT item_name, price 
FROM menu_items 
ORDER BY price DESC
LIMIT 1;

SELECT COUNT(category)
FROM menu_items
WHERE category = 'American';

SELECT item_name, category
FROM menu_items
WHERE category = 'American';

SELECT ROUND(AVG(price), 2)
FROM menu_items;

SELECT * FROM order_details;

SELECT COUNT(DISTINCT order_id)
FROM order_details;

SELECT order_id, order_date, COUNT(order_date) AS articulos
FROM order_details
GROUP BY order_id, order_date
ORDER BY articulos DESC
LIMIT 5;

SELECT DATE(order_date)
FROM order_details
ORDER BY order_date ASC
LIMIT 1;

SELECT DATE(order_date)
FROM order_details
ORDER BY order_date DESC
LIMIT 1;

SELECT COUNT(order_id)
FROM order_details
WHERE order_date BETWEEN '2023-01-01'  AND '2023-01-05';

SELECT o.order_id,
o.order_date,
o.order_time,
me.item_name,
me.category,
me.price
FROM order_details AS o
LEFT JOIN menu_items AS me
ON o.item_id = me.menu_item_id;

SELECT me.item_name, COUNT(o.order_id) AS total_orders
FROM order_details AS o
LEFT JOIN menu_items AS me ON o.item_id = me.menu_item_id
GROUP BY me.item_name
ORDER BY total_orders DESC
LIMIT 1;

SELECT me.item_name, COUNT(o.order_id) AS total_orders
FROM order_details AS o
LEFT JOIN menu_items AS me ON o.item_id = me.menu_item_id
GROUP BY me.item_name
ORDER BY total_orders ASC
LIMIT 1;

SELECT me.category, COUNT(o.order_id) AS total_orders
FROM order_details AS o
LEFT JOIN menu_items AS me ON o.item_id = me.menu_item_id
GROUP BY me.category
ORDER BY total_orders DESC
LIMIT 1;

SELECT me.category, COUNT(o.order_id) AS total_orders
FROM order_details AS o
LEFT JOIN menu_items AS me ON o.item_id = me.menu_item_id
GROUP BY me.category
ORDER BY total_orders ASC;

SELECT me.category, COUNT(o.order_id) AS total_orders
FROM order_details AS o
LEFT JOIN menu_items AS me ON o.item_id = me.menu_item_id
GROUP BY me.category
ORDER BY total_orders ASC;

SELECT o.order_id,
o.order_date,
o.order_time,
me.item_name,
me.category,
me.price
FROM order_details AS o
LEFT JOIN menu_items AS me
ON o.item_id = me.menu_item_id
WHERE me.category IS null;

SELECT o.order_date, COUNT(o.order_id) AS total_orders
FROM order_details AS o
LEFT JOIN menu_items AS me ON o.item_id = me.menu_item_id
GROUP BY o.order_date
ORDER BY total_orders DESC;

SELECT me.item_name, COUNT(o.order_id) AS total_orders
FROM order_details AS o
LEFT JOIN menu_items AS me ON o.item_id = me.menu_item_id
WHERE me.item_name = 'Shrimp Scampi'
GROUP BY me.item_name;

SELECT me.item_name, COUNT(o.order_id) AS total_orders
FROM order_details AS o
LEFT JOIN menu_items AS me ON o.item_id = me.menu_item_id
WHERE me.item_name =  'Edamame'
GROUP BY me.item_name;