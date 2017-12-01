INSERT INTO Department(id, icons, link, title, description, parentid)
VALUES(7, "/images/logo2.png", "www.shop.com/electronics/Computers and Tablets", "Computers and Tablets", "We sell damn good computer and tablets", 2);

INSERT INTO Department(id, icons, link, title, description, parentid)
VALUES(8, "/images/logo2.png", "www.shop.com/electronics/Desktop ", "Desktop", "We sell damn good Desktop", 2);

INSERT INTO Department(id, icons, link, title, description, parentid)
VALUES(7, "/images/logo2.png", "www.shop.com/electronics/Computers and Tablets", "Computers and Tablets", "We sell damn good computer and tablets", 2);

INSERT INTO Department(id, icons, link, title, description, parentid)
VALUES(9, "/images/logo2.png", "www.shop.com/electronics/Phones ", "Phones", "We sell damn good Phones", 2);


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

-- Users

INSERT INTO Users(id, phoneNumber, email, address_city, address_zip, address_street, fullName_FirstName, fullName_LastName, personNr, checkBox, password)
VALUES(1, "+467345060", "bobmarley@jammin.com", "Kingston Town", 1234, "420 Rasta High Way", "Bob", "Marley", "420420BOB", 1, "rastamanvibrations");

INSERT INTO Users(id, phoneNumber, email, address_city, address_zip, address_street, fullName_FirstName, fullName_LastName, personNr, checkBox, password)
VALUES(2, "+467345063", "ironlion@positivevibrations.com", "Kingston Town", 1334, "420 Herb Way", "Iron", "Lion", "420420BOB", 1, "ironlikealioninzion");
