CREATE TABLE `INDEX_HIST` (
`index_cd`	VARCHAR(20)	NOT NULL COMMENT	'INDEX코드',
`trd_dd`	CHAR(10)	NOT NULL COMMENT	'날짜 : 0000/00/00',
`open_idx`	DECIMAL(9,2) COMMENT	'시가',
`high_idx`	DECIMAL(9,2) COMMENT	'고가',
`low_idx`	DECIMAL(9,2) COMMENT	'저가',
`close_idx`	DECIMAL(9,2)	NOT NULL COMMENT	'종가',
`fluc_idx`	DECIMAL(7,2)	COMMENT	'전일대비',
`fluc_rate`	DECIMAL(5,2)	COMMENT	'등락률',
`fluc_type`	CHAR(1) COMMENT	'등락구분 1:상승 2:하락',
`trdvol`	BIGINT	COMMENT	'거래량',
`trdval`	BIGINT	COMMENT	'거래대금',
PRIMARY KEY (`index_cd`,`trd_dd`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='INDEX_HIST';