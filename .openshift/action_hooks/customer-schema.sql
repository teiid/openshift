


CREATE TABLE CUSTOMER
(
   SSN char(10),
   FIRSTNAME varchar(64),
   LASTNAME varchar(64),
   ST_ADDRESS varchar(256),
   APT_NUMBER varchar(32),
   CITY varchar(64),
   STATE varchar(32),
   ZIPCODE varchar(10),
   PHONE varchar(15),
   CONSTRAINT CUSTOMER_PK PRIMARY KEY(SSN)
);


CREATE TABLE ACCOUNT
(
   ACCOUNT_ID integer,
   SSN char(10),
   STATUS char(10),
   TYPE char(10),
   DATEOPENED timestamp,
   DATECLOSED timestamp,
   CONSTRAINT ACCOUNT_PK PRIMARY KEY(ACCOUNT_ID),
   CONSTRAINT CUSTOMER_FK FOREIGN KEY (SSN) REFERENCES CUSTOMER (SSN)
);


CREATE TABLE PRODUCT (
   ID integer,
   SYMBOL varchar(16),
   COMPANY_NAME varchar(256),
   CONSTRAINT PRODUCT_PK PRIMARY KEY(ID)
);


CREATE TABLE HOLDINGS
(
   TRANSACTION_ID integer AUTO_INCREMENT,
   ACCOUNT_ID integer,
   PRODUCT_ID integer,
   PURCHASE_DATE timestamp,
   SHARES_COUNT integer,
   CONSTRAINT HOLDINGS_PK PRIMARY KEY (TRANSACTION_ID),
   CONSTRAINT ACCOUNT_FK FOREIGN KEY (ACCOUNT_ID) REFERENCES ACCOUNT (ACCOUNT_ID),
   CONSTRAINT PRODUCT_FK FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCT (ID)
);

