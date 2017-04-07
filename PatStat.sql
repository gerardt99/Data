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
  IPC_CLASS_SYMBOL  VARCHAR2(15) 	DEFAULT NULL,
  IPC_CLASS_LEVEL   VARCHAR2(1) 	DEFAULT NULL,
  IPC_VERSION       DATE                DEFAULT 0,
  IPC_VALUE         VARCHAR2(1)        	DEFAULT NULL,
  IPC_POSITION      VARCHAR2(1)         DEFAULT NULL,
  IPC_GENER_AUTH    VARCHAR2(2)         DEFAULT NULL
);


CREATE TABLE TLS221_INPADOC_PRS
(
  APPLN_ID          INT                    DEFAULT 0,
  PRS_EVENT_SEQ_NR  INT                    DEFAULT 0,
  PRS_GAZETTE_DATE  DATE                   DEFAULT 0,
  PRS_CODE          VARCHAR2(4)            DEFAULT NULL,
  L501EP            VARCHAR2(2)            DEFAULT NULL,
  L502EP            VARCHAR2(4)            DEFAULT NULL,
  LEC_ID            INT                    DEFAULT 0,
  L503EP            VARCHAR2(20)           DEFAULT NULL,
  L504EP            VARCHAR2(2)            DEFAULT NULL,
  L505EP            DATE                   DEFAULT 0,
  L506EP            VARCHAR2(2)            DEFAULT NULL,
  L507EP            VARCHAR2(300)          DEFAULT NULL,
  L508EP            VARCHAR2(20)           DEFAULT NULL,
  L509EP            VARCHAR2(255)          DEFAULT NULL,
  L510EP            VARCHAR2(700)          DEFAULT NULL,
  L511EP            VARCHAR2(20)           DEFAULT NULL,
  L512EP            DATE                   DEFAULT 0,
  L513EP            DATE                   DEFAULT 0,
  L515EP            VARCHAR2(255)          DEFAULT NULL,
  L516EP            VARCHAR2(50)           DEFAULT NULL,
  L517EP            VARCHAR2(255)          DEFAULT NULL,
  L518EP            DATE                   DEFAULT 0,
  L519EP            VARCHAR2(255)          DEFAULT NULL,
  L520EP            INT                    DEFAULT 0,
  L522EP            VARCHAR2(255)          DEFAULT NULL,
  L523EP            DATE                   DEFAULT 0,
  L524EP            VARCHAR2(100)          DEFAULT NULL,
  L525EP            DATE                   DEFAULT 0
);


CREATE TABLE TLS223_APPLN_DOCUS
(
  APPLN_ID            INT                  DEFAULT 0,
  DOCUS_CLASS_SYMBOL  VARCHAR2(50)         DEFAULT NULL
);


CREATE TABLE TLS224_APPLN_CPC
(
  APPLN_ID          INT                    DEFAULT 0,
  CPC_CLASS_SYMBOL  VARCHAR2(19)           DEFAULT NULL,
  CPC_SCHEME        VARCHAR2(5)            DEFAULT NULL,
  CPC_VERSION       DATE                   DEFAULT 0,
  CPC_VALUE         VARCHAR2(1)            DEFAULT NULL,
  CPC_POSITION      VARCHAR2(1)            DEFAULT NULL,
  CPC_GENER_AUTH    VARCHAR2(2)            DEFAULT NULL
);


CREATE TABLE TLS801_COUNTRY
(
  CTRY_CODE        VARCHAR2(2)             DEFAULT NULL,
  ISO_ALPHA3       VARCHAR2(3)             DEFAULT NULL,
  ST3_NAME         VARCHAR2(100)           DEFAULT NULL,
  STATE_INDICATOR  VARCHAR2(1)             DEFAULT NULL,
  CONTINENT        VARCHAR2(25)            DEFAULT NULL,
  EU_MEMBER        VARCHAR2(1)             DEFAULT NULL,
  EPO_MEMBER       VARCHAR2(1)             DEFAULT NULL,
  OECD_MEMBER      VARCHAR2(1)             DEFAULT NULL,
  DISCONTINUED     VARCHAR2(1)             DEFAULT NULL
);


CREATE TABLE TLS802_LEGAL_EVENT_CODE
(
  LEC_ID        INT                        DEFAULT 0,
  AUTH_CC       VARCHAR2(2)                DEFAULT NULL,
  LEC_NAME      VARCHAR2(4)                DEFAULT NULL,
  NAT_AUTH_CC   VARCHAR2(2)                DEFAULT NULL,
  NAT_LEC_NAME  VARCHAR2(4)                DEFAULT NULL,
  IMPACT        VARCHAR2(1)                DEFAULT NULL,
  LEC_DESCR     VARCHAR2(250)              DEFAULT NULL,
  LECG_ID       INT                        DEFAULT 0,
  LECG_NAME     VARCHAR2(6)                DEFAULT NULL,
  LECG_DESCR    VARCHAR2(150)              DEFAULT NULL
);


CREATE TABLE  TLS906_PERSON
(
  PERSON_ID         INT                    DEFAULT 0,
  PERSON_NAME       VARCHAR2(500)          DEFAULT NULL,
  PERSON_ADDRESS    VARCHAR2(1000)         DEFAULT NULL,
  PERSON_CTRY_CODE  VARCHAR2(2)            DEFAULT NULL,
  NUTS              VARCHAR2(5)            DEFAULT NULL,
  NUTS_LEVEL        INT(1)                 DEFAULT 9,
  DOC_STD_NAME_ID   INT                    DEFAULT 0,
  DOC_STD_NAME      VARCHAR2(500)          DEFAULT NULL,
  PSN_ID            INT                    DEFAULT 0,
  PSN_NAME          VARCHAR2(500)          DEFAULT NULL,
  PSN_LEVEL         INT(1)                 DEFAULT 0,
  PSN_SECTOR        VARCHAR2(50)           DEFAULT NULL,
  HAN_ID            INT                    DEFAULT 0,
  HAN_NAME          VARCHAR2(500)          DEFAULT NULL,
  HAN_HARMONIZED    INT                    DEFAULT 0
);

.mode csv
.separator ","
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
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls906_part06.txt TLS906_PERSON
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part01.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part02.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part03.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part04.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part05.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part06.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part07.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part08.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part09.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part10.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part11.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part12.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part13.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part14.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part15.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part16.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part17.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part18.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part19.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part20.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part21.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part22.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part23.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part24.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part25.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part26.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part27.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part28.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part29.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part30.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part31.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part32.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part33.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part34.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part35.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part36.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part37.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part38.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part39.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part40.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part41.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls221_part42.txt TLS221_INPADOC_PRS
.import E:\\PatStat\\Legal_Status\\Data\\tls802_part01.txt TLS802_LEGAL_EVENT_CODE



