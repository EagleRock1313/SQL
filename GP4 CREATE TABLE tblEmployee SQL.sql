CREATE TABLE tblEmployee(		
	attrbEmployee_ID		VARCHAR2(7),
	attrbEmployee_Fname		VARCHAR2(15)		NOT NULL,
	attrbEmployee_Lname		VARCHAR2(15)		NOT NULL,
	attrbEmployee_Pwd		VARCHAR2(8)			NOT NULL,
	attrbEmployee_UserID	VARCHAR2(7)			NOT NULL,
	attrbEmployee_EmpType	NUMBER	(1,0)		NOT NULL,
	CONSTRAINT PK_attrbEmployee_ID
	PRIMARY KEY (attrbEmployee_ID)
	);