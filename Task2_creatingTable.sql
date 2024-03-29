CREATE TABLE Department(
	id int NOT NULL PRIMARY KEY, 
	icons varchar(255) NOT NULL, 
	link varchar(255) NOT NULL, 
	title varchar(255) NOT NULL UNIQUE, 
	description text NOT NULL, 
	parentId int,
	FOREIGN KEY (parentId) REFERENCES Department(id)
	);

-- add average rating to product
CREATE TABLE Product(
	id int NOT NULL PRIMARY KEY, 
	title varchar(255) NOT NULL UNIQUE, 
	featured bit NOT NULL, 
	description text NOT NULL, 
	stockQuantity int NOT NULL, 
	price_BasePrice decimal(10,2) NOT NULL, 
	price_Discount decimal(10,2) NOT NULL, 
	price_Vat decimal(10,2) NOT NULL,
    deptID int NOT NULL,
    FOREIGN KEY (deptID) REFERENCES Department (id)
	); 

CREATE TABLE Users(
	id int NOT NULL PRIMARY KEY, 
	phoneNumber varchar(16), 
	email varchar(255) NOT NULL, 
	address_city varchar(255) NOT NULL, 
	address_zip int(7) NOT NULL, 
	address_street varchar(255) NOT NULL, 
	fullName_FirstName varchar(255) NOT NULL, 
	fullName_LastName varchar(255) NOT NULL, 
	personNr varchar(12), 
	checkBox bit NOT NULL, 
	password varchar(255) NOT NULL
	);

CREATE TABLE User_Product(
	uid int NOT NULL, 
	pid int NOT NULL,
	review_stars int NOT NULL,
	review_text text NOT NULL,
	Constraint uid_FK FOREIGN KEY (uid) REFERENCES Users (id), 
	Constraint pid_FK FOREIGN KEY (pid) REFERENCES Product (id), 
	Constraint puid_PK PRIMARY KEY (uid, pid)
	);

CREATE TABLE Keywords(
	keyword_id int NOT NULL PRIMARY KEY,
	kname varchar(255) NOT NULL UNIQUE
	);

CREATE TABLE Orders (
	id int NOT NULL PRIMARY KEY,
	orderDate date NOT NULL,
	-- lastChangeDate varchar(10) NOT NULL, is a derived attribute
	paymentReference varchar(10) NOT NULL UNIQUE,
	trackingNumber varchar(10) UNIQUE,
	uid int NOT NULL,
	statID int NOT NULL,
	last_Update date,
	FOREIGN KEY (uid) REFERENCES Users (id),
	FOREIGN KEY (statID) REFERENCES Status (statusID)
	);
CREATE TABLE Status (
	statusID int NOT NULL PRIMARY KEY UNIQUE,
	status text NOT NULL,
--	orderId int NOT NULL UNIQUE, not needed
	FOREIGN KEY (orderId) REFERENCES Orders (id)
-- textlist i.e. history should be derived att
	);

CREATE TABLE Order_Products(
	orderID int NOT NULL,
	prod_ID int NOT NULL,
	Constraint oid_FK FOREIGN KEY (orderID) REFERENCES Orders (id), 
	Constraint proid_FK FOREIGN KEY (prod_ID) REFERENCES Product (id), 
	Constraint poid_PK PRIMARY KEY (orderID, prod_ID),
	price int NOT NULL,
	quantity int NOT NULL 

	-- derived attribute is total retail price
);

CREATE TABLE Keyword_Products(
	key_ID int NOT NULL,
	prod_ID int NOT NULL,
	Constraint kid_FK FOREIGN KEY (key_ID) REFERENCES Keywords (keyword_id),
    Constraint prodid_FK FOREIGN KEY (prod_ID) REFERENCES Product (id),
    Constraint kpid_PK PRIMARY KEY (key_ID, prod_ID)
);







