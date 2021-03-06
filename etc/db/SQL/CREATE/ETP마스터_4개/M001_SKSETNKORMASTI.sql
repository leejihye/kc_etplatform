CREATE TABLE `M001_SKSETNKORMASTI` (
`ISIN_CODE`	CHAR(12)	COMMENT 	'종목코드',
`ISU_SRT_CD`	VARCHAR(9)	COMMENT 	'종목단축코드',
`ISU_KOR_ABBRV`	VARCHAR(40)	COMMENT 	'종목한글약명',
`NAME_K`	VARCHAR(50)	COMMENT 	'한글명',
`UPD_DATE`	CHAR(8)	COMMENT 	'업데이트일자',
`SYM_CODE`	CHAR(16)	COMMENT 	'심블코드',
`TABLE_NAME`	VARCHAR(40)	COMMENT 	'테이블명',
`R_UP_PCMKT_ID`	NUMERIC(4)	COMMENT 	'ETF관련업종PC시장ID(R_F18424)',
`R_ETF_RATE`	NUMERIC(10)	COMMENT 	'해외_신종ETN배율(R_F18453)',
`R_INDEX_MID`	NUMERIC(5)	COMMENT 	'ETN기초지수MID(R_F34239)',
`DEL_CD`	NUMERIC(1)	COMMENT 	'삭제구분',
`REFIDX_MID`	NUMERIC(3)	COMMENT 	'참고지수MID',
`REFIDX_CODE`	VARCHAR(15)	COMMENT 	'참고지수코드',
`ETP_IDX_YN`	CHAR(1)	COMMENT 	'ETP기초지수제공여부',
PRIMARY KEY (`ISIN_CODE`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='M001_SKSETNKORMASTI';