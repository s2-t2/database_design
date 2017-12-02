INSERT INTO Department(id, icons, link, title, description, parentid)
VALUES(3, "/images/logo1.png", "www.shop.com/clothes/mensclothes", "Men's Clothes", "We sell damn good Men's Clothes", 1);


INSERT INTO Department(id, icons, link, title, description, parentid)
VALUES(4, "/images/logo1.png", "www.shop.com/clothes/womensclothes", "Women's Clothes", "We sell damn good Women's Clothes", 1);

INSERT INTO Department(id, icons, link, title, description, parentid)
VALUES(5, "/images/logo1.png", "www.shop.com/clothes/kidsclothes", "Kid's Clothes", "We sell damn good Kid's Clothes", 1);

INSERT INTO Product(id, title, featured, description, stockQuantity, price_BasePrice, price_Discount, price_VAT, deptID)
VALUES(6, "Men's Jeans", 0, "Damn Good Men's Jeans", 10000, 600, 10, 25, 3);

INSERT INTO Product(id, title, featured, description, stockQuantity, price_BasePrice, price_Discount, price_VAT, deptID)
VALUES(7, "Women's Jeans", 1, "Damn Good Women's Jeans", 50000, 700, 30, 25, 4);

INSERT INTO Product(id, title, featured, description, stockQuantity, price_BasePrice, price_Discount, price_VAT, deptID)
VALUES(8, "Kid's Jeans", 0, "Damn Good Kid's Jeans", 100, 400, 0, 25, 5);

INSERT INTO Product(id, title, featured, description, stockQuantity, price_BasePrice, price_Discount, price_VAT, deptID)
VALUES(9, "Men's Shirts", 0, "Damn Good Men's Shirts", 1000, 300, 20, 25, 3);

INSERT INTO Product(id, title, featured, description, stockQuantity, price_BasePrice, price_Discount, price_VAT, deptID)
VALUES(10, "Women's Shirts", 0, "Damn Good Women's Shirts", 6000, 200, 40, 25, 3);
