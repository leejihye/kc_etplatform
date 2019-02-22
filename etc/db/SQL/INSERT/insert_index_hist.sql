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

INSERT INTO [table] SELECT * FROM [table] WHERE [조건];

INSERT INTO [table] (column1, colum2, colum3) SELECT column1, colum2, colum3 FROM [table] WHERE [조건];

INSERT INTO INDEX_HIST SELECT 'DBF001', trd_dd, open_idx, high_idx, low_idx, close_idx, fluc_idx, fluc_rate, fluc_type, trdvol, trdval 
FROM INDEX_HIST WHERE trd_dd > '2017' AND trd_dd < '2020' AND index_cd = 'K051';

INSERT INTO INDEX_HIST SELECT 'DBF002', trd_dd, open_idx, high_idx, low_idx, close_idx, fluc_idx, fluc_rate, fluc_type, trdvol, trdval 
FROM INDEX_HIST WHERE trd_dd > '2017' AND trd_dd < '2020' AND index_cd = 'K051';

INSERT INTO INDEX_HIST SELECT 'DBF003', trd_dd, open_idx, high_idx, low_idx, close_idx, fluc_idx, fluc_rate, fluc_type, trdvol, trdval 
FROM INDEX_HIST WHERE trd_dd > '2017' AND trd_dd < '2020' AND index_cd = 'K051';

INSERT INTO INDEX_HIST SELECT 'DBF004', trd_dd, open_idx, high_idx, low_idx, close_idx, fluc_idx, fluc_rate, fluc_type, trdvol, trdval 
FROM INDEX_HIST WHERE trd_dd > '2017' AND trd_dd < '2020' AND index_cd = 'K051';

INSERT INTO INDEX_HIST SELECT 'DBF005', trd_dd, open_idx, high_idx, low_idx, close_idx, fluc_idx, fluc_rate, fluc_type, trdvol, trdval 
FROM INDEX_HIST WHERE trd_dd > '2017' AND trd_dd < '2020' AND index_cd = 'K051';

INSERT INTO INDEX_HIST SELECT 'DBF006', trd_dd, open_idx, high_idx, low_idx, close_idx, fluc_idx, fluc_rate, fluc_type, trdvol, trdval 
FROM INDEX_HIST WHERE trd_dd > '2017' AND trd_dd < '2020' AND index_cd = 'K051';

INSERT INTO INDEX_HIST SELECT 'DBF007', trd_dd, open_idx, high_idx, low_idx, close_idx, fluc_idx, fluc_rate, fluc_type, trdvol, trdval 
FROM INDEX_HIST WHERE trd_dd > '2017' AND trd_dd < '2020' AND index_cd = 'K051';

INSERT INTO INDEX_HIST SELECT 'DBF008', trd_dd, open_idx, high_idx, low_idx, close_idx, fluc_idx, fluc_rate, fluc_type, trdvol, trdval 
FROM INDEX_HIST WHERE trd_dd > '2017' AND trd_dd < '2020' AND index_cd = 'K051';

INSERT INTO INDEX_HIST SELECT 'DBF009', trd_dd, open_idx, high_idx, low_idx, close_idx, fluc_idx, fluc_rate, fluc_type, trdvol, trdval 
FROM INDEX_HIST WHERE trd_dd > '2017' AND trd_dd < '2020' AND index_cd = 'K051';

INSERT INTO INDEX_HIST SELECT 'DBF010', trd_dd, open_idx, high_idx, low_idx, close_idx, fluc_idx, fluc_rate, fluc_type, trdvol, trdval 
FROM INDEX_HIST WHERE trd_dd > '2017' AND trd_dd < '2020' AND index_cd = 'K051';

INSERT INTO INDEX_HIST SELECT 'DBF011', trd_dd, open_idx, high_idx, low_idx, close_idx, fluc_idx, fluc_rate, fluc_type, trdvol, trdval 
FROM INDEX_HIST WHERE trd_dd > '2017' AND trd_dd < '2020' AND index_cd = 'K051';

