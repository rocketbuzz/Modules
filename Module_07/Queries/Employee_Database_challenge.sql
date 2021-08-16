--deliverables 1

Select * from departments
select * from public.titles

select emp_no, first_name,last_name from employees
select title, from_date,to_date from titles

select emp_no, first_name,last_name from employees
select title, from_date,to_date from titles

select employees.emp_no, first_name,last_name,title, from_date,to_date 
INTO retirement_info
from employees join titles on employees.emp_no = titles.emp_no
where birth_date between '1952-01-01' and '1955-12-31' 

select * 
from retirement_info

select emp_no, first_name, last_name, title 
from public.retirement_info

-- Use Dictinct with Orderby to remove duplicate rows

select distinct on (emp_no) emp_no, first_name, last_name, title
Into unique_titles
FROM retirement_info
order by  emp_no, to_date desc

--retrieve the number of titles from the Unique Titles table.
--Then, create a Retiring Titles table to hold the required information.

select count(emp_no),title 
Into Retiring_Titles
from unique_titles
group by title
order by count (emp_no)desc

select * from Retiring_Titles

--Deliverables 2

select 
e.emp_no, e.first_name, e.last_name, e.birth_date,
d.from_date, d.to_date,
t.title
from employees e join dept_emp d on e.emp_no = d.emp_no
	 join titles t on e.emp_no = t.emp_no
	
select distinct on ( e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
d.from_date, d.to_date,
t.title
into mentorship_eligibilty
from employees e join dept_emp d on e.emp_no = d.emp_no
	 join titles t on e.emp_no = t.emp_no and t.to_date = '9999-01-01'
where d.to_date = '9999-01-01'
	and
 	e.birth_date between '1965-01-01'  and '1965-12-31'
order by e.emp_no  , t.to_date desc	
	
select * from mentorship_eligibilty

