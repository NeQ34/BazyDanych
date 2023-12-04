select * from hr.departments;
select * from hr.employees;
--lab04
--zad 1
select distinct manager_id from hr.employees where manager_id is not null order by manager_id;
--zad 2
select * from hr.employees where last_name like 'K%' or last_name like 'Z%' order by hire_date asc fetch next 5 rows only;
--zad 3***************
select department_name from hr.departments where manager_id is null;
--zad 4
select first_name,last_name,salary from hr.employees order by salary desc fetch next 5 rows with ties;
--zad 5***************
select first_name,last_name,hire_date from hr.employees order by hire_date desc fetch next 10 rows with ties;
--zad 6
select * from hr.employees where extract(month from hire_date) in (01,02) and commission_pct is not null;
select * from hr.employees where (extract(month from hire_date) between 1 and 2) and commission_pct is not null;
-- zad 7
select * from hr.jobs;
select job_title,min_salary from hr.jobs order by min_salary asc fetch first 10 rows with ties;
--zad 8
select * from hr.employees;
select distinct(department_id),hire_date from hr.employees where (extract(month from hire_date) between 1 and 6) 
    and extract(year from hire_date) = 2003;
--zad 9
select * from hr.employees order by salary desc fetch first 20 percent rows with ties;
--zad 10***************
select * from hr.employees where extract(year from hire_date)>2005 and email is not null 
    order by salary fetch first 10 percent rows with ties;
--zad 11
select first_name,salary,job_id,commission_pct from hr.employees where (job_id like 'SA_MAN' or job_id like 'SA_REP') 
    and commission_pct is not null;
--zad 12
select * from hr.employees order by hire_date asc fetch first 1 row with ties;
--zad 13
select first_name, department_id,hire_date from hr.employees where department_id in (50,60,80) 
    order by hire_date fetch next 15 percent rows only;
--zad 14
select department_name from hr.departments order by department_name desc offset 1 row fetch next 9 rows only;
--zad 15***************
select job_title, length(job_title) from hr.jobs where job_title like '%S%' or job_title like '%s%' 
    order by job_title offset 9 row fetch next 6 rows only;
--zad 16
select * from hr.job_history;
select * from hr.job_history where employee_id = 101;
--zad 17***************
select * from hr.locations;
select city from hr.locations where country_id like 'US' order by city desc fetch first 3 rows only;
--zad 18
select * from hr.departments where location_id = 1700 and manager_id is not null 
    order by manager_id fetch first 5 rows only;
--zad 19
select * from hr.employees where commission_pct is not null order by commission_pct desc fetch first 1 row only;
select max(commission_pct) from hr.employees;
--zad 20***************
select min(commission_pct) from hr.employees where department_id=80;
--zad 21
select * from hr.departments where manager_id is not null 
    order by location_id fetch first 30 percent rows with ties;
--zad 22
select concat(concat(first_name,' '),last_name) as OSOBA,salary as PENSJA from hr.employees;
--zad 23
select first_name,last_name,hire_date from hr.employees 
    where extract(year from sysdate)-extract(year from hire_date)>18 order by hire_date;
select first_name,last_name,hire_date from hr.employees where add_months(hire_date,18*12)<=sysdate order by hire_date;
--zad 24
select first_name,last_name,hire_date from hr.employees where months_between(sysdate,hire_date)>=245 order by hire_date;
--zad 25
select * from hr.employees where salary between 6000 and 8000;
--zad 26
select * from hr.employees where department_id in (70,80,110) and salary not between 5000 and 9000 order by salary;
--zad 27***************
select substr(first_name, 1,1)||'.'||last_name,hire_date,salary from hr.employees 
    where job_id like 'ST_CLERK' and extract(year from hire_date) not between 2004 and 2005;
--zad 28
select * from hr.employees where email like '%G' and department_id in (90,100);
--zad 29
select first_name,last_name,salary,salary*1.1,department_id from hr.employees 
    where department_id in (50,60,80) and 
    extract(month from hire_date) between 5 and 10 and extract(year from hire_date) = 2005;
--zad 30
select * from hr.locations where postal_code is null;
