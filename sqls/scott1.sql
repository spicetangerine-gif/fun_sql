




-- 학과별 최대키, 최고몸무게, 학과이름.
select d.dname "학과명"
       ,s.max_h "최고키"
       ,s.max_w "최고몸무게"
from (select deptno1, max(height) max_h, max(weight) max_w
      from student
      group by deptno1) s
join department d on s.deptno1 = d.deptno;

-- ward 커미션 -> 적은 커미션을 받는 사람들 목록.
select * -- 500
from emp
where ename = 'WARD';

select *
from emp
where comm < (select comm from emp where ename = 'WARD');

-- 전공.
select name 
      ,dname dept_name
from student s
join department d on s.deptno1 = d.deptno
where deptno1 = (select deptno1
                 from student
                 where name = 'Anthony Hopkins');


select * 
from professor;
select *
from department;
select name prof_name
       ,hiredate
       ,dname dept_name
from professor p
join department d on p.deptno = d.deptno
where hiredate > (select hiredate from professor where name = 'Meg Ryan');

--
select empno, name, deptno
from emp2
where deptno in (select dcode
                 from dept2
                 where area = 'Pohang Main office');
                 
-- 432p
select *
from dept
where exists (select deptno
              from dept
              where deptno = :dno);

select *
from emp2
where position = 'section head';

select name
      ,position
      ,to_char(pay, '$999,999,999') salary 
from emp2
where pay >any (select pay from emp2 where position = 'section head');

-- 최소값보다 작은 학생.
select name, grade, weight
from student
where weight <ALL (select weight
                   from student
                   where grade = 2);

-- 부서별 평균연봉 중 가장 적은 부서의 평균연봉보다 더 적게 받는 사원들.





