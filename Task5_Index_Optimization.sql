-- SQL queries for adding the relevant indices
-- Optimize Queries for task 4

-- 1) welcome  text for home page
-- here the query is such that it goes to Department table and uses id. since id is already primary key, it works as an index and so we don't need to use index to further optimize this query

-- 2) List of the top level departments with fields needed for the homepage
-- no need of index for same reason explaine for 1.

-- 3) List of the featured products with fields needed for the homepage
CREATE INDEX ind_featured
		ON Product (featured);

-- 4) Given a product, list all keyword related products
-- since we are using views in Tasks4, here we add index to the select statement appropriate to select statement used in views

-- for view6, we create index on Keyword_Products.prod_ID
CREATE INDEX ind_kp_pid
	ON Keyword_Products (prod_Id);

-- for view7 
CREATE INDEX ind_kp_pid_kid
ON Keyword_Products (prod_Id,key_Id);

-- for product title , view7
CREATE INDEX ind_prod_title
ON Product (title);

-- Before indexing, the query took 0.035 second and after indexing , it took 0.031 second. Even though the difference doesn't seem too much, having more records in the database could probably show observable difference better.

-- 5) Given a department, list of all its products (title, short description, 
-- current retail price) with their average rating
explain
SELECT Product.id, Product.title, avg(User_Product.review_stars), Product.description, Product.price_BasePrice
FROM Product
LEFT JOIN User_Product ON User_Product.pid = Product.id
GROUP BY Product.id, Product.title;
-- pid_FK(foreign key) which references Product.id already has index of type BTREE
-- User_Product.uid and User_Product.pid also has index of type BTREE automatically
-- similary on Product, Product.title already has an index of type BTREE as created in step above.alter
-- since we hav indexes on left join, groupby column, this query already has enough indexes for optimization


-- 6) List of all products on sale sorted by the discount percentage (starting with the biggest discount)
-- create index on where clause and order by
create index ind_prod_disc
on Product (price_Discount);

-- after index creation, query returns result few seconds faster than before index based on 10 average run. since it only returns 24 rows, the difference is not clear.

-- 7)List of all new orders sorted by the order date (id, order date, customer’s name and the city, and the
-- total price)
-- indexing select statement for each views 

-- create index on prod_ID and quantity on table Order_Products
-- Since the query selects quantity for the given product id, we index them in Order_Products table. 

create index prod_quan
on Order_Products (prod_ID,quantity);

-- create index fullName on Users.fullName_LastName, Users.fullName_FirstName
-- to make the query for respective user names fster
create index userDetails 
on Users (fullName_FirstName, fullName_LastName, address_city);

-- create index (order, uid) on Orders 
-- we use index on group by since its sorted by order date.
create index order_uid
on Orders (orderDate, uid);


-- 8) -- 10 best-selling products (in last 30 days)
-- we sum the quantity of products that were ordered 
-- the relevant operator for indexing are with Order_Products.prod_ID and Product.idbut since they already have an index, there is no need for manually creating index. 


-- ********************** additional if needed
-- query for price ranked from low to high
select title,price_BasePrice, price_Vat, price_Discount
from Product
where title="Men's Jeans"
order by price_BasePrice ASC;

-- for such query , it can be useful to create index on Product.title
-- and if the query is specifically looking for price ranges below 3000 then
-- we can have index on price_BasePrice 

-- product with highest review stars





