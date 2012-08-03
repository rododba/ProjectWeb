CREATE TABLE T_Candidate (
   
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  RUT varchar(10) NULL,
  NAMES varchar(100) NULL,
  LAST_NAMES varchar(100) NULL
) 



CREATE TABLE T_CandidateHistory (
   
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  YEAR char(4) NOT NULL,
  CIRCUNSCRIPCION_ID numeric(10,0) NULL ,
  DISTRITO_ID numeric(10,0) NULL,
  COMUNA_ID numeric(10,0) NULL,
  CANDIDATE_ID numeric(10,0) NULL,
  TYPECANDIDATE_ID numeric(10,0) NULL,
  AMOUNT numeric(10,0) NULL  
) 


CREATE TABLE T_USER (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  NAME varchar(100) NOT NULL,
  PASSWORD varchar(100) NOT NULL,
  PHONE varchar(15) NULL,
  PHONE2 varchar(15) NULL,
  FAX varchar(15) NULL,
  EMAIL varchar(50) NOT NULL,
  ROLE_ID numeric(10,0) NOT NULL
) 


CREATE TABLE T_ROLE (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  NAME varchar(100) NOT NULL
) 


CREATE TABLE T_PRODUCT (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  NAME varchar(100) NOT NULL,
  CATEGORY_ID numeric(10,0) NOT NULL,
  SKU varchar(50)  NULL,
  PRICEBASE Numeric(10,0)  NULL,
  PRICEMIN Numeric(10,0)  NULL,
  PRICEMAX Numeric(10,0)  NULL
)


CREATE TABLE T_ProductVendor (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  PRODUCT_ID numeric(10,0) NOT NULL,
  BPARTNER_ID numeric(10,0) NOT NULL
  )




CREATE TABLE T_PO (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  DATETRX timestamp without time zone NOT NULL default NOW(),
  AMOUNT numeric(10,0) NOT NULL,
  BPARTNER_ID numeric(10,0) NOT NULL,
  CHARGE_ID  numeric(10,0) NOT NULL,
  AUTHORIZEDBY VARCHAR(100) NULL,
  DATEAUTH timestamp without time zone NULL,
  STATUS CHAR(1) NOT NULL
) 
 
CREATE TABLE T_POLINE (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  PO_ID numeric(10,0) NOT NULL,
  PRODUCT_ID numeric(10,0) NOT NULL,
  TAX_ID numeric(10,0) NOT NULL,
  AMOUNT numeric(10,0) NOT NULL
) 

CREATE TABLE T_TAX (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  NAME varchar(100) NOT NULL,
  PORCENT numeric(10,0)
) 


CREATE TABLE T_POCANDIDATE (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  PO_ID numeric(10,0) NOT NULL,
  CANDIDATE_ID numeric(10,0) NOT NULL,
  AMOUNT numeric(10,0) NOT NULL
)


CREATE TABLE T_OT (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  CREATED timestamp without time zone NOT NULL default NOW(),
  AMOUNT numeric(10,0) NOT NULL,
  BPARTNER_ID numeric(10,0) NOT NULL,
  CHARGE_ID  numeric(10,0) NOT NULL,
  AUTHORIZEDBY VARCHAR(100) NULL,
  DATEAUTH timestamp without time zone NULL,
  STATUS CHAR(1) NOT NULL
) 

CREATE TABLE T_OTLINE (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  PO_ID numeric(10,0) NOT NULL,
  PRODUCT_ID numeric(10,0) NOT NULL,
  TAX_ID numeric(10,0) NOT NULL,
  AMOUNT numeric(10,0) NOT NULL
) 

CREATE TABLE T_Category (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  NAME varchar(100) NULL
) 



CREATE TABLE T_Circunscripcion (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  NAME varchar(100) NULL,
  VALUE varchar(10) NULL
) 



CREATE TABLE T_Distrito (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  NAME varchar(100) NULL,
  VALUE varchar(10) NULL
) 


CREATE TABLE T_Comuna (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  NAME varchar(100) NULL,
  VALUE varchar(10) NULL
) 


CREATE TABLE T_BPartner (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  NAME varchar(100) NULL,
  RUT varchar(10) NULL,
  ISVENDOR character(1) NOT NULL default 'Y',
  PHONE varchar(15) NULL,
  PHONE2 varchar(15) NULL,
  FAX varchar(15) NULL,
  EMAIL varchar(50) NULL
) 


CREATE TABLE T_MENU (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  NAME varchar(100) NULL,
  PATH varchar(200) NOT NULL
) 



CREATE TABLE T_CHARGE (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  NAME varchar(100) NULL,
  VALUE varchar(10) NOT NULL,
  CHARGETYPE_ID numeric(10,0) NULL
) 



CREATE TABLE T_CHARGETYPE (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  NAME varchar(100) NULL,
  VALUE varchar(10) NOT NULL
)





CREATE TABLE T_Budget (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  NAME varchar(100) NULL,
  YEAR char(4) NOT NULL,
  MONTH varchar(15) NOT NULL,
  CANDIDATE_ID numeric(10,0) NOT NULL,
  CHARGE_ID numeric(10,0) NOT NULL,
  AMOUNT numeric(10,0) NOT NULL
)




CREATE TABLE T_BudgetYear (
  ID numeric(10,0)  PRIMARY KEY,
  CREATED timestamp without time zone NOT NULL default NOW(),
  UPDATED timestamp without time zone NOT NULL default NOW(),
  CREATEDBY numeric(10,0),
  UPDATEDBY numeric(10,0),
  ISACTIVE character(1) NOT NULL default 'Y',
  DESCRIPTION varchar(100) NULL,
  NAME varchar(100) NULL,
  YEAR char(4) NOT NULL,
  MONTH varchar(15) NOT NULL,
  CHARGETYPE_ID numeric(10,0) NOT NULL,
  CHARGE_ID numeric(10,0) NOT NULL,
  AMOUNT numeric(10,0) NOT NULL,
  SEMESTER CHAR(1) NOT NULL
) 
