-- Does average student performanc vary according to the mother's education level?
select subject ,Medu as Mother_Education_Level,
count(*) as total_records,
avg(CAST(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject, Medu 
order by subject,Medu

-- Does average student performanc vary according to the father's education level?
select subject ,Fedu as Father_Education_Level,
count(*) as total_records,
avg(CAST(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject, Fedu 
order by subject,Fedu

/*does average student performance differ between students who 
receive family support and those who do not?*/

select subject ,famsup as Family_Support,
count(*) as total_records,
avg(CAST(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject, famsup
order by subject,famsup

/*does average student performance differ between students from smaller and larger families?*/

select subject ,famsize as Family_Size,
count(*) as total_records,
avg(CAST(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject, famsize
order by subject,famsize

--does average student performance differ based on whether parents live together or apart?
select subject ,Pstatus as Parental_Status,
count(*) as total_records,
avg(CAST(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject, Pstatus
order by subject,Pstatus

--does average student performance differ across mother's job categories?
select subject ,Mjob as Mother_Job,
count(*) as total_records,
avg(CAST(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject, Mjob
order by subject,Mjob

--does average student performance differ across father's job categories?
select subject ,Fjob as Father_Job,
count(*) as total_records,
avg(CAST(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject, Fjob
order by subject,Fjob

----does average student performance differ depending on who the student's guardian is?

select subject ,guardian as Guardian_Type,
count(*) as total_records, 
avg(CAST(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject, guardian
order by subject, average_grade DESC


