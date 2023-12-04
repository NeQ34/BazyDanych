--zad 1
select first_name,last_name,department_name from hr.employees join hr.departments using(department_id);
--zad 2
select first_name,last_name, job_title from hr.employees join hr.jobs using(job_id);
--zad 3
select country_name,region_name from hr.countries join hr.regions using(region_id);
--zad 4
select department_id,department_name,min(salary),max(salary),avg(salary) from hr.employees 
    join hr.departments using(department_id) group by department_id,department_name;
--zad 5
select department_name,count(employee_id) as liczba from hr.employees 
    join hr.departments using(department_id) group by department_name order by liczba desc;
--zad 6
select department_name,min(salary),max(salary) as max from hr.employees 
    join hr.departments using(department_id) group by department_name order by max desc;
--zad 7
select job_title,sum(salary) from hr.employees 
    join hr.jobs using(job_id) group by job_title;
--zad 8
select department_id,department_name,max(salary) from hr.employees 
    join hr.departments using(department_id) where department_id in (50,60,70) group by department_id,department_name;
--zad 9
select job_id,job_title,count(employee_id) from hr.employees join hr.jobs using(job_id) 
    group by job_id,job_title having count(employee_id)>=3;
--zad 10
select department_name, avg(salary) from hr.employees join hr.departments using(department_id) 
    group by department_name having avg(salary) between 5000 and 7000;
--zad 11
select job_title,min(salary) from hr.employees join hr.jobs using(job_id) group by job_title having min(salary)>10000;
--zad 12
select job_title,avg(salary) from hr.employees join hr.jobs using(job_id) 
    group by job_title having avg(salary)<10000 order by 2;
--zad 13
select job_title,count(employee_id) from hr.employees join hr.jobs using(job_id) 
    group by job_title order by job_title desc;
--zad 14
select job_title,count(employee_id) from hr.employees join hr.jobs using(job_id) 
    group by job_title having job_title like '%Manager%';
--zad 15
select first_name, last_name, department_name 
    from HR.employees left join hr.departments 
    using(department_id)
    where department_name is null;
--zad 16
select department_name,first_name,last_name from hr.employees 
    right join hr.departments using(department_id) where last_name is null;
--zad 17
select department_name,country_name from hr.departments 
    join hr.locations using(location_id) 
    join hr.countries using(country_id);
--zad 18
select last_name,first_name,department_name,country_name from hr.employees 
    join hr.departments using(department_id)
    join hr.locations using(location_id)
    join hr.countries using(country_id);
--zad 19
select salary,country_id from hr.employees 
    join hr.departments using(department_id)
    join hr.locations using(location_id) where country_id not like 'CA';
--zad 20
select department_name,avg(salary) from hr.employees 
    join hr.departments using(department_id) group by department_name having avg(salary) between 8000 and 10000;
--zad 21
select country_name,count(employee_id) from hr.employees
    join hr.departments using(department_id)
    join hr.locations using(location_id)
    join hr.countries using(country_id) group by country_name;
--zad 22
select m.employee_id as id_kierownika ,m.last_name as kierownika,min(m.salary) from hr.employees e
    join hr.employees m on m.employee_id = e.manager_id group by m.employee_id,m.last_name;
    
