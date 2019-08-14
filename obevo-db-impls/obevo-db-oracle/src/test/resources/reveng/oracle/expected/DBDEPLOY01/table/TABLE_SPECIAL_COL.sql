//// CHANGE name=change0
CREATE TABLE TABLE_SPECIAL_COL 
   (	MYID NUMBER(*,0) NOT NULL ENABLE, 
	LOB_FIELD CLOB, 
	XML_FIELD XMLTYPE, 
	STRING_FIELD VARCHAR2(30), 
	TIMESTAMP_FIELD TIMESTAMP (6), 
	 PRIMARY KEY (MYID)
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE USERS  ENABLE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE USERS 
 LOB (LOB_FIELD) STORE AS BASICFILE TSC_LOB_FIELD(
  TABLESPACE USERS ENABLE STORAGE IN ROW CHUNK 8192 RETENTION 
  NOCACHE LOGGING ) 
 XMLTYPE COLUMN XML_FIELD STORE AS SECUREFILE BINARY XML (
  TABLESPACE USERS ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES ) ALLOW NONSCHEMA DISALLOW ANYSCHEMA
GO