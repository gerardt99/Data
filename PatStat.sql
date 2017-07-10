CREATE TABLE TLS201_APPLN
(
  appln_id 		INT 		DEFAULT 0,
  appln_auth 		VARCHAR(2) 	DEFAULT NULL,
  appln_nr 		VARCHAR(15)  	DEFAULT NULL,
  appln_kind 		VARCHAR(2) 	DEFAULT NULL,
  appln_filing_date 	DATE            DEFAULT 0,
  appln_filing_year 	INT           	DEFAULT 0,
  appln_nr_epodoc 	VARCHAR(20)  	DEFAULT NULL,
  appln_nr_original 	VARCHAR(100) 	DEFAULT NULL,
  ipr_type 		VARCHAR(2)   	DEFAULT NULL,
  internat_appln_id 	INT   		DEFAULT 0,
  int_phase 		VARCHAR(1)   	DEFAULT NULL,
  reg_phase 		VARCHAR(1)   	DEFAULT NULL,
  nat_phase 		VARCHAR(1)   	DEFAULT NULL,
  earliest_filing_date 	DATE   		DEFAULT 0,
  earliest_filing_year 	INT   		DEFAULT 0,
  earliest_filing_id 	INT   		DEFAULT 0,
  earliest_publn_date 	DATE   		DEFAULT 0,
  earliest_publn_year 	INT   		DEFAULT 0,
  earliest_pat_publn_id INT   		DEFAULT 0,
  granted 		INT   		DEFAULT 0,
  docdb_family_id 	INT   		DEFAULT 0,
  inpadoc_family_id 	INT   		DEFAULT 0,
  docdb_family_size 	INT   		DEFAULT 0,
  nb_citing_docdb_fam 	INT   		DEFAULT 0,
  nb_applicants 	INT   		DEFAULT 0,
  nb_inventors 		INT   		DEFAULT 0
);


CREATE TABLE TLS204_APPLN_PRIOR
(
  appln_id 		INT 	DEFAULT 0,
  prior_appln_id 	INT 	DEFAULT 0,
  prior_appln_seq_nr 	INT 	DEFAULT 0
);


CREATE TABLE TLS207_PERS_APPLN
(
  PERSON_ID     INT  	DEFAULT 0,
  APPLN_ID      INT     DEFAULT 0,
  APPLT_SEQ_NR  INT     DEFAULT 0,
  INVT_SEQ_NR   INT     DEFAULT 0
);


CREATE TABLE TLS209_APPLN_IPC
(
  APPLN_ID          INT                 DEFAULT 0,
  IPC_CLASS_SYMBOL  VARCHAR(15) 	DEFAULT NULL,
  IPC_CLASS_LEVEL   VARCHAR(1) 		DEFAULT NULL,
  IPC_VERSION       DATE                DEFAULT 0,
  IPC_VALUE         VARCHAR(1)        	DEFAULT NULL,
  IPC_POSITION      VARCHAR(1)         	DEFAULT NULL,
  IPC_GENER_AUTH    VARCHAR(2)         	DEFAULT NULL
);


CREATE TABLE TLS216_APPLN_CONTN
(
  appln_id 		INT		DEFAULT 0,
  parent_appln_id 	INT		DEFAULT 0,
  contn_type 		VARCHAR(3) 	DEFAULT NULL
);


