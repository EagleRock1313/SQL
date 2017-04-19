CREATE TABLE tblTopics(				
	attrbTopics_ID					VARCHAR2(7),
	attrbContact_ID					VARCHAR2(7),
	attrbTopics_Type				VARCHAR2(20)		NOT NULL,
	CONSTRAINT PK_attrbTopics_ID
	PRIMARY KEY (attrbTopics_ID),
	CONSTRAINT FK_attrbContact_ID
	FOREIGN KEY (attrbContact_ID)REFERENCES tblContact
	);