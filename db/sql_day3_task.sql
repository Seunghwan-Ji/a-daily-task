use 한빛무역;

# 1.
select *
from 고객
where 도시 like "서울%" and 마일리지 between 15000 and 20000;

# 2.
select 지역, 도시
from 고객
order by 지역, 도시;

# 3.
select *
from 고객
where (도시 in ('춘천시', '과천시', '광명시')) and (담당자직위 like "%이사" or 담당자직위 like "%사원");

# 4.
select *
from 고객
where 도시 not like '%광역시' and 도시 not like '%특별시'
order by 마일리지 desc
limit 3;

# 5.
select *
from 고객
where 지역 != '' and 담당자직위 = '대표 이사';

# 6.
select *
from 고객
where 전화번호 like "%45";

# 7.
select *
from 고객
where 전화번호 like "%45__";

# 8.
select *
from 고객
where 전화번호 like "%45%";