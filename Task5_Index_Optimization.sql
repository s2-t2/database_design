-- Query 1 : welcome text 
-- no need

-- Query 2 : List of the top level departments with fields needed for the homepage
-- no need , explanation same as Query 1

-- Query 3 : List of the featured products with fields needed for the homepage
CREATE INDEX ind_featured
	ON Product (featured);
    
-- Query 4:  Given a product, list all keyword related products , 
CREATE INDEX ind_kp_pid
   ON Keyword_Products (prod_Id);  
-- probably not needed for Product.title since it's selecting title based on id which is already indexed.

-- Query 5 : Given a department, list of all its products (title, short description, current 
-- retail price) with their average rating
CREATE INDEX prod_id_title
	ON Product (title);

-- Query 6 : List of all products on sale sorted by the discount percentage (starting with the biggest discount)
create index prod_disc
	ON Product (price_Discount);

-- Query 7 : List of all new orders sorted by the order date (id, order date, customer’s name
--  and the city, and the total price)
create index prodid
	ON Order_Products (prod_ID);
create index orderdate
	ON Orders (orderDate);

-- Query 8 : 10 best-selling products (in last 30 days)
create index id_quan
on Order_Products (prod_ID, quantity);

-- Additional Queries : 
-- 1) product with stars above 3
-- Query
SELECT title,description,review_stars 
FROM User_Product
LEFT JOIN Product on User_Product.pid = Product.id
WHERE review_stars > 3 ; 
-- Index
-- create index on review_stars 
create index stars 
on User_Product (review_stars);

-- 2) price less than 2000 ordered from highest to lowest
-- Query 
select *
	from Product
    where price_BasePrice < 2000
    group by price_BasePrice
    order by price_BasePrice ASC;
-- index 
create index price
on Product (price_BasePrice);
