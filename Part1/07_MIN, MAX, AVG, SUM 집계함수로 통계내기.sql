SELECT 사용금액 FROM card;
-- 사용금액 컬럼 전부 출력

SELECT MAX(사용금액) FROM card;
-- 사용금액 컬럼에서 최댓값을 포함한 행 출력

SELECT MIN(사용금액) FROM card;
-- 사용금액 컬럼에서 최솟값을 포함한 행 출력

SELECT AVG(연체횟수) FROM card;
-- 컬럼에 있는 숫자들 평균

SELECT SUM(사용금액) FROM card;
-- 컬럼에 있는 숫자들 합

SELECT COUNT(사용금액) FROM card;
SELECT COUNT(*) FROM card;
-- 행 수 출력

SELECT MAX(사용금액) AS 최대사용금액 FROM card;
-- 컬럼명 변경, AS 말고 그냥 띄어쓰기 해도 가능

-- 고객등급이 vip인 사람의 평균 사용금액
SELECT AVG(사용금액) FROM card
WHERE 고객등급 = 'vip';

SELECT DISTINCT 연체횟수 FROM card;
-- 연체횟수 컬럼 중에 중복값을 포함한 행을 전부 제거하고 출력

SELECT AVG(DISTINCT 연체횟수) FROM card;

SELECT MAX(사용금액) FROM card;
SELECT * FROM card ORDER BY 사용금액 DESC LIMIT 1;
-- 둘이 같은 최댓값

-- Q. 최대 결제횟수와 최소 결제횟수 출력
SELECT MAX(결제횟수), MIN(결제횟수) FROM card;

-- Q. 고객등급이 vip인 사람들의 '평균 결제횟수'와
-- 고객등급이 vip인 사람들의 '사용금액 총 합계'
SELECT AVG(결제횟수), SUM(사용금액) FROM card
WHERE 고객등급 = 'vip';

-- Q. 연체횟수가 1회 이하인 사람 수
SELECT COUNT(*) FROM card
WHERE 연체횟수 <= 1;