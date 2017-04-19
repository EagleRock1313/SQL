

UPDATE tblRegistration SET attrbreg_dob = '01-03-1989';

ALTER TABLE tblRegistration MODIFY(attrbReg_EnterHomePh VARCHAR2(13));
ALTER TABLE tblRegistration MODIFY(attrbReg_EnterCellPh VARCHAR2(13));
ALTER TABLE tblRegistration MODIFY(attrbReg_AttyPhone VARCHAR2(13));
ALTER TABLE tblRegistration  MODIFY(attrbReg_SWPhone VARCHAR2(13));
ALTER TABLE tblExit MODIFY (attrbExit_HomePh VARCHAR2(13));
ALTER TABLE tblExit MODIFY (attrbExit_CellPh VARCHAR2(13));
ALTER TABLE tblSuff MODIFY attrbSuff_ExitDate DATE;
ALTER TABLE tblSuff MODIFY (attrbSuff_EnterMentor VARCHAR2(20));

ALTER TABLE tblCourt MODIFY (attrbPhase_ID VARCHAR2(7) NOT NULL);
ALTER TABLE tblRegistration MODIFY (attrbChild_ID VARCHAR2(7) NOT NULL);
ALTER TABLE tblTopics MODIFY (attrbContact_ID VARCHAR2(7) NOT NULL);