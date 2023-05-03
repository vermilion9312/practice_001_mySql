-- 데이터베이스 생성, 삭제하는 법은
CREATE DATABASE 데이터베이스이름;
DROP DATABASE 데이터베이스이름;

-- 테이블 생성은
CREATE TABLE 테이블명 (
    컬럼1이름 datatype,
    컬럼2이름 datatype,
    컬럼3이름 datatype,
    ...등
);

CREATE TABLE new_table (
    id INT,
    이름 VARCHAR(100),
    나이 INT
);

CREATE TABLE new_table2 (
    id INT,
    이름 VARCHAR(100) DEFAULT '홍길동',
    나이 INT
);
-- NULL 값에 '홍길동'을 넣어줌

-- 테이블 삭제는
DROP TABLE 테이블

-- 컬럼 생성, 변경, 삭제는
ALTER TABLE 테이블명
ADD 컬럼명 VARCHAR(100);

ALTER TABLE 테이블명
MODIFY COLUMN 컬럼명 datatype;

ALTER TABLE 테이블명
DROP COLUMN 컬럼명;

-- Q. 유저 이름, 전화번호를 저장할 테이블을 하나 생성
CREATE TABLE member (
    id INT,
    이름 VARCHAR(100),
    전화번호 VARCHAR(100)
)

-- Q. 방금 만든 테이블에 '나이'를 저장할 컬럼 추가
ALTER TABLE member
ADD 나이 INT DEFAULT 1;

-- Q. 방금 만든 테이블에 '나이'컬럼의 데이터타입을 변경
ALTER TABLE member
MODIFY COLUMN 나이 BIGINT;

DROP TABLE member;
