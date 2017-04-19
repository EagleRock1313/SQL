CREATE TABLE tblPhase(			
	attrbPhase_ID			VARCHAR2(7),
	attrbPhaseDate_verbal	DATE			NOT NULL,
	attrbPhaseDate			DATE			NOT NULL,
	attrbPhaseValue			NUMBER	(1,0)	NOT NULL,
	attrbPhaseNote			VARCHAR2(255)	NOT NULL,
	CONSTRAINT PK_attrbPhase_ID
	PRIMARY KEY (attrbPhase_ID)
	);