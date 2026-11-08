/*calculate the number of records,average grade,minimum grade,
maximum grade,and standard deviation.*/

select subject , count(*) as total_record,
avg(CAST(G3 as decimal (10,2))) as average_grade,
min (G3) as minimum_grade,
MAX (G3) as maximum_grade,
stdev(CAST(G3 as float)) as grade_std_dev
from Student_Performance
group by subject

--how does academic performance vary with study time?
	select subject,studytime, count(*) as total_records,
	avg(cast(G3 as decimal (10,2))) as average_grade
	from Student_Performance
    group by subject, studytime 
    order by subject,studytime

	--How does previous academic failure relate to current academic performance?
	select subject,failures,count(*) as total_records,
avg(Cast(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject,failures
order by subject,failures

--does academic performance cary across different levels of student absenteeism?

with Absence_Groups as (
select subject,G3,
CASE 
when absences=0 then '0-No Absences'
when absences Between 1 And 5 then '1-5'
when absences Between 6 and 10 then '6-10'
Else '+11'
End As Absence_Category
From Student_Performance
)
select subject,Absence_Category,count(*) As Total_Records,
avg(cast(G3 as decimal(10,2))) as Averge_Grade
from Absence_Groups 
group by subject,Absence_Category
order by subject,Absence_Category

/* do students receiving additional school support have different
averege final grades from those not receiving support?*/

select subject,schoolsup As school_support,
count(*) as total_records,
avg(CAST(G3 as decimal (10,2))) as average_grade
from Student_Performance
group by subject, schoolsup
order by subject, schoolsup

/*do students attending extra paid classes have different average final 
grades from those not attending paid classes*/

select subject,paid as extra_paid_classes,
count(*) as total_records,
avg(CAST(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject , paid 
order by subject, paid