CREATE TABLE tblContact (				
	attrbContact_ID			VARCHAR2(7),
	attrbContact_Date		DATE			NOT NULL,
	attrbContact_First		DATE			NOT NULL,
	attrbContact_Minutes	NUMBER	(2,0)	NOT NULL,
	attrbContact_Hrs		NUMBER	(2,0)	NOT NULL,
	attrbContact_TotalTime	NUMBER	(2,2)	NOT NULL,
	attrbContact_Type		VARCHAR2(10)	NOT NULL,
	attrbContact_RetAttpt	NUMBER	(2,0)	NOT NULL,
	attrbContact_DWCAccept	VARCHAR2(1)		NOT NULL,
	attrbContact_DWCDate	DATE			NOT NULL,
	attrbContact_Lang		VARCHAR2(5)		NOT NULL,
	attrbContact_AttyOffice	VARCHAR2(3)		NOT NULL,
	attrbContact_Note		VARCHAR2(50)	NOT NULL,
	CONSTRAINT PK_attrbContact_ID
	PRIMARY KEY (attrbContact_ID)
	);