CREATE TABLE TLS231_INPADOC_LEGAL_EVENT
(
   appln_id   			INT    		DEFAULT 0,
   event_seq_nr   		INT    		DEFAULT 0,
   event_type   		VARCHAR(3)   	DEFAULT NULL,
   event_auth   		VARCHAR(2)   	DEFAULT NULL,
   event_code   		VARCHAR(4)    	DEFAULT NULL,
   event_publn_date   		DATE    	DEFAULT 0,
   event_effective_date 	DATE    	DEFAULT 0,
   event_text   		VARCHAR(1000)  	DEFAULT NULL,
   ref_doc_auth   		VARCHAR(2)   	DEFAULT NULL,
   ref_doc_nr   		VARCHAR(20)   	DEFAULT NULL,
   ref_doc_kind   		VARCHAR(2)   	DEFAULT NULL,
   ref_doc_date   		DATE    	DEFAULT 0,
   ref_doc_text   		VARCHAR(1000) 	DEFAULT NULL,
   party_type   		VARCHAR(3)   	DEFAULT NULL,
   party_seq_nr   		INT    		DEFAULT 0,
   party_new   			VARCHAR(1000) 	DEFAULT NULL,
   party_old   			VARCHAR(1000)  	DEFAULT NULL,
   spc_nr   			VARCHAR(40)   	DEFAULT NULL,
   spc_filing_date   		DATE    	DEFAULT 0,
   spc_patent_expiry_date   	DATE    	DEFAULT 0,
   spc_extension_date   	DATE    	DEFAULT 0,
   spc_text   			VARCHAR(1000)  	DEFAULT NULL,
   designated_states   		VARCHAR(1000)  	DEFAULT NULL,
   extension_states   		VARCHAR(30)   	DEFAULT NULL,
   fee_country   		VARCHAR(2)   	DEFAULT NULL,
   fee_payment_date   		DATE    	DEFAULT 0,
   fee_renewal_year   		INT    		DEFAULT 0,
   fee_text   			VARCHAR(1000)  	DEFAULT NULL,
   lapse_country   		VARCHAR(2)   	DEFAULT NULL,
   lapse_date   		DATE    	DEFAULT 0,
   lapse_text   		VARCHAR(1000)  	DEFAULT NULL,
   reinstate_country   		VARCHAR(2)   	DEFAULT NULL,
   reinstate_date   		DATE    	DEFAULT 0,
   reinstate_text   		VARCHAR(1000)  	DEFAULT NULL,
   class_scheme   		VARCHAR(4)   	DEFAULT NULL,
   class_symbol   		VARCHAR(50)   	DEFAULT NULL
);


CREATE TABLE TLS223_APPLN_DOCUS
(
  APPLN_ID            INT                 DEFAULT 0,
  DOCUS_CLASS_SYMBOL  VARCHAR(50)         DEFAULT NULL
);


CREATE TABLE TLS224_APPLN_CPC
(
  APPLN_ID          INT                   DEFAULT 0,
  CPC_CLASS_SYMBOL  VARCHAR(19)           DEFAULT NULL,
  CPC_SCHEME        VARCHAR(5)            DEFAULT NULL,
  CPC_VERSION       DATE                  DEFAULT 0,
  CPC_VALUE         VARCHAR(1)            DEFAULT NULL,
  CPC_POSITION      VARCHAR(1)            DEFAULT NULL,
  CPC_GENER_AUTH    VARCHAR(2)            DEFAULT NULL
);


CREATE TABLE TLS801_COUNTRY
(
  CTRY_CODE        VARCHAR(2)             DEFAULT NULL,
  ISO_ALPHA3       VARCHAR(3)             DEFAULT NULL,
  ST3_NAME         VARCHAR(100)           DEFAULT NULL,
  STATE_INDICATOR  VARCHAR(1)             DEFAULT NULL,
  CONTINENT        VARCHAR(25)            DEFAULT NULL,
  EU_MEMBER        VARCHAR(1)             DEFAULT NULL,
  EPO_MEMBER       VARCHAR(1)             DEFAULT NULL,
  OECD_MEMBER      VARCHAR(1)             DEFAULT NULL,
  DISCONTINUED     VARCHAR(1)             DEFAULT NULL
);


CREATE TABLE TLS803_LEGAL_EVENT_CODE
(
   event_auth   	VARCHAR(2)   	DEFAULT NULL,
   event_code   	VARCHAR(4)   	DEFAULT NULL,
   event_impact   	VARCHAR(1)   	DEFAULT NULL,
   event_descr   	VARCHAR(250)   	DEFAULT NULL,
   event_descr_orig   	VARCHAR(250)   	DEFAULT NULL,
   lecg_name   		VARCHAR(6)   	DEFAULT NULL,
   lecg_descr   	VARCHAR(250)   	DEFAULT NULL
);


