CREATE DATABASE mart;

USE mart;

CREATE TABLE temp (
    번호 INT,
    상품명 VARCHAR(100),
    카테고리 VARCHAR(100),
    가격 INT
);

INSERT INTO temp
VALUES(1, "셔츠", "옷", 5000);

INSERT INTO temp
VALUES(2, "의자", "가구", 7000);

CREATE TABLE employee (
    사원명 VARCHAR(100),
    근속년수 INT,
    직책 VARCHAR(100)
);

INSERT INTO employee
VALUES("홍길동", 5, "사원");

INSERT INTO employee
VALUES("박민수", 3, "사원");

INSERT INTO employee
VALUES("이수연", 4, "팀장");

INSERT INTO employee
VALUES("김갑수", 3, "사원");