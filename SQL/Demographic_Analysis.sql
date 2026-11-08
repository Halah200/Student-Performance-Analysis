--does average student performance differ between male and female students across both subject?

select subject ,sex as student_sex,
count(*) as total_records, 
avg(CAST(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject, sex
order by subject, sex DESC

--how does average academic performance vary across student ages?

select subject ,age as student_age,
count(*) as total_records, 
avg(CAST(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject, age
order by subject, age DESC