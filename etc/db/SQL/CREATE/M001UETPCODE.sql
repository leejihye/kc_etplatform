CREATE TABLE `M001UETPCODE` (
`l_cd`	CHAR(3) COMMENT	'대분류코드',
`l_cd_nm`	VARCHAR(30)		COMMENT	'대분류코드명',
`m_cd`	CHAR(4)	COMMENT	'중분류코드',
`m_cd_nm`	VARCHAR(512)		COMMENT	'중문류코드명',
PRIMARY KEY (`l_cd`, `m_cd`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='M001UETPCODE';