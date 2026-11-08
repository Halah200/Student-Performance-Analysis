/*does average student performance differ between students who participate in extracurricular
activities and those who do not?*/

select subject ,activities as activity_participation,
count(*) as total_records, 
avg(CAST(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject, activities
order by subject, activities DESC

/*does average student performance differ across free-time levels?*/

select subject ,freetime as free_time_level,
count(*) as total_records, 
avg(CAST(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject, freetime
order by subject, freetime DESC

/*does average student performance differ across levels of social outings with friends?*/

select subject ,goout as going_out_level,
count(*) as total_records, 
avg(CAST(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject, goout
order by subject, goout DESC

/*does average student performance differ across weekday alcohol consumption levels ?*/

select subject ,Dalc as weekday_alcohol_level,
count(*) as total_records, 
avg(CAST(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject, Dalc
order by subject, Dalc DESC

/*does average student performance differ across weekend alcohol consumption levels ?*/

select subject ,Walc as weekend_alcohol_level,
count(*) as total_records, 
avg(CAST(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject, Walc
order by subject, Walc DESC