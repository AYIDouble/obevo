CREATE TABLE TABLE_A (
	A_ID    INT	NOT NULL,
	COL2 INT NULL,
	COL3 INT NULL
)
GO

ALTER TABLE TABLE_A ADD FOREIGN KEY(COL2) REFERENCES TABLE_C (C_ID)
GO
