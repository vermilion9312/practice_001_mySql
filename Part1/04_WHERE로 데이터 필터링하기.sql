
-- SELECT 컬럼명 FROM 테이블명 WHERE 조건식

SELECT * FROM product WHERE 카테고리 = '가구'
-- 카테고리에서 가구인 행만 필터링

SELECT * FROM product WHERE 가격 > 50000;

SELECT * FROM product
WHERE 가격 BETWEEN 5000 AND 8000;
-- 5000 이상 8000 이하