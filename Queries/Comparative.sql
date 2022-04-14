with Retiring_Titles_1 as (select *
from Retiring_Titles),
Mentorship as (select 
count(emp_no),
title
from mentorship_eligibilty
group by title
order by count(emp_no) desc)

select a.title, 
count(a.emp_no) as Total_Emp, 
b.count as Emp_Retiring,
c.count as Emp_Mentor
from titles a
inner join Retiring_Titles_1 b on b.title = a.title
left join Mentorship c on c.title = a.title
where a.to_date = '9999-01-01' group by a.title, b.count, c.count