# Day-5

Join Operations

1. INNER JOIN : Returns records with matching values in both tables.

Syntax:

SELECT columns
FROM table1
INNER JOIN table2
ON table1.common_column = table2.common_column;

Query Used:

SELECT c1.cust_id, c1.cust_name, o1.order_date, o1.amount
FROM customers AS c1
INNER JOIN orders AS o1 ON c1.cust_id = o1.cust_id;

2. LEFT OUTER JOIN : Returns all records from the left table (customers), and matched records from the right table (orders). Unmatched rows from the right side will show NULL.

Syntax:

SELECT columns
FROM table1
LEFT OUTER JOIN table2
ON table1.common_column = table2.common_column;

Query Used:

SELECT c1.cust_id, c1.cust_name, o1.order_date, o1.amount
FROM customers AS c1
LEFT OUTER JOIN orders AS o1 ON c1.cust_id = o1.cust_id;

3. RIGHT OUTER JOIN : Returns all records from the right table (orders), and the matched records from the left table (customers). Unmatched rows from the left side will show NULL.

Syntax:

SELECT columns
FROM table1
RIGHT OUTER JOIN table2
ON table1.common_column = table2.common_column;

Query Used:

SELECT c1.cust_id, c1.cust_name, o1.order_date, o1.amount
FROM customers AS c1
RIGHT OUTER JOIN orders AS o1 ON c1.cust_id = o1.cust_id;

4. FULL OUTER JOIN : Combines the results of both left and right outer joins to mimic a FULL OUTER JOIN (which is not natively supported in MySQL).

Syntax:

SELECT columns
FROM table1
LEFT OUTER JOIN table2 ON condition

UNION

SELECT columns
FROM table1
RIGHT OUTER JOIN table2 ON condition;

Query Used:

select c1.cust_id, c1.cust_name,o1.order_date,o1.amount
from customers as c1
right outer join orders as o1
on c1.cust_id=o1.cust_id

UNION

select c1.cust_id, c1.cust_name,o1.order_date,o1.amount
from customers as c1
left outer join orders as o1
on c1.cust_id=o1.cust_id;
