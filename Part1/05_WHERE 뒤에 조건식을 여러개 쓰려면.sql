SELECT * FROM product 
WHERE 카테고리 = '가구' AND 가격 = 5000;

SELECT * FROM product 
WHERE 카테고리 = '가구' OR 가격 = 5000;

SELECT * FROM product 
WHERE NOT 카테고리 = '가구';

SELECT * FROM product 
WHERE (카테고리 = '가구' OR 카테고리 = '옷') AND 가격 = 5000;

SELECT * FROM product 
WHERE NOT 카테고리 = '가구' AND NOT 가격 = 5000;

SELECT * FROM product 
WHERE 카테고리 = '신발' OR 카테고리 = '가전' OR 카테고리 = '식품'

SELECT * FROM product
WHERE 카테고리 IN ('신발', '가전', '식품');
-- OR 연산자랑 같은 의미

-- 카테고리 = '신발' OR 가격 = 5000
-- 컬럼명이 다를 경우 IN ()으로 축약 못함

-- Q. 재고가 20이하인 상풀들을 상품명 가나다 순으로 출력
SELECT * FROM product
WHERE 재고 <= 20 ORDER BY 상품명;

-- Q. 가격이 3000원 미만이거나 6000원 초가인 상품들만 출력
SELECT * FROM product
WHERE 가격 < 3000 OR 가격 > 6000;

-- Q. 카테고리가 옷이 아닌 것들 중에서 가격이 5천원인 상품들만 출력
SELECT * FROM product
WHERE 카테고리 != '옷' AND 가격 = 5000;

-- Q. 상품명이 셔츠, 반팔티, 운동화가 아닌 상품들만 출력
SELECT * FROM product
WHERE 상품명 NOT IN ('셔츠', '반팔티', '운동화');
-- WHERE NOT 상품명 IN ('셔츠', '반팔티', '운동화'); 위에 거랑 같은 결과, 왜?