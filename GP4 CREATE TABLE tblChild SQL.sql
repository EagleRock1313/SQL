CREATE TABLE tblChild (				
	attrbChild_ID		VARCHAR2(7),
	attrbChild_FamilyID	VARCHAR2(25)		NOT NULL,
	attrbChild_DWCID	VARCHAR2(25)		NOT NULL,
	attrbChild_JDnum	VARCHAR2(25)		NOT NULL,
	attrbChild_Fname	VARCHAR2(25)		NOT NULL,
	attrbChild_Lname	VARCHAR2(25)		NOT NULL,
	CONSTRAINT PK_attrbChild_ID
	PRIMARY KEY (attrbChild_ID)
	);