-- QUERIES

-- Welcome text for the home page
Select description AS WelcomeMessage
from Department
where Department.id = 11;

-- List of the top level departments with fields needed for the homepage
Select * 
from Department
where Department.id = 1 OR Department.id = 2;

-- List of the featured products with fields needed for the homepage
Select * 
from Product
where Product.featured = 1;

-- Given a product, list all keyword related products
-- NOTE: the chosen product here is 5: "Sony Ericsson" It returns 4 electronic products, 
-- because they are all related by all keywords related to "Sony Ericsson"
CREATE VIEW view6 AS
SELECT key_ID
FROM Keyword_Products
WHERE prod_ID = 5; 

CREATE VIEW view7 AS
SELECT prod_ID
FROM Keyword_Products
WHERE prod_ID IN (SELECT prod_ID from Keyword_Products where key_ID IN (SELECT key_ID from view6)); 

SELECT Product.title
FROM Product
WHERE id in (SELECT * from view7) AND NOT id = 5;

-- Given a department, 
-- list of all its products (title, short description, 
-- current retail price) with their average rating
SELECT Product.id, Product.title, avg(User_Product.review_stars), Product.description, Product.price_BasePrice
FROM Product
LEFT JOIN User_Product ON User_Product.pid = Product.id
GROUP BY Product.id, Product.title;

-- List of all products on sale sorted by the discount percentage (starting with the biggest discount)
SELECT id, title, price_Discount
FROM Product
ORDER BY price_Discount DESC;

-- List of all new orders sorted by the order date (id, order date, customer’s name and the city, and the
-- total price)
CREATE VIEW view1 AS
Select Order_Products.orderID, Order_Products.prod_ID, Order_Products.quantity, Orders.orderDate, Orders.uid
FROM Order_Products
LEFT JOIN Orders ON Orders.id = Order_Products.orderID
GROUP BY Orders.id, Order_Products.prod_ID;

CREATE VIEW view2 AS
Select view1.orderID, view1.prod_ID, view1.quantity, view1.orderDate, view1.uid, Users.fullName_LastName, Users.fullName_FirstName, Users.address_city
FROM Users
LEFT JOIN view1 ON view1.uid = Users.id
GROUP BY view1.uid, view1.prod_ID, Users.id;

CREATE VIEW view3 AS
Select view2.orderID, view2.prod_ID, view2.quantity, view2.orderDate, view2.uid, view2.fullName_LastName, view2.fullName_FirstName, view2.address_city, Product.price_BasePrice, Product.price_Discount, Product.price_Vat
FROM Product
LEFT JOIN view2 ON view2.prod_ID = Product.id
GROUP BY view2.uid, view2.prod_ID, Product.id;

CREATE VIEW view4 AS
Select view3.orderID, sum(quantity*(price_BasePrice+price_BasePrice*(price_Vat*0.01)-price_BasePrice*(price_Discount*.01))) AS TotalPrice from view3 Group by orderID;

CREATE VIEW view5 AS
SELECT view3.orderID, view3.orderDate, view3.fullName_LastName, view3.fullName_FirstName, view3.address_city, view4.TotalPrice
FROM view4
LEFT JOIN view3 ON view3.orderID = view4.orderID
Group by orderID
Order By convert(view3.orderDate, date);

Select * from view5;

-- 10 best-selling products (in last 30 days)
Select sum(Order_Products.quantity) AS bestsellers, Order_Products.prod_ID, Product.title   
from Product 
LEFT JOIN Order_Products on Order_Products.prod_ID = Product.id
Group BY Order_Products.prod_ID ORDER BY sum(Order_Products.quantity) DESC limit 10;




drop view view1;
drop view view2;
drop view view3;
drop view view4;
drop view view5;
drop view view6;
drop view view7;