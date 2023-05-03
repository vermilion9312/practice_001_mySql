-- IF(조건식, 조건식맞으면이거, 조건식틀리면이거);

SELECT IF(1 + 2 = 3, '맞음', '틀림');

SELECT 고객명, 사용금액, IF(사용금액>200000, "우수", "거지") FROM card;

-- CASE 
--   WHEN 조건식1 THEN 남길값1
--   WHEN 조건식2 THEN 남길값2
--   WHEN 조건식3 THEN 남길값3
-- END

SELECT 고객명, 사용금액,

CASE
  WHEN 사용금액 >= 200000 THEN '우수'
  WHEN 사용금액 >= 100000 AND 사용금액 < 200000 THEN '준수'
  WHEN 사용금액 < 100000 THEN '그지' 
END

FROM card;

-- CASE 
--   WHEN 조건식1 THEN 남길값1
--   WHEN 조건식2 THEN 남길값2
--   WHEN 조건식3 THEN 남길값3
--   ELSE 남길값4
-- END 

SELECT SUM(3) FROM card;

SELECT SUM(
  CASE
    WHEN 고객등급 = 'vip' THEN 3 
    WHEN 고객등급 = '로열' THEN 2 
    ELSE 1
  END
) 

FROM card

-- Q. 사용금액 30만원 이상은 50% 증액,
-- 30만원 미만은 10% 증액해서
-- 사용금액의 총 합계를 출력, 답: 5147550
SELECT sum(
IF(사용금액 >= 300000, 사용금액 * 1.5, 사용금액 * 1.1))
FROM card;

-- Q. 고객등급 재설정
-- 사용금액이 30만원 이상은 'vip'
-- 20만원 이상 30만원 미만은 '로열'
-- 그 외엔 '패밀리'
-- 고객등급이 변동될 이름들만 출력
SELECT 고객명, 사용금액, 고객등급
FROM card
WHERE 고객등급 != CASE 
    WHEN 사용금액 >= 300000 THEN 'vip'
    WHEN 사용금액 >= 200000 THEN '로열'
    ELSE '패밀리'
END 