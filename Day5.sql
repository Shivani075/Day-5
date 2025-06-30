use College;

select *
from student;

create table customers(
cust_id int,
cust_name varchar(20),	
location varchar(50)
);

insert into customers
values(101,"Ram","Mumbai"),
(102,"Reshma","Mumbai"),
(103,"Shyam","Banglore"),
(104,"Veda","Delhi"),
(105,"Tina","Mumbai");


create table orders(
order_id int,
order_date varchar(20),
cust_id int,
amount int
);

insert into Orders (order_id, order_date, cust_id, amount) VALUES
(1, '2024-01-15', 101, 250),
(2, '2024-01-17', 103, 450),
(3, '2024-02-01', 102, 300),
(4, '2024-02-20', 105, 150),
(5, '2024-03-05', NULL, 500),
(6, '2024-03-15', 106, 200);  

select * 
from customers;

select * 
from orders;

select c1.cust_id, c1.cust_name,o1.order_id,o1.amount
from customers as c1
join orders as o1
on c1.cust_id=o1.cust_id;

select c1.cust_id, c1.cust_name,o1.order_date,o1.amount
from customers as c1
inner join orders as o1
 on c1.cust_id=o1.cust_id;

select c1.cust_id, c1.cust_name,o1.order_date,o1.amount
from customers as c1
left outer join orders as o1 
on c1.cust_id=o1.cust_id;

select c1.cust_id, c1.cust_name,o1.order_date,o1.amount
from customers as c1
right outer join orders as o1
on c1.cust_id=o1.cust_id;

select c1.cust_id, c1.cust_name,o1.order_date,o1.amount
from customers as c1
right outer join orders as o1
on c1.cust_id=o1.cust_id

UNION

select c1.cust_id, c1.cust_name,o1.order_date,o1.amount
from customers as c1
left outer join orders as o1
on c1.cust_id=o1.cust_id;


