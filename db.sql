CREATE TABLE Department(id int NOT NULL PRIMARY KEY, 
	icons varchar(255) NOT NULL, 
	link varchar(255) NOT NULL, 
	title varchar(255) NOT NULL UNIQUE, 
	description text NOT NULL, 
	parentId int);

-- add average rating to product
CREATE TABLE Product(
	id int NOT NULL PRIMARY KEY, 
	title varchar(255) NOT NULL UNIQUE, 
	featured bit NOT NULL, 
	description text NOT NULL, 
	stockQuantity int NOT NULL, 
	price_BasePrice decimal(10,2) NOT NULL,
	price_Discount decimal(10,2) NOT NULL,
	price_vat decimal(10,2) NOT NULL,
	FOREIGN KEY (id) REFERENCES Department (id), 
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
	personnr varchar(12), 
	checkBox bit NOT NULL, 
	password varchar(255) NOT NULL);

CREATE TABLE User_Product(
	uid int NOT NULL, 
	pid int NOT NULL,
	review_stars int NOT NULL,
	review_text text NOT NULL,
	Constraint uid_FK FOREIGN KEY (uid) REFERENCES Users (id), 
	Constraint pid_FK FOREIGN KEY (pid) REFERENCES Department (id), 
	Constraint puid_PK PRIMARY KEY (uid, pid)
);






