-- 제1정규형
-- 한 칸엔 하나의 데이터만

-- 제2정규형
-- partial dependency를 제거한 테이블

-- Composite primary key(복합키)
-- 빡통버전: 주제와 관련 없는 컬럼 제거
-- 두 개 이상의 컬럼을 엮어서 primary key 역할
-- 회원번호, 회원이름, 프로그램, 가격, 납부여부
-- 위 컬럼에서 가격이 프로그램에 종속하는 컬럼임(partial dependency: 부분 함수 종속)
-- 이 컬럼을 분리하는 것이 제2정규화
