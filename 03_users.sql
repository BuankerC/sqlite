.mode csv
.import users.csv users
.headers on
.tables

-- 전체 출력
-- SELECT * FROM users;

-- 나이가 30 이상인 사람
-- SELECT * FROM users WHERE age >= 30;

-- 나이가 30 이상인 사람의 이름
-- SELECT first_name FROM users WHERE age >= 30;

-- 나이가 30 이상이고 성이 김인 사람의 성과 나이
-- SELECT last_name, age FROM users WHERE age >= 30 and last_name='김';

-- users의 총 갯수
-- SELECT COUNT(*) FROM users;

-- 나이가 30 이상이고 성이 김인 사람의 수
-- SELECT COUNT(*) FROM users WHERE age >= 30 and last_name='김';

-- 30살 이상인 사람의 나이 평균
-- SELECT AVG(age) FROM users WHERE age >= 30;

-- 계좌 잔액(balance)이 가장 높은 사람과 액수
-- SELECT first_name, MAX(balance) FROM users; 

-- 30살 이상인 사람의 평균 잔액
-- SELECT AVG(balance) FROM users WHERE age >= 30;

-- .schema users;

-- 20대인 사람이 몇명?
-- SELECT COUNT(*) FROM users
-- WHERE age LIKE '2_';

-- 지역번호가 02인 사람
-- SELECT COUNT(*) FROM users WHERE phone LIKE '02-%'; 

-- 이름이 '준'으로 끝나는 사람
-- SELECT COUNT(*) FROM users WHERE first_name LIKE '%준';

-- 중간번호가 5114인 사람
-- SELECT COUNT(*) FROM users WHERE phone LIKE '%-5114-%';

-- 나이 순으로 오름차순 정렬하여 상위 10개
-- SELECT * FROM users ORDER BY age ASC LIMIT 10;
-- SELECT age FROM users ORDER BY age DESC LIMIT 10;

-- 나이순, 성 순으로 오름차순 정렬하여 상위 10개
-- SELECT * FROM users ORDER BY age, last_name ASC LIMIT 10;

-- 계좌잔액 순으로 내림차순 정렬하여 해당하는 사람이름 10개
SELECT last_name, first_name FROM users ORDER BY balance DESC LIMIT 10;

DROP TABLE users;