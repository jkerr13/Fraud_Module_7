CREATE TABLE cardholder (
	id int PRIMARY KEY,
	name varchar(50) NOT NULL)
	
CREATE TABLE credit_card (
	card varchar(20) PRIMARY KEY,
	cardholder_id int NOT NULL)
	
CREATE TABLE merchant_category (
	id int PRIMARY KEY,
	name varchar(50) NOT NULL)
	
CREATE TABLE merchant (
	id int PRIMARY KEY,
	name varchar(50) NOT NULL,
	id_merchant_category int NOT NULL)
	
CREATE TABLE transaction (
	id int PRIMARY KEY,
	date timestamp NOT NULL,
	amount float NOT NULL,
	card varchar(20) NOT NULL,
	id_merchant int NOT NULL)