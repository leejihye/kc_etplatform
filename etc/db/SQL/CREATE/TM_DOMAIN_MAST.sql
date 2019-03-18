CREATE TABLE `TM_DOMAIN_MAST` (
`inst_type_cd`	CHAR(4)	NOT NULL COMMENT	'기관분류코드',
`inst_type_name`	VARCHAR(40)	NOT NULL COMMENT	'기관분류명명',
`inst_cd`	CHAR(5)	NOT NULL COMMENT	'기관구분코드',
`inst_name`	VARCHAR(40)	NOT NULL COMMENT	'기관명',
`domain`	VARCHAR(40)	COMMENT	'도메인명',
PRIMARY KEY (`inst_type_cd`, `inst_cd`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='TM_DOMAIN_MAST';