--podzapytania
--zad 1
select first_name,last_name,salary from hr.employees where salary > (select avg(salary) from hr.employees);
--zad 2
select * from hr.employees where department_id = 
    (select department_id from hr.employees where first_name like 'Alexis' and last_name like 'Bull');
--zad 3
select * from hr.employees where job_id = (select job_id from hr.employees where last_name like 'Weiss');
--zad 4
select first_name, last_name from hr.employees where department_id in(select department_id from hr.employees where last_name like 'R%');
--zad 5
select first_name,last_name from hr.employees where manager_id = (select employee_id from hr.employees where last_name like 'Hunold');
--zad 6
select first_name,last_name,salary from hr.employees where salary>any(select salary from hr.employees where department_id =60);
--zad 7
select first_name,last_name,salary from hr.employees where salary>all(select salary from hr.employees where department_id=80);
--zad 8
select first_name,last_name,salary from hr.employees 
    where salary>all(select salary from hr.employees join hr.departments using(department_id)
    where department_name like 'Marketing');
--zad 9
select first_name,last_name from hr.employees 
    where salary > (select avg(salary) from hr.employees) 
    and job_id = (select job_id from hr.employees where last_name like 'Abel');
--zad 10
select department_id,count(employee_id) from hr.employees group by department_id order by count(employee_id) desc;
SELECT department_id, COUNT(*) FROM HR.employees 
GROUP BY department_id HAVING COUNT(*) = (SELECT MAX(COUNT(*)) FROM HR.employees GROUP BY department_id);





