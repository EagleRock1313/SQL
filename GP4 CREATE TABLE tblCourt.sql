CREATE TABLE tblCourt(				
	attrbCourt_ID			VARCHAR2(7),
	attrbPhase_ID			VARCHAR2(7),
	attrbCourtDate			DATE			NOT NULL,
	attrbCourtNote			VARCHAR2(255)	NOT NULL,
	attrbCourtTime			NUMBER	(2,2)	NOT NULL,
	attrbCourtType			VARCHAR2(15)	NOT NULL,
	attrbMPattend			VARCHAR2(1)		NOT NULL,
	CONSTRAINT PK_attrbCourt_ID
	PRIMARY KEY(attrbCourt_ID),
	CONSTRAINT FK_attrbPhase_ID
	FOREIGN KEY(attrbPhase_ID) REFERENCES tblPhase
	);