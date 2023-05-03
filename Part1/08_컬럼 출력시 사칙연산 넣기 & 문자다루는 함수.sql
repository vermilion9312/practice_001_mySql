SELECT 사용금액 * 0.9 FROM card;
-- 부가세 10%를 제한금액 출력

SELECT 사용금액 * 0.9 AS 부가세제외, 연체횟수 + 100 FROM card;

SELECT 사용금액 / 결제횟수 FROM card;
-- 컬럼끼리 연산 가능

SELECT CONCAT(고객명, 고객등급) FROM card;
-- 고객명 + 고객등급으로 문자열이 합쳐져서 출력

SELECT CONCAT(고객명, ' is ', 사용금액) FROM card;
-- 직접 문자나 숫자를 집어넣을 수 있음

SELECT TRIM(컬럼명) FROM 어쩌구;
-- 문자 좌우공백 제거

SELECT REPLACE('서울에사는 서울맨', '서울', '경기');
-- REPLACE(바꿀문자, 이걸찾아서, 이걸로바꾸셈)
-- 경기에 사는 경기맨

SELECT SUBSTR('abcdef', 3, 2);
-- MID 함수랑 똑같음

SELECT INSERT('test@naver.com', 1, 4, 'hello') ;
-- hello@naver.com

-- Q. 특정 문자에 있는 모든 공백 제거
SELECT REPLACE(상품명, " ", "") FROM card;

-- Q. 휴대폰 뒷자리 4글자만 출력
SELECT RIGHT(번호, 4) FROM card;