-- 2 top level departments 
-- keywords 

INSERT INTO Keywords(keyword_id, name, pid)
VALUES(1, "women's pants", 7);

INSERT INTO Keywords(keyword_id, name, pid)
VALUES(2, "men's pants", 6);

INSERT INTO Keywords(keyword_id, name, pid)
VALUES(3, "kid's clothes", 8);

INSERT INTO Keywords(keyword_id, name, pid)
VALUES(4, "women's shirts", 10);

INSERT INTO Keywords(keyword_id, name, pid)
VALUES(5, "men's shirts", 9);

INSERT INTO Keywords(keyword_id, name, pid)
VALUES(6, "computers",3);

INSERT INTO Keywords(keyword_id, name, pid)
VALUES(7, "phones", 1);

INSERT INTO Keywords(keyword_id, name, pid)
VALUES(8, "samsung", 2);

INSERT INTO Keywords(keyword_id, name, pid)
VALUES(9, "nokia", 4);

INSERT INTO Keywords(keyword_id, name, pid)
VALUES(10, "sony", 5);

-- User_Product

INSERT INTO User_Product(uid, pid, review_stars, review_text)
VALUES(1, 10, 5, "great shirt")
VALUES(2, 6, 2, "the jeans are too small")

-- Orders
INSERT INTO Orders(id, orderDate, paymentReference, trackingNumber, uid)
VALUES(1, "22/11/2017", "ref-1", "TN12345678", 1)

-- status 

INSERT INTO Status(statusid, status, orderId)
VALUES(1, "dispatched", 1);
