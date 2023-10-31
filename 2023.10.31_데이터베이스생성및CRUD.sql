
-- 데이터베이스 생성
CREATE SCHEMA `shop_db`;

-- 데이터베이스 사용
use shop_db;

-- 테이블 생성

create table  `member`(
    `member_id` CHAR(8) NOT NULL,
    `member_name` CHAR(5) NOT NULL,
    `member_add` CHAR(20)  NULL,
    PRIMARY KEY(`member_id`)
);

create table  `product`(
    `product_name` CHAR(4) NOT NULL,
    `cost` INT NOT NULL,
    `make_date` DATE  NULL,
    `company` CHAR(5) NULL,
    `amount` INT NOT NULL,
    PRIMARY KEY(`product_name`)
);

-- 데이터 입력하기(CREATE)
INSERT INTO `member`(`member_id`, `member_name`, `member_add`)
VALUES('hero', '임영웅', '서울 은평구 증산동')

INSERT INTO `member`(`member_id`, `member_name`, `member_add`)
VALUES('iyou', '아이유', '인천 남구 주안동');

INSERT INTO `member`(`member_id`, `member_name`, `member_add`)
VALUES('jyp', '박진영', '경기 고양시 장항동');

INSERT INTO `member`(`member_id`, `member_name`, `member_add`)
VALUES('tess', '나훈아', '경기 부천시 중동');

INSERT INTO `product`(`product_name`, `cost`, `make_date`, `company`, `amount`)
VALUES('바나나', '1500', '2021-07-01','델몬트',17);

INSERT INTO `product`(`product_name`, `cost`, `make_date`, `company`, `amount`)
VALUES('카스', '2500', '2022-03-01','OB',3);


INSERT INTO `product`(`product_name`, `cost`, `make_date`, `company`, `amount`)
VALUES('삼각김밥', '800', '2023-09-01','CJ',22);

INSERT INTO `member`(`member_id`, `member_name`, `member_add`)
VALUES('carry', '머라이어', '미국 텍사스 사막');


-- 업데이트

UPDATE `member` SET `member_add` =  '영국 런던 먹자골목' WHERE member_id = 'carry';


-- 데이터 삭제
DELETE FROM `member` WHERE (member_id = 'carry');

-- 데이터 활용(조회)
-- 전체 조회
SELECT * FROM member;

-- 부분 열 조회
SELECT member_id, member_name FROM member;

-- 조건 조회
SELECT * FROM member WHERE member_name = '아이유';
