CREATE TABLE `COMMON_CODE` (
`cmm_cd`	CHAR(6)	NOT NULL COMMENT	'기관분류코드',
`inst_type_cd`	CHAR(4)	NOT NULL COMMENT	'기관분류코드',
`inst_type_name`	VARCHAR(40)	NOT NULL COMMENT	'기관분류명명',
PRIMARY KEY (`cmm_cd`,`inst_type_cd`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='COMMON_CODE';