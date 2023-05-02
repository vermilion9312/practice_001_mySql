SELECT 고객등급 FROM card 
GROUP BY 고객등급;
-- 그룹 지어준다

SELECT 고객등급, COUNT(고객명) FROM card 
GROUP BY 고객등급;
-- 고객등급마다 고객이 몇 명인지 카운트

SELECT 고객등급, AVG(사용금액) FROM card 
GROUP BY 고객등급;
-- 고객등급마다 사용금액 평균

-- GROUP BY는 category column에 주로 사용함

-- GROUP BY 한 결과도 필터링 가능, HAVING 으로

SELECT 고객등급, COUNT(고객명) FROM card 
GROUP BY 고객등급 
HAVING 고객등급 = 'vip';

-- HAVING은 GROUP BY 결과를 필터링하고 싶을 때 씁니다.
-- 그래서 GROUP BY 뒤에만 붙일 수 있습니다.

-- WHERE는 테이블 전체 데이터 출력시 필터링하고 싶을 때 쓰면 됩니다. 
-- 그래서 SELECT FROM 뒤에만 붙일 수 있습니다.

SELECT 고객등급, COUNT(고객명) FROM card 
WHERE 연체횟수 = 0 
GROUP BY 고객등급 
HAVING 고객등급 = 'vip';
-- 고객등급 마다 연체횟수가 0인 고객명을 카운트 하는데
-- 결과 표시는 VIP만

-- Q. 캡처12-1.png 처럼 cad 테이블에서 연체횟수마다 몇 명 있는지 출력

