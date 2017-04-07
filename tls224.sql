DROP TABLE IF EXISTS TLS224_APPLN_CPC;

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

.mode csv
.separator ","
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls224_part01.txt TLS224_APPLN_CPC
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls224_part02.txt TLS224_APPLN_CPC
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls224_part03.txt TLS224_APPLN_CPC
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls224_part04.txt TLS224_APPLN_CPC
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls224_part05.txt TLS224_APPLN_CPC
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls224_part06.txt TLS224_APPLN_CPC
.import E:\\PatStat\\PatStat\\Data\\Tables\\tls224_part07.txt TLS224_APPLN_CPC