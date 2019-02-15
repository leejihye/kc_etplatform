CREATE TABLE `INFO_OPEN_REQ` (
`user_id`	CHAR(48)	NOT NULL COMMENT	'요청ID',
`inst_cd`	CHAR(5)	NOT NULL COMMENT	'기관구분코드',
`inst_name`	VARCHAR(40)	NOT NULL COMMENT	'기관명',
`user_name`	VARCHAR(40)	NOT NULL COMMENT	'사용자명',
`idx_sym_code`	VARCHAR(16)	NOT NULL COMMENT 	'기초지수심볼코드',
`idx_nm`	VARCHAR(100) NOT NULL COMMENT 	'기초지수명',
`req_date`	CHAR(8) NOT NULL COMMENT 	'신청일자',
`req_process_yn`	CHAR(1)	NOT NULL DEFAULT 'N' 	COMMENT 	'요청승인여부',
PRIMARY KEY (`user_id`, `inst_cd`, `idx_sym_code`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='INFO_OPEN_REQ';


INSERT INTO INFO_OPEN_REQ (user_id,inst_cd,inst_name,user_name,idx_sym_code,idx_nm,req_date,req_process_yn)
VALUES
('test_0001', '03068', '한화자산운용', 'Part Jun Su', 'DBF001', 'DBF 4차산업혁명 지수 테스트', '20190215', 'Y'),
('test_0001', '03068', '한화자산운용', 'Part Jun Su', 'DBF002', 'DBF 트럼프 테마 지수 테스트', '20190215', 'N'),
('test_0001', '03068', '한화자산운용', 'Part Jun Su', 'DBF003', 'DBF 오바마 테마 지수 테스트', '20190214', 'Y'),
('test_0001', '03068', '한화자산운용', 'Part Jun Su', 'DBF004', 'DBF 문재인 테마 지수 테스트', '20190213', 'Y'),
('test_0001', '03068', '한화자산운용', 'Part Jun Su', 'DBF005', 'DBF 시베리아 횡단 철도 지수 테스트', '20190212', 'Y'),
('test_0001', '03068', '한화자산운용', 'Part Jun Su', 'DBF006', 'DBF 진도항 개발 지수 테스트', '20190211', 'Y'),
('test_0001', '03068', '한화자산운용', 'Part Jun Su', 'DBF007', 'DBF 위안화 절상 지수 테스트', '20190115', 'N'),
('test_0001', '03068', '한화자산운용', 'Part Jun Su', 'DBF008', 'DBF 출산률 급등 지수 테스트', '20180215', 'Y'),
('test_0001', '03068', '한화자산운용', 'Part Jun Su', 'DBF009', 'DBF 내일은 없다 지수 테스트', '20180215', 'Y'),
('test_0001', '03068', '한화자산운용', 'Part Jun Su', 'DBF010', 'DBF 이정재 대박 지수 테스트', '20180215', 'Y'),
('test_0001', '03068', '한화자산운용', 'Part Jun Su', 'DBF011', 'DBF 안지현 화이팅 지수 테스트', '20180215', 'Y'),
('test_0002', '03632', '미래에셋자산운용', 'Kim Sang Yong', 'DBF001', 'DBF 4차산업혁명 지수 테스트', '20190215', 'Y'),
('test_0002', '03632', '미래에셋자산운용', 'Kim Sang Yong', 'DBF002', 'DBF 트럼프 테마 지수 테스트', '20190215', 'N'),
('test_0002', '03632', '미래에셋자산운용', 'Kim Sang Yong', 'DBF003', 'DBF 오바마 테마 지수 테스트', '20190214', 'Y'),
('test_0002', '03632', '미래에셋자산운용', 'Kim Sang Yong', 'DBF004', 'DBF 문재인 테마 지수 테스트', '20190213', 'Y'),
('test_0002', '03632', '미래에셋자산운용', 'Kim Sang Yong', 'DBF005', 'DBF 시베리아 횡단 철도 지수 테스트', '20190212', 'Y'),
('test_0002', '03632', '미래에셋자산운용', 'Kim Sang Yong', 'DBF006', 'DBF 진도항 개발 지수 테스트', '20190211', 'Y'),
('test_0002', '03632', '미래에셋자산운용', 'Kim Sang Yong', 'DBF007', 'DBF 위안화 절상 지수 테스트', '20190115', 'N'),
('test_0002', '03632', '미래에셋자산운용', 'Kim Sang Yong', 'DBF008', 'DBF 출산률 급등 지수 테스트', '20180215', 'Y'),
('test_0002', '03632', '미래에셋자산운용', 'Kim Sang Yong', 'DBF009', 'DBF 내일은 없다 지수 테스트', '20180215', 'Y'),
('test_0002', '03632', '미래에셋자산운용', 'Kim Sang Yong', 'DBF010', 'DBF 이정재 대박 지수 테스트', '20180215', 'Y'),
('test_0002', '03632', '미래에셋자산운용', 'Kim Sang Yong', 'DBF011', 'DBF 안지현 화이팅 지수 테스트', '20180215', 'Y');
