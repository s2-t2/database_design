-- 2 top level departments 

INSERT INTO Department(id, icons, link, title, description, parentid)
VALUES(1, "/images/logo1.png", "www.shop.com/clothes", "Clothes", "We sell damn good clothes", NULL)
VALUES(2, "/images/logo2.png", "www.shop.com/electronics", "Electronics", "We sell damn good electronics", NULL)

INSERT INTO Department(id, icons, link, title, description, parentid)
VALUES(3, "/images/logo1.png", "www.shop.com/clothes/mensclothes", "Men's Clothes", "We sell damn good Men's Clothes", 1)
VALUES(4, "/images/logo1.png", "www.shop.com/clothes/womensclothes", "Women's Clothes", "We sell damn good Women's Clothes", 1)
VALUES(5, "/images/logo1.png", "www.shop.com/clothes/kidsclothes", "Kid's Clothes", "We sell damn good Kid's Clothes", 1)

INSERT INTO Product(id, title, featured, description, stockQuantity, price_BasePrice, price_Discount, price_VAT, deptID)
VALUES(6, "Men's Jeans", 0, "Damn Good Men's Jeans", 10000, 600, 10, 25, 3)
VALUES(7, "Women's Jeans", 1, "Damn Good Women's Jeans", 50000, 700, 30, 25, 4)
VALUES(8, "Kid's Jeans", 0, "Damn Good Kid's Jeans", 100, 400, 0, 25, 5)
VALUES(9, "Men's Shirts", 0, "Damn Good Men's Shirts", 1000, 300, 20, 25, 3)
VALUES(10, "Women's Shirts", 0, "Damn Good Women's Shirts", 6000, 200, 40, 25, 34)
INSERT INTO Users(id, phoneNumber, email, address_city, address_zip, address_street, fullName_FirstName, fullName_LastName, personNr, checkBox, password)
VALUES(1, "+467345060", "bobmarley@jammin.com", "Kingston Town", 1234, "420 Rasta High Way", "Bob", "Marley", "420420BOB", 1, "rastamanvibrations")
VALUES(2, "+467345063", "ironlion@positivevibrations.com", "Kingston Town", 1334, "420 Herb Way", "Iron", "Lion", "420420BOB", 1, "ironlikealioninzion")

INSERT INTO User_Product(uid, pid, review_stars, review_text)
VALUES(1, 10, 5, "great shirt")
VALUES(2, 6, 2, "the jeans are too small")

INSERT INTO Orders(id, orderDate, paymentReference, trackingNumber, uid)
VALUES(1, "22/11/2017", "ref-1", "TN12345678", 1)

INSERT INTO Keywords(keyword_id, name)
VALUES(1, "pants");
INSERT INTO Keywords(keyword_id, name)
VALUES(2, "jeans");
INSERT INTO Keywords(keyword_id, name)
VALUES(3, "kid's clothes");
INSERT INTO Keywords(keyword_id, name)
VALUES(4, "shirts");
INSERT INTO Keywords(keyword_id, name)
VALUES(5, "clothes");
INSERT INTO Keywords(keyword_id, name)
VALUES(6, "computers");
INSERT INTO Keywords(keyword_id, name)
VALUES(7, "phones");
INSERT INTO Keywords(keyword_id, name)
VALUES(8, "tablets");
INSERT INTO Keywords(keyword_id, name)
VALUES(9, "brands");
INSERT INTO Keywords(keyword_id, name)
VALUES(10, "smart phone");



INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(1, 6);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(1, 7);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(1, 8);

INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(2, 6);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(2, 7);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(2, 8);

INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(3, 8);

INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(4, 9);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(4, 10);

INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(5, 6);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(5, 7);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(5, 8);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(5, 9);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(5, 10);

INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(6, 3);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(6, 5);

INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(7, 1);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(7, 2);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(7, 4);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(7, 5);

INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(8, 1);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(8, 5);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(8, 3);

INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(9, 1);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(9, 2);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(9, 3);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(9, 4);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(9, 5);

INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(10, 1);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(10, 2);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(10, 3);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(10, 4);
INSERT INTO Keyword_Products(key_ID, prod_ID)
VALUES(10, 5);




INSERT INTO Keywords(keyword_id, name)
VALUES(1, "pants");
INSERT INTO Keywords(keyword_id, name)
VALUES(2, "jeans");
INSERT INTO Keywords(keyword_id, name)
VALUES(3, "kid's clothes");
INSERT INTO Keywords(keyword_id, name)
VALUES(4, "shirts");
INSERT INTO Keywords(keyword_id, name)
VALUES(5, "clothes");
INSERT INTO Keywords(keyword_id, name)
VALUES(6, "computers");
INSERT INTO Keywords(keyword_id, name)
VALUES(7, "phones");
INSERT INTO Keywords(keyword_id, name)
VALUES(8, "tablets");
INSERT INTO Keywords(keyword_id, name)
VALUES(9, "brands");
INSERT INTO Keywords(keyword_id, name)
VALUES(10, "smart phone");



--given department list all products(title short descript current retail price) with average rating.
SELECT Product.id, product.title, avg(User_Product.rating)
FROM Product
LEFT JOIN User_Product ON User

--given a product list all keyword related products
--the chosen product here is 5: "Sony Ericsson" It returns 4 electronic, 
-- because they are all related by all keywords related to "Sony Ericsson"
CREATE VIEW view1 AS
SELECT key_ID
FROM Keyword_Products
WHERE prod_ID = 5; 

CREATE VIEW view2 AS
SELECT prod_ID
FROM Keyword_Products
WHERE prod_ID IN (SELECT prod_ID from Keyword_Products where key_ID IN (SELECT key_ID from view1)); 

SELECT Product.title
FROM Product
WHERE id in (SELECT * from view2) AND NOT id = 5;

DROP VIEW view1;
DROP VIEW view2;




--Given an department, 
--list of all its products (title, short description, 
--current retail price) with their average rating
--TODO
SELECT Product.id, Product.title, avg(User_Product.review_stars)
FROM Product
LEFT JOIN User_Product ON User_Product.pid = Product.id
GROUP BY Product.id, Product.title;

--List of all products on sale sorted by the discount percentage (starting with the biggest discount)




