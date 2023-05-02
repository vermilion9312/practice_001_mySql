SELECT * FROM product
WHERE 상품명 LIKE '%소파%';
-- 글자 + 소파 + 글자, 상품명에 소파라는 단어가 들어간 행 필터링

SELECT * FROM product
WHERE 상품명 LIKE '소파%';
-- 상품명 맨 앞에 소파가 들어간 행 필터링

SELECT * FROM product
WHERE 상품명 LIKE '%소파';
-- 상품명 맨 뒤에 소파가 들어간 행 필터링

-- %: 아무글자, _: 아무글자 한 글자

SELECT * FROM product
WHERE 상품명 LIKE '__소파'
-- 상품명에 @@소파가 들어간 행만 필터링

-- 하지만 좋다고 % 기호 많이 쓰면 성능저하가 일어날 수 있습니다.
-- OR, 등호, 부등호 쓰는게 가능한 경우 사용하도록 합시다. 
-- %쓰면 인덱스 활용을 많이 못해서 찾을 때 오래걸리는 건데 자세한건 인덱스 원리 배울 때 알아봅시다. 

-- Q. 'Green'으로 시작해서 'chair'로 끝나는 상품명을 검색
SELECT * FROM product
WHERE 상품명 LIKE 'Green%chair';

-- Q. 상품명에 '소파'가 들어있거나 'chair'로 들어있는 모든 상품 검색
SELECT * FROM product
WHERE 상품명 LIKE '%소파%' OR 상품명 LIKE '%chair%';

-- Q. 상품명에 '소파'가 들어있는데 '나무'는 들어있지 않은 모든 상품 검색
SELECT * FROM product
WHERE 상품명 LIKE '%소파%' AND NOT 상품명 LIKE '%나무%';
