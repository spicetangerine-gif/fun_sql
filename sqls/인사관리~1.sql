 SELECT *
 FROM employees;

SELECT *
 FROM departments;

-- 1
 SELECT *
 FROM employees
 WHERE salary =< 7000
 AND salary >= 12000;

-- 2
select employee_id
      ,last_name
      ,job_id
      ,salary
      ,department_id
from employees
where department_id in (50, 60)
and salary > 5000;

-- 3
SELECT employee_id
      ,last_name
      ,salary
FROM employees
WHERE salary >= 15001
bonus is not null;

-- 4 
select d.department_id
      ,d.department_name
      ,l.city
from departments d  
join locations l on d.departments = l.locations;  

-- 5
select *
from employees
where department_id = 60;

select department_id
       ,last_name
       ,job_id
from employees
where department_id = (select department_id
                        from employees
                        where job_id = 'IT_PROG' );