CREATE TABLE  TLS906_PERSON
(
  PERSON_ID         INT                   DEFAULT 0,
  PERSON_NAME       VARCHAR(500)          DEFAULT NULL,
  PERSON_ADDRESS    VARCHAR(1000)         DEFAULT NULL,
  PERSON_CTRY_CODE  VARCHAR(2)            DEFAULT NULL,
  NUTS              VARCHAR(5)            DEFAULT NULL,
  NUTS_LEVEL        INT(1)                DEFAULT 9,
  DOC_STD_NAME_ID   INT                   DEFAULT 0,
  DOC_STD_NAME      VARCHAR(500)          DEFAULT NULL,
  PSN_ID            INT                   DEFAULT 0,
  PSN_NAME          VARCHAR(500)          DEFAULT NULL,
  PSN_LEVEL         INT(1)                DEFAULT 0,
  PSN_SECTOR        VARCHAR(50)           DEFAULT NULL,
  HAN_ID            INT                   DEFAULT 0,
  HAN_NAME          VARCHAR(500)          DEFAULT NULL,
  HAN_HARMONIZED    INT                   DEFAULT 0
);

.mode csv
.separator ","
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls201_part01.txt TLS201_APPLN
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls201_part02.txt TLS201_APPLN
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls201_part03.txt TLS201_APPLN
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls201_part04.txt TLS201_APPLN
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls201_part05.txt TLS201_APPLN
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls201_part06.txt TLS201_APPLN
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls201_part07.txt TLS201_APPLN
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls201_part08.txt TLS201_APPLN
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls201_part09.txt TLS201_APPLN

.import E:\\PatStat\\PatStat\\Data\\Tables\\tls204_part01.txt TLS204_APPLN_PRIOR

.import E:\\PatStat\\PatStat\\Data\\Tables\\tls207_part01.txt TLS207_PERS_APPLN
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls207_part02.txt TLS207_PERS_APPLN
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls207_part03.txt TLS207_PERS_APPLN

.import E:\\PatStat\\PatStat\\Data\\Tables\\tls209_part01.txt TLS209_APPLN_IPC
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls209_part02.txt TLS209_APPLN_IPC
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls209_part03.txt TLS209_APPLN_IPC
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls209_part04.txt TLS209_APPLN_IPC
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls209_part05.txt TLS209_APPLN_IPC
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls209_part06.txt TLS209_APPLN_IPC
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls209_part07.txt TLS209_APPLN_IPC

.import E:\\PatStat\\PatStat\\Data\\Tables\\tls216_part01.txt TLS216_APPLN_CONTN

.import E:\\PatStat\\PatStat\\Data\\Tables\\tls223_part01.txt TLS223_APPLN_DOCUS

.import E:\\PatStat\\PatStat\\Data\\Tables\\tls224_part01.txt TLS224_APPLN_CPC
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls224_part02.txt TLS224_APPLN_CPC
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls224_part03.txt TLS224_APPLN_CPC
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls224_part04.txt TLS224_APPLN_CPC
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls224_part05.txt TLS224_APPLN_CPC
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls224_part06.txt TLS224_APPLN_CPC
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls224_part07.txt TLS224_APPLN_CPC

.import E:\\PatStat\\PatStat\\Data\\Tables\\tls801_part01.txt TLS801_COUNTRY

.import E:\\PatStat\\PatStat\\Data\\Tables\\tls906_part01.txt TLS906_PERSON
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls906_part02.txt TLS906_PERSON
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls906_part03.txt TLS906_PERSON
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls906_part04.txt TLS906_PERSON
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls906_part05.txt TLS906_PERSON

