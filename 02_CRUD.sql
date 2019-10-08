CREATE TABLE classmates(
    name TEXT,
    age INT,
    address TEXT
);

-- CREATE
INSERT INTO classmates (name, age, address)
VALUES ('양선', 29, '광주');

-- 확인
SELECT * FROM classmates;

-- create
INSERT INTO classmates (name, address)
VALUES ('양선', '광주');

-- 확인
SELECT * FROM classmates;

INSERT INTO classmates
VALUES ('홍길동', 30, '서울');

SELECT rowid, * FROM classmates;

DROP TABLE classmates;

.tables

CREATE TABLE classmates(
name TEXT NOT NULL,
age INT NOT NULL,
address TEXT NOT NULL
);

INSERT INTO classmates VALUES 
('홍길동', 30, '서울'), 
('김철수', 23, '대전'),
('박나래', 23, '광주'), 
('이요셉', 33, '구미');
-- SELECT rowid, * FROM classmates;

-- 특정칼럼 가져오기
SELECT rowid, name FROM classmates;
-- LIMIT
SELECT rowid, name FROM classmates LIMIT 1;
-- OFFSET
SELECT rowid, name FROM classmates LIMIT 1 OFFSET 2;
-- WHERE
SELECT rowid, name FROM classmates WHERE address='서울';

-- 전체
SELECT * FROM classmates;
-- 중복 제거
SELECT DISTINCT age FROM classmates;

-- 삭제
DELETE FROM classmates WHERE rowid=4;
INSERT INTO classmates VALUES ('강호동', 30, '광주');
SELECT * FROM classmates;

-- 업데이트
UPDATE classmates
SET name='홍길동', address='제주도'
WHERE rowid=4;
SELECT * FROM classmates;

DROP TABLE classmates;