-- 테이블 생성 시, 컬럼 우측에 작성
-- NOT NULL: 컬럼에 NULL 값이 존재할 수 없음
-- UNIQUE: 컬럼이 중복제거

CREATE TABLE new_table (
    id INT,
    이름 VARCHAR(100),
    나이 INT,
    UNIQUE(이름, 나이)
) 
-- 이렇게 쓰면
-- 홍길동 | 20
-- 홍길동 | 13
-- 은 되지만
-- 홍길동 | 20
-- 홍길동 | 20
-- 은 허용 안 함

-- CHECK(): 안에 조건식을 써서 제약

-- PRIMARY KEY: NOT NULL + UNIQUE
-- AUTO_INCREMENT: 1씩 알아서 증가

CREATE TABLE new_table (
    id INT,
    이름 VARCHAR(100),
    나이 INT,
    CONSTRAINT 제약조건작명 PRIMARY KEY (id),
    CONSTRAINT 제약조건작명2 CHECK(나이 > 10)
)
-- 제약조건명을 작성할 수 있음, 버그 찾기 편함

-- 이미 있는 컬럼에 제약을 추가하려면

ALTER TABLE 테이블명 MODIFY 컬럼명 int NOT NULL; 
