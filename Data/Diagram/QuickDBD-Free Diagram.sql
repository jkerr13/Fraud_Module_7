-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/18Jm8x
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Cardholder" (
    "ID" int   NOT NULL,
    "Name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Cardholder" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Credit_Card" (
    "Card" varchar(20)   NOT NULL,
    "cardholder_id" int   NOT NULL,
    CONSTRAINT "pk_Credit_Card" PRIMARY KEY (
        "Card"
     )
);

CREATE TABLE "Merchant_Category" (
    "ID" int   NOT NULL,
    "Name" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Merchant_Category" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Merchant" (
    "ID" int   NOT NULL,
    "Name" varchar(50)   NOT NULL,
    "id_merchant_category" int   NOT NULL,
    CONSTRAINT "pk_Merchant" PRIMARY KEY (
        "ID"
     )
);

CREATE TABLE "Transaction" (
    "ID" int   NOT NULL,
    "Date" timestamp   NOT NULL,
    "Amount" float   NOT NULL,
    "Card" varchar(20)   NOT NULL,
    "id_merchant" int   NOT NULL,
    CONSTRAINT "pk_Transaction" PRIMARY KEY (
        "ID"
     )
);

ALTER TABLE "Credit_Card" ADD CONSTRAINT "fk_Credit_Card_cardholder_id" FOREIGN KEY("cardholder_id")
REFERENCES "Cardholder" ("ID");

ALTER TABLE "Merchant" ADD CONSTRAINT "fk_Merchant_id_merchant_category" FOREIGN KEY("id_merchant_category")
REFERENCES "Merchant_Category" ("ID");

ALTER TABLE "Transaction" ADD CONSTRAINT "fk_Transaction_Card" FOREIGN KEY("Card")
REFERENCES "Credit_Card" ("Card");

ALTER TABLE "Transaction" ADD CONSTRAINT "fk_Transaction_id_merchant" FOREIGN KEY("id_merchant")
REFERENCES "Merchant" ("ID");

