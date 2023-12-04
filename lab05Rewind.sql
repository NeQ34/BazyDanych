--zad 1
select count(*) from hr.employees;
--zad 2
select * from hr.employees;
select avg(salary) from hr.employees where job_id like 'IT_PROG';
--zad 3
select count(distinct(first_name)) from hr.employees where first_name like 'A%';
--zad 4
select avg(salary) as srednia, min(salary) as min,max(salary) as max from hr.employees;
--zad 5
select sum(salary),avg(salary),min(salary),max(salary) from hr.employees where manager_id is not null;
--zad 6
select job_id,sum(salary),count(employee_id) from hr.employees group by job_id order by job_id;
--zad 7
select job_id,count(employee_id) from hr.employees group by job_id order by job_id;
--zad 8
select job_id,avg(salary),count(employee_id) from hr.employees group by job_id having count(employee_id)>=3;
--zad 9
select first_name,count(first_name) from hr.employees group by first_name;
--zad 10
select department_id,salary from hr.employees group by department_id,salary having avg(salary)>9000;
--zad 11
select department_id,max(salary),min(salary),max(salary)-min(salary) as rozniza from hr.employees group by department_id;
--zad 12
select manager_id,max(salary) from hr.employees group by manager_id order by manager_id;
--zad 13
select department_id,max(salary) from hr.employees group by department_id order by max(salary);
--zad 14
select department_id,count(*) as pracownikow,count(distinct(salary)) as roznych_pensji from hr.employees group by department_id;
--zad 15
select department_id,avg(distinct(salary)) from hr.employees group by department_id;
--zad 16
select department_id, max(salary) from hr.employees where department_id in (50,60,100) group by department_id;
--zad 17
select department_id,min(salary) from hr.employees where lower(last_name) not like '%o%' group by department_id;
--zad 18
select department_id, min(salary),max(salary),count(*) from hr.employees group by department_id having count(*)<5;
--zad 19
select department_id,count(department_id) from hr.departments group by department_id having count(department_id)>1;
--zad 20***************
select department_id,min(hire_date),max(hire_date) from hr.employees group by department_id order by department_id;
--zad 21
select job_id,count(*) from hr.employees group by job_id order by count(*) desc;
--zad 22***************
select job_id,count(*) from hr.employees group by job_id having count(*)>10;
--zad 23
select job_id,avg(salary),count(*) from hr.employees where extract(year from hire_date)!=2005 group by job_id;
--zad 24***************
select manager_id,min(salary) from hr.employees where manager_id is not null group by manager_id;
--zad 25***************
select job_id,avg(salary) from hr.employees where job_id in('ST_CLERK','ST_MAN') group by job_id;
--zad 26
select department_id,max(salary)-min(salary) from hr.employees where department_id in(50,60,100) group by department_id;
--zad 27***************
select department_id,avg(salary) from hr.employees 
    where department_id in(70,80,110)and extract(year from hire_date) not in(2004,2005) group by department_id;
--zad 28***************
select distinct(first_name) from hr.employees order by first_name asc;
--zad 29
select location_id,count(department_id) from hr.departments group by location_id;
--zad 30***************
select manager_id,count(department_id) from hr.departments 
    where manager_id is not null group by manager_id having count(department_id)>1;
