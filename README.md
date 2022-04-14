# Module 7 Challenge

## Overview of the Pewlett-Hackard-Analysis

This project's main objective is to analyze determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program

The following file is the query used:

[Employee_Database_challenge.sql](https://github.com/lfhoepers/Pewlett-Hackard-Analysis/blob/48ff0f968a061ca3201b5069d5baf79650273080/Queries/Employee_Database_challenge.sql)


## Results:


- On the first file [retirement_titles.csv](https://github.com/lfhoepers/Pewlett-Hackard-Analysis/blob/48ff0f968a061ca3201b5069d5baf79650273080/Data/retirement_titles.csv) we have all employees to be retired, however some are duplicated, because they worked on more than one position at the company.

Example:

![image](https://user-images.githubusercontent.com/100812079/163293963-717f1d27-a3dc-4167-93e2-6ed3fbb8ae9d.png)

- the file [unique_titles.csv](https://github.com/lfhoepers/Pewlett-Hackard-Analysis/blob/48ff0f968a061ca3201b5069d5baf79650273080/Data/unique_titles.csv) bring all the employees after used distinct on, in this case they are not duplicated and we can see exactly who will be retired.


- The file [retiring_titles.csv](https://github.com/lfhoepers/Pewlett-Hackard-Analysis/blob/48ff0f968a061ca3201b5069d5baf79650273080/Data/retiring_titles.csv) bring the total of retiring people per position, acordding the image bellow.

![image](https://user-images.githubusercontent.com/100812079/163294238-54e67c79-98fd-41f8-9618-a8ca903c1fc9.png)

- Finally the [mentorship_eligibilty.csv](https://github.com/lfhoepers/Pewlett-Hackard-Analysis/blob/48ff0f968a061ca3201b5069d5baf79650273080/Data/mentorship_eligibilty.csv) bring all the employees that are done to be mentor. Using the following query we can see by position.

/* select count(emp_no), title from mentorship_eligibilty group by title order by count(emp_no) desc */

![image](https://user-images.githubusercontent.com/100812079/163294390-86d484a8-9484-42ae-afb4-2bf6b58df634.png)



## Summary: 

- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Using the following query we can see that 72458 employees will be retired.

/* select count(emp_no) from unique_titles */

![image](https://user-images.githubusercontent.com/100812079/163294535-8fe550fa-71f0-4668-a960-873335e70cd5.png)

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

I have created the query [Comparative.sql](https://github.com/lfhoepers/Pewlett-Hackard-Analysis/blob/48ff0f968a061ca3201b5069d5baf79650273080/Queries/Comparative.sql), I used with to create temporary tables and compare between total employees, total to be retired and total to be mentor, and certaily the company no have enough mentors. Some positions, each mentor should be trainning around 50 employees. Some position like manager no have elegible mentor.

![image](https://user-images.githubusercontent.com/100812079/163294914-6ad9e838-6551-48d5-9b30-6a979b8486af.png)


I appreciate the opportunity to present this project, I am available for any clarification.


**Luiz Fernando Hoepers**  
###### UofT SCS Data Analytics Boot Camp
