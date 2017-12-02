
--populating dept.
INSERT INTO Department(id, icons, link, title, description, parentid)
VALUES(11, "/images/logo1.png", "www.shop.com", "Home of shop.com Clothes & Electronics", "We sell damn good clothes & electronics", NULL);
INSERT INTO Department(id, icons, link, title, description, parentid)
VALUES(1, "/images/logo1.png", "www.shop.com/clothes", "Clothes", "We sell damn good clothes", 11);
INSERT INTO Department(id, icons, link, title, description, parentid)
VALUES(2, "/images/logo2.png", "www.shop.com/electronics", "Electronics", "We sell damn good electronics", 11);
INSERT INTO Department(id, icons, link, title, description, parentid)
VALUES(3, "/images/logo1.png", "www.shop.com/clothes/mensclothes", "Men's Clothes", "We sell damn good Men's Clothes", 1);
INSERT INTO Department(id, icons, link, title, description, parentid)
VALUES(4, "/images/logo1.png", "www.shop.com/clothes/womensclothes", "Women's Clothes", "We sell damn good Women's Clothes", 1);
INSERT INTO Department(id, icons, link, title, description, parentid)
VALUES(5, "/images/logo1.png", "www.shop.com/clothes/kidsclothes", "Kid's Clothes", "We sell damn good Kid's Clothes", 1);
INSERT INTO Department(id, icons, link, title, description, parentid)
VALUES(6, "/images/logo1.png", "www.shop.com/clothes/fancyclothes", "Fancy Clothes", "We sell damn good Fancy Clothes", 1);
INSERT INTO Department(id, icons, link, title, description, parentid)    
VALUES(7, "/images/logo2.png", "www.shop.com/electronics/Computers and Tablets", "Computers and Tablets", "We sell damn good computer and tablets", 2);        
INSERT INTO Department(id, icons, link, title, description, parentid)    
VALUES(8, "/images/logo2.png", "www.shop.com/electronics/Desktop ", "Desktop", "We sell damn good Desktop", 2);        
INSERT INTO Department(id, icons, link, title, description, parentid)
VALUES(7, "/images/logo2.png", "www.shop.com/electronics/Computers and Tablets", "Computers and Tablets", "We sell damn good computer and tablets", 2);                                                                                                                        
INSERT INTO Department(id, icons, link, title, description, parentid)
VALUES(9, "/images/logo2.png", "www.shop.com/electronics/Phones ", "Phones", "We sell damn good Phones", 2);


--populating product
INSERT INTO Product(id, title, featured, description, stockQuantity, price_BasePrice, price_Discount, price_VAT, deptID)
VALUES(6, "Men's Jeans", 0, "Damn Good Men's Jeans", 10000, 600, 10, 25, 3);
INSERT INTO Product(id, title, featured, description, stockQuantity, price_BasePrice, price_Discount, price_VAT, deptID)
VALUES(7, "Women's Jeans", 1, "Damn Good Women's Jeans", 50000, 700, 30, 25, 4);
INSERT INTO Product(id, title, featured, description, stockQuantity, price_BasePrice, price_Discount, price_VAT, deptID)
VALUES(8, "Kid's Jeans", 0, "Damn Good Kid's Jeans", 100, 400, 0, 25, 5);
INSERT INTO Product(id, title, featured, description, stockQuantity, price_BasePrice, price_Discount, price_VAT, deptID)
VALUES(9, "Men's Shirts", 0, "Damn Good Men's Shirts", 1000, 300, 20, 25, 3);
INSERT INTO Product(id, title, featured, description, stockQuantity, price_BasePrice, price_Discount, price_VAT, deptID)
VALUES(10, "Women's Shirts", 0, "Damn Good Women's Shirts", 6000, 200, 40, 25, 34);
INSERT INTO Product(id, title, featured, description, stockQuantity, price_BasePrice, price_Discount, price_vat, deptID)
VALUES(1, "iPhone X", 1, "We sell damn good iPhones", 10, 3000, 15, 25, 2);
INSERT INTO Product(id, title, featured, description, stockQuantity, price_BasePrice,     price_Discount, price_vat, deptID)
VALUES(2, "Samsung S8", 1, "We sell damn good samsung s8", 50, 2200, 5, 25, 2);
INSERT INTO Product(id, title, featured, description, stockQuantity, price_BasePrice,     price_Discount, price_vat, deptID)
VALUES(3, "Lenovo K6", 0, "We sell damn good lenovo k6", 100, 1500, 15, 25, 2);
INSERT INTO Product(id, title, featured, description, stockQuantity, price_BasePrice,     price_Discount, price_vat, deptID)
VALUES(4, "Nokia 360", 0, "We sell damn good Nokia 360", 80, 750, 12, 25, 2);
INSERT INTO Product(id, title, featured, description, stockQuantity, price_BasePrice,     price_Discount, price_vat, deptID)
VALUES(5, "Sony Ericsson", 1, "We sell damn good Ericsson", 45, 2500, 20, 25, 2);

--populating users
INSERT INTO Users(id, phoneNumber, email, address_city, address_zip, address_street, fullName_FirstName, fullName_LastName, personNr, checkBox, password)
VALUES(1, "+467345060", "bobmarley@jammin.com", "Kingston Town", 1234, "420 Rasta High Way", "Bob", "Marley", "420420BOB", 1, "rastamanvibrations");
INSERT INTO Users(id, phoneNumber, email, address_city, address_zip, address_street, fullName_FirstName, fullName_LastName, personNr, checkBox, password)
VALUES(2, "+467345063", "ironlion@positivevibrations.com", "Kingston Town", 1334, "420 Herb Way", "Iron", "Lion", "420420BOB", 1, "ironlikealioninzion");

--populating user_products
INSERT INTO User_Product(uid, pid, review_stars, review_text)
VALUES(1, 10, 5, "great shirt");
INSERT INTO User_Product(uid, pid, review_stars, review_text)
VALUES(2, 6, 2, "the jeans are too small");

--note inserting into Orders, must be followed up by inserting which product is selected into Order Products.
INSERT INTO Orders(id, orderDate, paymentReference, trackingNumber, uid)
VALUES(1, "22/11/2017", "ref-1", "TN12345678", 1);
INSERT INTO Orders(id, orderDate, paymentReference, trackingNumber, uid) 
VALUES(2, "24/12/2017", "ref-2", "TN54356781",2);

--populating Order_Products
INSERT INTO Order_Products(orderID, prod_ID, quantity)
VALUES(1, 4, 102);
INSERT INTO Order_Products(orderID, prod_ID, quantity)
VALUES(1, 3, 203);
INSERT INTO Order_Products(orderID, prod_ID, quantity)
VALUES(1, 6, 1000);
INSERT INTO Order_Products(orderID, prod_ID, quantity)
VALUES(1, 1, 234);
INSERT INTO Order_Products(orderID, prod_ID, quantity)
VALUES(1, 2, 2);
INSERT INTO Order_Products(orderID, prod_ID, quantity)
VALUES(2, 9, 12);
INSERT INTO Order_Products(orderID, prod_ID, quantity)
VALUES(2, 7, 23);
INSERT INTO Order_Products(orderID, prod_ID, quantity)
VALUES(2, 5, 100);
INSERT INTO Order_Products(orderID, prod_ID, quantity)
VALUES(2, 8, 34);
INSERT INTO Order_Products(orderID, prod_ID, quantity)
VALUES(2, 10, 24);

--populating keywords
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


--populating the many to many
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






