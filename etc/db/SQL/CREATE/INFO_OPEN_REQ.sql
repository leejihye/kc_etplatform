CREATE TABLE `INFO_OPEN_REQ` (
`user_id`	CHAR(48)	NOT NULL COMMENT	'요청ID',
`inst_cd`	CHAR(5)	NOT NULL COMMENT	'기관구분코드',
`inst_name`	VARCHAR(40)	NOT NULL COMMENT	'기관명',
`user_name`	VARCHAR(40)	NOT NULL COMMENT	'사용자명',
`idx_sym_code`	VARCHAR(16)	NOT NULL COMMENT 	'기초지수심볼코드',
`idx_nm`	VARCHAR(100) NOT NULL COMMENT 	'기초지수명',
`req_date`	CHAR(8) NOT NULL COMMENT 	'신청일자',
`req_process_yn`	CHAR(1)	NOT NULL DEFAULT 'N' 	COMMENT 	'요청승인여부',
PRIMARY KEY (`inst_type_cd`, `inst_cd`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='INFO_OPEN_REQ';