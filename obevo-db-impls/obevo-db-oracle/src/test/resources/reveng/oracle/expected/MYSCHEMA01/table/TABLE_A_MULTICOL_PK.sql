//// CHANGE name=change0
CREATE TABLE TABLE_A_MULTICOL_PK 
   (	A1_ID NUMBER(*,0) NOT NULL ENABLE, 
	A2_ID NUMBER(*,0) NOT NULL ENABLE, 
	VAL3 NUMBER(*,0), 
	 PRIMARY KEY (A1_ID, A2_ID)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE USERS  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE USERS 
GO

//// CHANGE excludeEnvs="%" comment="this_is_potentially_a_redundant_primaryKey_index_please_double_check" name=SYS_C005390
CREATE UNIQUE INDEX SYS_C005390 ON TABLE_A_MULTICOL_PK (A1_ID, A2_ID)
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS
  TABLESPACE USERS
GO
