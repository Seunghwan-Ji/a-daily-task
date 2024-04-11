use 한빛무역;

# 1.
select 부서.부서명
from 사원
inner join 부서
on 사원.부서번호 = 부서.부서번호
where 이름 = "배재용";

# 2.
select *
from 제품
where 제품번호 not in (select 제품번호 from 주문세부);

# 3.
select 담당자명,
고객회사명,
count(주문.고객번호) as 주문건수,
min(주문.주문일) as 최초주문일,
max(주문.주문일) as 최종주문일
from 고객
inner join 주문
on 고객.고객번호 = 주문.고객번호
group by 담당자명, 고객회사명;

# 4.
insert into 제품(제품번호, 제품명, 포장단위, 단가, 재고)
values(95, "망고베리 아이스크림", "400g", 800, 30);

# 5.
insert into 제품(제품번호, 제품명, 단가)
values(96, "눈꽃빙수맛 아이스크림", 2000);

# 6.
update 제품
set 재고 = 30
where 제품번호 = 96;

# 7.
delete
from 부서
where 부서번호 not in (select 부서번호 from 사원);