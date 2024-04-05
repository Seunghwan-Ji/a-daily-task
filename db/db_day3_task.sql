use 한빛무역;

-- 1. 다음 실행 결과를 참고하여 '서울'에 사는 고객 중에 마일
-- 리지가 15,000점 이상 20,000점 이하인 고객의 모든 정
-- 보를 보이시오.
select *
from 고객
where 도시 like "서울%" and 마일리지 between 15000 and 20000;


-- 2. 한빛무역의 고객들은 어느 지역, 어느 도시에 사는지 지역과 도시를 한 번씩만 보이시오. 이때 결과를 지역 순으로
-- 나타내고, 동일 지역에 대해서는 도시 순으로 나타내봅니다.
select distinct 지역, 도시
from 고객
order by 1, 2;

select distinct 지역, 도시, 담당자직위
from 고객
order by 1, 2, 3;


-- 3. '춘천시'나 '과천시' 또는 '광명시'에 사는 고객 중에서 담당자직위에 '이사' 또는 '사원'이 들어가는 고객의 모든 정보
-- 를 보이시오.
select *
from 고객
where (도시 in ('춘천시', '과천시', '광명시')) and (담당자직위 like "%이사" or 담당자직위 like "%사원");


-- 4. '광역시'나 '특별시'에 살지 않는 고객들 중에서 마일리지가 많은 상위 고객 3명의 모든 정보를 보이시오.
select *
from 고객
where 도시 not like '%광역시' and 도시 not like '%특별시'
order by 마일리지 desc
limit 3;


-- 5. 지역에 값이 들어있는 고객 중에서 담당자직위가 '대표 이사'인 고객을 빼고 보이시오.
select *
from 고객
where 지역 != '' and 담당자직위 != '대표 이사';

select * from 고객
where 지역 is not null
and 담당자직위 <> '대표 이사';


-- 6. 전화번호 뒷자리가 '45로 끝나는 고객 정보 추출하시오
select *
from 고객
where 전화번호 like "%45";


-- 7. 전화번호 뒤에서 세번째 부터가  '45인 고객 정보 추출하시오
select *
from 고객
where 전화번호 like "%45__";


-- 8. 전화번호중에  '45가 들어간 고객 정보 추출하시오
select *
from 고객
where 전화번호 like "%45%";