--Deliverable 1

------ 1 to 7 Steps - Create Retirement_titles
select a.emp_no, 
a.first_name, 
a.last_name, 
b.title, 
b.from_date, 
b.to_date 
into Retirement_titles
from employees a
inner join titles b on b.emp_no = a.emp_no
where a.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
order by a.emp_no


-----Steps 8 - 15 - Create unique_titles

SELECT DISTINCT ON (emp_no) retirement_titles.emp_no,
first_name,
last_name,
title

INTO  unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01' 
ORDER BY emp_no, from_date DESC;


-----------Step 16-21 - Create Retiring_Titles
select 
count(emp_no),
title
into Retiring_Titles
from unique_titles
group by title
order by count(emp_no) desc




