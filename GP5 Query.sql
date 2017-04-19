/*<!-- GP-5: Compose and execute at least four SELECT commands on your database: 

1)one retrieving a subset of records from one single table that meet certain condition(s), 
2)one cross-relating multiple (at least two) tables linked with foreign key(s) and retrieving selected fields to yield results 
3)one computing a column of summary data using one of the built-in aggregrate functions (SUM, AVG, COUNT)
4)one creating a view and generating some secondary results from the view. 

Submit a hard copy of screen capture of SELECT commands and results for this phase of the group project.

Submission:
1. Statements of search questions;
2. SQL queries (SELECT ... FROM ... WHERE ...) constructed from search questions;
3. Screen capture of query results;
4. Brief notes of explanation.
-->*/


Query Statements
/*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
What are the first and last names of all current clients?*/
SELECT attrbreg_ID, attrbreg_FnameParent, attrbreg_LnameParent FROM tblRegistration;*/
	
/*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
What are the child names of Parents 16 and 17?*/
SELECT tblChild.attrbChild_ID, tblChild.attrbChild_Fname, tblChild.attrbChild_Lname,
       tblRegistration.attrbreg_ID, tblRegistration.attrbreg_FnameParent, tblRegistration.attrbreg_LnameParent
FROM tblChild, tblRegistration
WHERE tblChild.attrbChild_ID = tblRegistration.attrbChild_ID
AND (UPPER(attrbreg_LnameParent) LIKE UPPER('%16%') OR attrbreg_LnameParent LIKE UPPER('%17%'));*/


/*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
What is the total number of all clients?*/
SELECT COUNT(*) FROM tblRegistration;
	
/*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
/*What is the name, date of birth and age of all clients with First Name includes 2?*/
CREATE OR REPLACE VIEW all_clients
    AS
        SELECT attrbreg_ID, attrbreg_FnameParent, attrbreg_LnameParent, attrbreg_DOB, attrbreg_age
        FROM tblRegistration
WHERE attrbreg_FnameParent LIKE '%2';

SELECT * FROM all_clients,
    (SELECT ROUND((SYSDATE - attrbreg_DOB) / 365.242199) FROM all_clients);
DROP VIEW all_clients;