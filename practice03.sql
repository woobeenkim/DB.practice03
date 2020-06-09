1.문제

select e.employee_id "사번",
e.first_name "이름",
e.last_name "성", 
d.department_name "부서명"
from employees e, departments d
where e.department_id = d.department_id
order by d.department_name asc, e.employee_id desc;

2.문제

select e.employee_id "사번",
e.first_name "이름",
e.salary "급여",
d.department_name "부서명",
j.job_title "현재업무"
from employees e, departments d, jobs j
where e.department_id = d.department_id
and e.job_id = j.job_id
order by d.department_id asc;

2-1.문제

select e.employee_id "사번",
e.first_name "이름",
e.salary "급여",
d.department_name "부서명",
j.job_title "현재업무"
from employees e, departments d, jobs j
where e.department_id = d.department_id(+)
and j.job_id = e.job_id
order by d.department_id asc;

3.문제

select d.location_id "도시아이디",
l.city "도시명",
d.department_name "부서명",
d.department_id "부서아이디"
from departments d, locations l
where d.location_id = l.location_id(+)
order by d.location_id asc;


3-1.문제

select d.location_id "도시아이디",
l.city "도시명",
d.department_name "부서명",
d.department_id "부서아이디"
from departments d, locations l
where d.location_id(+) = l.location_id
order by d.location_id asc;

4.문제

select r.region_name "지역이름",
c.country_id "나라이름"
from regions r, countries c
where c.region_id = r.region_id
order by r.region_name asc, c.country_name desc;

5.문제

select e.employee_id "사번",
e.first_name "이름",
e.hire_date "채용일",
m.first_name "매니저이름",
m.hire_date "매니저입사일"
from employees e, employees m
where e.manager_id = m.employee_id
and m.hire_date > e.hire_date;

6.문제

select c.country_name "나라명",
c.country_id "나라아이디",
l.city "도시명",
l.location_id "도시아이디",
d.department_name "부서명",
d.department_id "부서아이디"
from departments d, locations l, countries c
where d.location_id = l.location_id
and l.country_id = c.country_id
order by c.country_name asc;

7.문제

select 
j.employee_id "사번",
(e.first_name ||'-'||e.last_name) "이름",
j.job_id "업무아이디",
j.start_date "시작일",
j.end_date "종료일"
from employees e, job_history j
where e.employee_id = j.employee_id
and j.job_id = 'AC_ACCOUNT';

8.문제

select d.department_id "부서번호",
d.department_name "부서이름",
e.first_name "이름",
l.city "도시이름",
c.country_name "나라이름",
r.region_name "지역이름"
from employees e, departments d, locations l, countries c, regions r
where e.employee_id = d.manager_id
and d.location_id = l.location_id
and l.country_id = c.country_id
and c.region_id = r.region_id;

9.문제

select e.employee_id "사번",
e.first_name "이름",
e.salary "급여",
d.department_name "부서명",
j.job_title "현재업무"
from employees e, departments d, jobs j
where e.department_id = d.department_id
and e.job_id = j.job_id
order by d.department_id asc;

10.문제

select e.employee_id "사번",
e.first_name "이름",
d.department_name "부서명",
g.first_name "이름"
from employees e, departments d, employees g
where e.manager_id = g.employee_id
and e.department_id = d.department_id(+);