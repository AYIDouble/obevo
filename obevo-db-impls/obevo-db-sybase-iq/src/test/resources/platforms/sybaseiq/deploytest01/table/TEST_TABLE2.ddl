//// CHANGE name=init
CREATE TABLE TEST_TABLE2
(
	ID INT NOT NULL,
	MYFIELD INT NULL,
	STRING_FIELD VARCHAR(100),
	TABLE1ID INT NULL,
	PRIMARY KEY (ID)
)
//// CHANGE name=fk
ALTER TABLE TEST_TABLE2
	ADD CONSTRAINT TEST_TABLE2_FK
	FOREIGN KEY(TABLE1ID)
	REFERENCES TEST_TABLE(ID)