.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part01.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part02.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part03.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part04.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part05.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part06.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part07.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part08.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part09.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part10.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part11.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part12.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part13.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part14.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part15.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part16.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part17.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part18.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part19.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part20.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part21.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part22.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part23.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part24.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part25.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part26.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part27.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part28.txt TLS231_INPADOC_LEGAL_EVENT
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls231_part29.txt TLS231_INPADOC_LEGAL_EVENT

.import E:\\PatStat\\PatStat\\Data\\Tables\\tls803_part01.txt TLS803_LEGAL_EVENT_CODE

CREATE INDEX IDX_TLS201_APPLN_appln_id ON TLS201_APPLN
(appln_id);

CREATE INDEX IDX_TLS201_APPLN_appln_nr ON TLS201_APPLN
(appln_nr);

CREATE INDEX IDX_TLS201_APPLN_appln_nr_original ON TLS201_APPLN
(appln_nr_original);

CREATE INDEX IDX_TLS201_APPLN_docdb_family_id ON TLS201_APPLN
(docdb_family_id);

CREATE INDEX IDX_TLS201_APPLN_inpadoc_family_id ON TLS201_APPLN
(inpadoc_family_id);


CREATE INDEX IDX_TLS204_APPLN_PRIOR_appln_id ON TLS204_APPLN_PRIOR
(appln_id);

CREATE INDEX IDX_TLS204_APPLN_PRIOR_prior_appln_id ON TLS204_APPLN_PRIOR
(prior_appln_id);


CREATE INDEX IDX_TLS207_PERS_APPLN_ID ON TLS207_PERS_APPLN
(APPLN_ID);

CREATE INDEX IDX_TLS207_PERS_APPLN_PID ON TLS207_PERS_APPLN
(PERSON_ID);


CREATE INDEX IDX_TLS209_APPLN_APPLN_ID ON TLS209_APPLN_IPC
(APPLN_ID);

CREATE INDEX IDX_TLS209_APPLN_IPC_CSYMBOL ON TLS209_APPLN_IPC
(IPC_CLASS_SYMBOL);


CREATE INDEX IDX_TLS216_APPLN_CONTN_appln_id ON TLS216_APPLN_CONTN
(appln_id);

CREATE INDEX IDX_TLS216_APPLN_CONTN_parent_appln_id ON TLS216_APPLN_CONTN
(parent_appln_id);


CREATE INDEX IDX_TLS231_INPADOC_LEGAL_EVENT_appln_id ON TLS231_INPADOC_LEGAL_EVENT
(appln_id);

CREATE INDEX IDX_TLS231_INPADOC_LEGAL_EVENT_event_seq_nr ON TLS231_INPADOC_LEGAL_EVENT
(event_seq_nr);


CREATE INDEX IDX_TLS223_APPLN_DOCUS_SYMBOL ON TLS223_APPLN_DOCUS
(DOCUS_CLASS_SYMBOL);


CREATE INDEX TLS207_PK ON TLS207_PERS_APPLN
(PERSON_ID, APPLN_ID, APPLT_SEQ_NR, INVT_SEQ_NR);


CREATE INDEX TLS209_PK ON TLS209_APPLN_IPC
(APPLN_ID, IPC_CLASS_SYMBOL);


CREATE UNIQUE INDEX TLS223_PK ON TLS223_APPLN_DOCUS
(APPLN_ID, DOCUS_CLASS_SYMBOL);


CREATE INDEX TLS224_PK ON TLS224_APPLN_CPC
(APPLN_ID, CPC_CLASS_SYMBOL, CPC_SCHEME);


CREATE UNIQUE INDEX TLS801_PK ON TLS801_COUNTRY
(CTRY_CODE);


CREATE INDEX IDX_TLS803_event_auth ON TLS803_LEGAL_EVENT_CODE
(event_auth);

CREATE INDEX IDX_TLS803_event_code ON TLS803_LEGAL_EVENT_CODE
(event_code);


CREATE INDEX TLS906_PK ON TLS906_PERSON
(PERSON_ID);

CREATE INDEX IDX_TLS906_PERSON_CTY ON TLS906_PERSON
(PERSON_CTRY_CODE);