CREATE TABLE IF NOT EXISTS `SUBSCRIPTIONS` (
  `value` char(15) NOT NULL DEFAULT '',
  `type` char(45) NOT NULL DEFAULT '',
  `end_date` date NOT NULL DEFAULT '2012-12-31',
  PRIMARY KEY (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



INSERT INTO CUSTOMER (SSN,FIRSTNAME,LASTNAME,ST_ADDRESS,APT_NUMBER,CITY,STATE,ZIPCODE,PHONE) VALUES ('CST01002','Joseph','Smith','1234 Main Street','Apartment 56','New York','New York','10174','(646)555-1776');
INSERT INTO CUSTOMER (SSN,FIRSTNAME,LASTNAME,ST_ADDRESS,APT_NUMBER,CITY,STATE,ZIPCODE,PHONE) VALUES ('CST01003','Nicholas','Ferguson','202 Palomino Drive',null,'Pittsburgh','Pennsylvania','15071','(412)555-4327');
INSERT INTO CUSTOMER (SSN,FIRSTNAME,LASTNAME,ST_ADDRESS,APT_NUMBER,CITY,STATE,ZIPCODE,PHONE) VALUES ('CST01004','Jane','Aire','15 State Street',null,'Philadelphia','Pennsylvania','19154','(814)555-6789');
INSERT INTO CUSTOMER (SSN,FIRSTNAME,LASTNAME,ST_ADDRESS,APT_NUMBER,CITY,STATE,ZIPCODE,PHONE) VALUES ('CST01005','Charles','Jones','1819 Maple Street','Apartment 17F','Stratford','Connecticut','06614','(203)555-3947');
INSERT INTO CUSTOMER (SSN,FIRSTNAME,LASTNAME,ST_ADDRESS,APT_NUMBER,CITY,STATE,ZIPCODE,PHONE) VALUES ('CST01006','Virginia','Jefferson','1710 South 51st Street','Apartment 3245','New York','New York','10175','(718)555-2693');
INSERT INTO CUSTOMER (SSN,FIRSTNAME,LASTNAME,ST_ADDRESS,APT_NUMBER,CITY,STATE,ZIPCODE,PHONE) VALUES ('CST01007','Ralph','Bacon','57 Barn Swallow Avenue',null,'Charlotte','North Carolina','28205','(704)555-4576');
INSERT INTO CUSTOMER (SSN,FIRSTNAME,LASTNAME,ST_ADDRESS,APT_NUMBER,CITY,STATE,ZIPCODE,PHONE) VALUES ('CST01008','Bonnie','Dragon','88 Cinderella Lane',null,'Jacksonville','Florida','32225','(904)555-6514');
INSERT INTO CUSTOMER (SSN,FIRSTNAME,LASTNAME,ST_ADDRESS,APT_NUMBER,CITY,STATE,ZIPCODE,PHONE) VALUES ('CST01009','Herbert','Smith','12225 Waterfall Way','Building 100, Suite 9','Portland','Oregon','97220','(971)555-7803');
INSERT INTO CUSTOMER (SSN,FIRSTNAME,LASTNAME,ST_ADDRESS,APT_NUMBER,CITY,STATE,ZIPCODE,PHONE) VALUES ('CST01015','Jack','Corby','1 Lone Star Way',null,'Dallas','Texas','75231','(469)555-8023');
INSERT INTO CUSTOMER (SSN,FIRSTNAME,LASTNAME,ST_ADDRESS,APT_NUMBER,CITY,STATE,ZIPCODE,PHONE) VALUES ('CST01019','Robin','Evers','1814 Falcon Avenue',null,'Atlanta','Georgia','30355','(470)555-4390');
INSERT INTO CUSTOMER (SSN,FIRSTNAME,LASTNAME,ST_ADDRESS,APT_NUMBER,CITY,STATE,ZIPCODE,PHONE) VALUES ('CST01020','Lloyd','Abercrombie','1954 Hughes Parkway',null,'Los Angeles','California','90099','(213)555-2312');
INSERT INTO CUSTOMER (SSN,FIRSTNAME,LASTNAME,ST_ADDRESS,APT_NUMBER,CITY,STATE,ZIPCODE,PHONE) VALUES ('CST01021','Scott','Watters','24 Mariner Way',null,'Seattle','Washington','98124','(206)555-6790');
INSERT INTO CUSTOMER (SSN,FIRSTNAME,LASTNAME,ST_ADDRESS,APT_NUMBER,CITY,STATE,ZIPCODE,PHONE) VALUES ('CST01022','Sandra','King','96 Lakefront Parkway',null,'Minneapolis','Minnesota','55426','(651)555-9017');
INSERT INTO CUSTOMER (SSN,FIRSTNAME,LASTNAME,ST_ADDRESS,APT_NUMBER,CITY,STATE,ZIPCODE,PHONE) VALUES ('CST01027','Maryanne','Peters','35 Grand View Circle','Apartment 5F','Cincinnati','Ohio','45232','(513)555-9067');
INSERT INTO CUSTOMER (SSN,FIRSTNAME,LASTNAME,ST_ADDRESS,APT_NUMBER,CITY,STATE,ZIPCODE,PHONE) VALUES ('CST01034','Corey','Snyder','1760 Boston Commons Avenue','Suite 543','Boston','Massachusetts','02136 ','(617)555-3546');
INSERT INTO CUSTOMER (SSN,FIRSTNAME,LASTNAME,ST_ADDRESS,APT_NUMBER,CITY,STATE,ZIPCODE,PHONE) VALUES ('CST01035','Henry','Thomas','345 Hilltop Parkway',null,'San Francisco','California','94129','(415)555-2093');
INSERT INTO CUSTOMER (SSN,FIRSTNAME,LASTNAME,ST_ADDRESS,APT_NUMBER,CITY,STATE,ZIPCODE,PHONE) VALUES ('CST01036','James','Drew','876 Lakefront Lane',null,'Cleveland','Ohio','44107','(216)555-6523');

INSERT INTO ACCOUNT (ACCOUNT_ID,SSN,STATUS,TYPE,DATEOPENED,DATECLOSED) VALUES (19980002,'CST01002','Personal  ','Active    ','2008-02-01 00:00:00.000',NULL);
INSERT INTO ACCOUNT (ACCOUNT_ID,SSN,STATUS,TYPE,DATEOPENED,DATECLOSED) VALUES (19980003,'CST01003','Personal  ','Active    ','2008-03-06 00:00:00.000',null);
INSERT INTO ACCOUNT (ACCOUNT_ID,SSN,STATUS,TYPE,DATEOPENED,DATECLOSED) VALUES (19980004,'CST01004','Personal  ','Active    ','2008-03-07 00:00:00.000',null);
INSERT INTO ACCOUNT (ACCOUNT_ID,SSN,STATUS,TYPE,DATEOPENED,DATECLOSED) VALUES (19980005,'CST01005','Personal  ','Active    ','2008-06-15 00:00:00.000',null);
INSERT INTO ACCOUNT (ACCOUNT_ID,SSN,STATUS,TYPE,DATEOPENED,DATECLOSED) VALUES (19980006,'CST01006','Personal  ','Active    ','2008-09-15 00:00:00.000',null);
INSERT INTO ACCOUNT (ACCOUNT_ID,SSN,STATUS,TYPE,DATEOPENED,DATECLOSED) VALUES (19990007,'CST01007','Personal  ','Active    ','2009-01-20 00:00:00.000',null);
INSERT INTO ACCOUNT (ACCOUNT_ID,SSN,STATUS,TYPE,DATEOPENED,DATECLOSED) VALUES (19990008,'CST01008','Personal  ','Active    ','2009-04-16 00:00:00.000',null);
INSERT INTO ACCOUNT (ACCOUNT_ID,SSN,STATUS,TYPE,DATEOPENED,DATECLOSED) VALUES (19990009,'CST01009','Business  ','Active    ','2009-06-25 00:00:00.000',null);
INSERT INTO ACCOUNT (ACCOUNT_ID,SSN,STATUS,TYPE,DATEOPENED,DATECLOSED) VALUES (20000015,'CST01015','Personal  ','Closed    ','2010-04-20 00:00:00.000','2011-06-22 00:00:00.000');
INSERT INTO ACCOUNT (ACCOUNT_ID,SSN,STATUS,TYPE,DATEOPENED,DATECLOSED) VALUES (20000019,'CST01019','Personal  ','Active    ','2010-10-08 00:00:00.000',null);
INSERT INTO ACCOUNT (ACCOUNT_ID,SSN,STATUS,TYPE,DATEOPENED,DATECLOSED) VALUES (20000020,'CST01020','Personal  ','Active    ','2010-10-20 00:00:00.000',null);
INSERT INTO ACCOUNT (ACCOUNT_ID,SSN,STATUS,TYPE,DATEOPENED,DATECLOSED) VALUES (20000021,'CST01021','Personal  ','Active    ','2010-12-05 00:00:00.000',null);
INSERT INTO ACCOUNT (ACCOUNT_ID,SSN,STATUS,TYPE,DATEOPENED,DATECLOSED) VALUES (20010022,'CST01022','Personal  ','Active    ','2011-01-05 00:00:00.000',null);
INSERT INTO ACCOUNT (ACCOUNT_ID,SSN,STATUS,TYPE,DATEOPENED,DATECLOSED) VALUES (20010027,'CST01027','Personal  ','Active    ','2011-08-22 00:00:00.000',null);
INSERT INTO ACCOUNT (ACCOUNT_ID,SSN,STATUS,TYPE,DATEOPENED,DATECLOSED) VALUES (20020034,'CST01034','Business  ','Active    ','2012-01-22 00:00:00.000',null);
INSERT INTO ACCOUNT (ACCOUNT_ID,SSN,STATUS,TYPE,DATEOPENED,DATECLOSED) VALUES (20020035,'CST01035','Personal  ','Active    ','2012-02-12 00:00:00.000',null);
INSERT INTO ACCOUNT (ACCOUNT_ID,SSN,STATUS,TYPE,DATEOPENED,DATECLOSED) VALUES (20020036,'CST01036','Personal  ','Active    ','2012-03-22 00:00:00.000',null);

INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1002,'BA','The Boeing Company');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1003,'MON','Monsanto Company');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1004,'PNRA','Panera Bread Company');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1005,'SY','Sybase Incorporated');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1006,'BTU','Peabody Energy');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1007,'IBM','International Business Machines Corporation');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1008,'DELL','Dell Computer Corporation');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1010,'HPQ','Hewlett-Packard Company');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1011,'GTW','Gateway, Incorporated');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1012,'GE','General Electric Company');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1013,'MRK','Merck and Company Incorporated');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1014,'DIS','Walt Disney Company');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1015,'MCD','McDonalds Corporation');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1016,'DOW','Dow Chemical Company');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1018,'GM','General Motors Corporation');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1024,'SBGI','Sinclair Broadcast Group Incorporated');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1025,'COLM','Columbia Sportsware Company');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1026,'COLB','Columbia Banking System Incorporated');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1028,'BSY','British Sky Broadcasting Group PLC');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1029,'CSVFX','Columbia Strategic Value Fund');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1030,'CMTFX','Columbia Technology Fund');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1031,'F','Ford Motor Company');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1033,'FCZ','Ford Motor Credit Company');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1034,'SAP','SAP AG');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1036,'TM','Toyota Motor Corporation');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1037,'RH','RedHat');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1038,'GHTL','Grand Hotels');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1039,'BTXT','Burlington');
INSERT INTO PRODUCT (ID,SYMBOL,COMPANY_NAME) VALUES(1040,'PYR','Pyramid');

INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19980002,1008,'2008-02-01 00:00:00.000',50);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19980002,1036,'2008-02-01 00:00:00.000',25);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19980003,1002,'2008-03-06 00:00:00.000',100);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19980003,1029,'2008-03-06 00:00:00.000',25);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19980003,1016,'2008-03-06 00:00:00.000',51);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19980004,1011,'2008-03-07 00:00:00.000',30);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19980005,1024,'2008-06-15 00:00:00.000',18);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19980006,1033,'2008-09-15 00:00:00.000',200);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19990007,1031,'2009-01-20 00:00:00.000',65);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19990008,1012,'2009-04-16 00:00:00.000',102);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19990007,1008,'2009-05-11 00:00:00.000',85);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19990008,1005,'2009-05-21 00:00:00.000',105);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19990009,1004,'2009-06-25 00:00:00.000',120);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19980003,1024,'2009-07-22 00:00:00.000',150);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20000015,1018,'2010-04-20 00:00:00.000',135);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19980006,1030,'2010-06-12 00:00:00.000',91);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20000019,1029,'2010-10-08 00:00:00.000',351);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20000020,1030,'2010-10-20 00:00:00.000',127);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20000020,1018,'2010-11-14 00:00:00.000',100);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20000019,1031,'2010-11-15 00:00:00.000',125);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20000021,1028,'2010-12-05 00:00:00.000',400);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20010022,1006,'2011-01-05 00:00:00.000',237);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19990008,1015,'2011-01-23 00:00:00.000',180);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19980005,1025,'2011-03-23 00:00:00.000',125);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20010027,1024,'2011-08-22 00:00:00.000',70);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20000020,1006,'2011-11-14 00:00:00.000',125);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19980003,1029,'2011-11-15 00:00:00.000',100);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20000021,1011,'2011-12-18 00:00:00.000',44);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20010027,1028,'2011-12-19 00:00:00.000',115);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20020034,1024,'2012-01-22 00:00:00.000',189);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19990009,1029,'2012-01-24 00:00:00.000',30);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20020035,1013,'2012-02-12 00:00:00.000',110);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20020035,1034,'2012-02-13 00:00:00.000',70);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20020034,1003,'2012-02-22 00:00:00.000',25);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20000019,1013,'2012-02-26 00:00:00.000',195);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19980004,1007,'2012-03-05 00:00:00.000',250);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20000021,1014,'2012-03-12 00:00:00.000',300);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20010027,1024,'2012-03-14 00:00:00.000',136);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20020036,1012,'2012-03-22 00:00:00.000',54);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20020036,1010,'2012-03-26 00:00:00.000',189);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (19980005,1010,'2012-04-01 00:00:00.000',26);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20020036,1037,'2012-04-01 00:00:00.000',100);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20020036,1038,'2012-05-01 00:00:00.000',100);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20020034,1039,'2012-05-05 00:00:00.000',150);
INSERT INTO HOLDINGS (ACCOUNT_ID,PRODUCT_ID,PURCHASE_DATE,SHARES_COUNT) VALUES (20020035,1040,'2012-05-15 00:00:00.000',200);

