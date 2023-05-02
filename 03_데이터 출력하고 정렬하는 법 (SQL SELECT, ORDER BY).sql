INSERT INTO temp
VALUES(3, "침대", "가구", 5000);

INSERT INTO temp
VALUES(4, "의자", "가구", 6000);

INSERT INTO temp
VALUES(5, "하이탑", "신발", 3000);

# SELECT * FROM 테이블명
# 모든 컬럼 출력

# SELECT 컬럼명 FROM 테이블명
# 특정 컬럼 출력

# SELECT 컬럼명1, 컬럼명2 FROM 테이블명
# 특정 컬럼 여러개 출력

# SELECT * FROM 데이터베이스명.테이블명
# 출력이 안 될시 시도

# DBeaver 상단 윈도우 - 설정 - SQL 편집기 - SQL 포맷 - Keyword case : Upper
# 대문자 자동완성

# SELECT * FROM 테이블명 ORDER BY 컬럼명 (ASC);
# 오름차순 정렬

# SELECT * FROM 테이블명 ORDER BY 컬럼명 (DESC);
# 내림차순 정렬

# SELECT * FROM 테이블명 ORDER BY 컬럼명1 ASC, 컬럼명2 DESC;
# 컬럼1 순으로 오르차순 정렬 후, 컬럼2로 내림차순정렬

# SELECT * FROM product ORDER BY 3 DESC
# 몇 번째 컬럼인지 숫자로 적어도 가능

# Q. 현재 테이블의 상품명과 가격컬럼 출력
SELECT 상품명, 가격 FROM temp;

# Q. 현재 테이블의 모든 컬럼을 출력, 가격 낮은 순으로
SELECT * FROM temp ORDER BY 가격;

# Q. 모든 컬럼 출력, 가격 낮은 순으로, 가격이 같으면 카테고리 가나다순으로
SELECT * FROM temp ORDER BY 가격, 카테고리;

# Q. 근무기간 낮은 순으로, 근무기간 같으면 이름 가나다순으로
SELECT * FROM employee ORDER BY 근무기간, 이름