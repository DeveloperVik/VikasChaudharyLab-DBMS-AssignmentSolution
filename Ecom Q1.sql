CREATE TABLE Supplier ( SUPP_ID INT NOT NULL PRIMARY KEY, SUPP_NAME VARCHAR(50) NOT NULL,
     SUPP_CITY VARCHAR(50) NOT NULL, SUPP_PHONE VARCHAR(50) NOT NULL
                       );
                       
CREATE TABLE Customer ( CUS_ID INT NOT NULL PRIMARY KEY, CUS_NAME VARCHAR(20) NOT NULL,
     CUS_PHONE VARCHAR(10) NOT NULL, CUS_CITY VARCHAR(30) NOT NULL,
                       CUS_GENDER CHAR
                       );
                       
CREATE TABLE Category ( CAT_ID INT NOT NULL PRIMARY KEY, CAT_NAME VARCHAR(20) NOT NULL
     );
                       
CREATE TABLE Product ( PRO_ID INT NOT NULL PRIMARY KEY, `PRO_NAME V` VARCHAR(20) NOT NULL DEFAULT "Dummy",
     PRO_DESC VARCHAR(60), CAT_ID INT,
                       FOREIGN KEY (CAT_ID) REFERENCES Category(CAT_ID)
                       );
                       
CREATE TABLE Supplier_pricing ( PRICING_ID INT NOT NULL PRIMARY KEY, PRO_ID INT,
       SUPP_ID INT, SUPP_PRICE INT DEFAULT 0,
                               FOREIGN KEY (PRO_ID) REFERENCES Product(PRO_ID),
                               FOREIGN KEY (SUPP_ID) REFERENCES Supplier(SUPP_ID)
       );
                               
CREATE TABLE `Order` ( ORD_ID INT NOT NULL PRIMARY KEY, ORD_AMOUNT INT NOT NULL,
     ORD_DATE DATE NOT NULL, CUS_ID INT, PRICING_ID INT,
                       FOREIGN KEY (CUS_ID) REFERENCES Customer(CUS_ID),
                       FOREIGN KEY (PRICING_ID) REFERENCES Supplier_pricing(PRICING_ID)
                       );
                       
CREATE TABLE Rating ( RAT_ID INT NOT NULL PRIMARY KEY, ORD_ID INT,
     RAT_RATSTARS INT NOT NULL,
                       FOREIGN KEY (ORD_ID) REFERENCES `Order` (ORD_ID)
                       );