INSERT INTO `SUBSCRIPTIONS` (`value`, `type`, `end_date`) VALUES
('0000000092', 'BRONZE', '2012-11-11'),
('0000000093', 'BRONZE', '2009-01-11'),
('0000000094', 'GOLD', '2012-01-13'),
('0000000095', 'SILVER', '2012-11-12'),
('0000000096', 'BRONZE', '2007-01-10'),
('0000000097', 'BRONZE', '2013-12-12'),
('0000000098', 'SILVER', '2012-09-12'),
('0000000099', 'SILVER', '2012-09-12'),
('0000000100', 'BRONZE', '2014-01-11'),
('0000000101', 'GOLD', '2013-04-10'),
('0000000102', 'GOLD', '2013-04-10'),
('0000000103', 'BRONZE', '2010-01-11'),
('0000000104', 'GOLD', '2013-01-10'),
('0000000106', 'SILVER', '2014-01-11'),
('0000000107', 'SILVER', '2014-01-11'),
('0000000108', 'GOLD', '2013-04-10'),
('0000000109', 'BRONZE', '2014-01-11'),
('0000000110', 'BRONZE', '2010-01-11'),
('0000000111', 'GOLD', '2012-10-10'),
('0000000112', 'BRONZE', '2014-01-11'),
('0000000113', 'GOLD', '2013-01-10'),
('0000000114', 'GOLD', '2014-04-11'),
('0000000115', 'BRONZE', '2013-01-10'),
('0000000116', 'SILVER', '2010-01-11'),
('0000000117', 'BRONZE', '2012-11-11'),
('0000000118', 'BRONZE', '2013-01-10'),
('0000000119', 'GOLD', '2014-01-11'),
('0000000120', 'GOLD', '2013-01-10'),
('0000000121', 'BRONZE', '2013-01-10'),
('0000000122', 'GOLD', '2014-01-11'),
('0000000123', 'BRONZE', '2014-01-11'),
('0000000124', 'SILVER', '2014-01-11'),
('0000000125', 'BRONZE', '2010-01-11'),
('0000000126', 'BRONZE', '2014-01-11'),
('0000000127', 'GOLD', '2014-01-11'),
('0000000128', 'BRONZE', '2014-01-11'),
('0000000129', 'BRONZE', '2014-01-11'),
('0000000130', 'GOLD', '2014-01-11'),
('0000000131', 'BRONZE', '2014-01-11'),
('0000000132', 'BRONZE', '2010-01-11'),
('0000000133', 'BRONZE', '2014-01-11'),
('0000000134', 'BRONZE', '2014-01-11'),
('0000000135', 'GOLD', '2014-01-11'),
('0000000136', 'GOLD', '2010-01-11'),
('0000000137', 'GOLD', '2014-01-11'),
('0000000138', 'SILVER', '2014-01-11'),
('0000000139', 'BRONZE', '2014-01-11'),
('0000000140', 'GOLD', '2014-01-11'),
('0000000091', 'GOLD', '2010-01-11'); 

