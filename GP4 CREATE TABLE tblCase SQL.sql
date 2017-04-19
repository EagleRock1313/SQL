CREATE TABLE tblCase (				
	attrbCase_ID 				VARCHAR2(7),
	attrbReg_ID					VARCHAR2(7) NOT NULL,
	attrbChild_ID				VARCHAR2(7) NOT NULL,
	attrbContact_ID				VARCHAR2(7) NOT NULL,
	attrbTopics_ID				VARCHAR2(7) NOT NULL,
	attrbSatisf_ID				VARCHAR2(7) NOT NULL,
	attrbExit_ID				VARCHAR2(7) NOT NULL,
	attrbSuff_ID				VARCHAR2(7) NOT NULL,
	attrbEmployee_ID			VARCHAR2(7) NOT NULL,
	attrbPhase_ID				VARCHAR2(7) NOT NULL,
	attrbCourt_ID				VARCHAR2(7) NOT NULL,
	CONSTRAINT PK_attrbCase_ID
	PRIMARY KEY(attrbCase_ID),
	CONSTRAINT FK_Reg_ID
	FOREIGN KEY (attrbReg_ID) REFERENCES tblRegistration,
	CONSTRAINT FK_Child_ID
	FOREIGN KEY (attrbChild_ID) REFERENCES tblChild,
	CONSTRAINT FK_Contact_ID
	FOREIGN KEY (attrbContact_ID) REFERENCES tblContact,
	CONSTRAINT FK_Topics_ID
	FOREIGN KEY (attrbTopics_ID) REFERENCES tblTopics,
	CONSTRAINT FK_Satisf_ID
	FOREIGN KEY (attrbSatisf_ID) REFERENCES tblSatisf,
	CONSTRAINT FK_Exit_ID
	FOREIGN KEY (attrbExit_ID) REFERENCES tblExit,
	CONSTRAINT FK_Suff_ID
	FOREIGN KEY (attrbSuff_ID) REFERENCES tblSuff,
	CONSTRAINT FK_Employee_ID
	FOREIGN KEY (attrbEmployee_ID) REFERENCES tblEmployee,
	CONSTRAINT FK_Phase_ID
	FOREIGN KEY (attrbPhase_ID) REFERENCES tblPhase,
	CONSTRAINT FK_Court_ID
	FOREIGN KEY (attrbCourt_ID) REFERENCES tblCourt
);

