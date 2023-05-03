-- Q. card 테이블에서 사용금액의 평균보다 더 큰  사용금액을 가진 사람만 출력

SELECT AVG(사용금액) FROM card;
-- 1. 사용금액의 평균을 구해서

SELECT * FROM card WHERE 사용금액 > 245000;
-- 2. 사용금액 > 평균인 행 출력

SELECT * FROM card
WHERE 사용금액 > (SELECT AVG(사용금액) FROM card);

-- 문자나  숫자가 들어갈 곳에 서브쿼리를 넣을 수 있기 때문에
-- 단일 값을 반환하는 SELECT문만 서브쿼리로 넣을 수 있다

-- 컬렴명에서 사칙연산 가능
-- 사칙연산에서 서브쿼리 가능
-- SELECT 사용금액 / 245000 FROM card;
-- SELECT 사용금액 / (평균금액구하는 SELECT 문법) FROM card;

SELECT 고객명, (SELECT AVG(사용금액) FROM card) FROM card;
-- 이런 것도 가능

CREATE TABLE blackList (
    이름 VARCHAR(100)
);

INSERT INTO blackList
VALUES('Pristine');

INSERT INTO blackList
VALUES('George');

INSERT INTO blackList
VALUES('Amy');

-- Q. card 테이블에서 블랙리스트 회원들의 사용금액을 출력
SELECT 사용금액 FROM card 
WHERE 고객명 IN ('Pristine', 'George', 'Amy');

SELECT 사용금액 FROM card
WHERE IN (SELECT 이름 FROM blackList);

-- Q. "고객등급이 패밀리인 사람들의 평균 연체횟수"보다 연체횟수가 높은 사람 수
SELECT COUNT(*) FROM card
WHERE 연체횟수 > (SELECT AVG(연체횟수) FROM card WHERE 고객등급 = '패밀리');

-- Q. 캡처7-1.png 처럼 사용금액이 평균사용금액과 얼마나 차이 나는지 출력
SELECT 고객명, 사용금액,
사용금액 - (SELECT AVG(사용금액) FROM card) AS DIFF
FROM card;