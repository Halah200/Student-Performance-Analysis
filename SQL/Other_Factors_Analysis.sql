--how does average academic performance differ across health statue levels in both subjects?

select subject ,health as health_level,
count(*) as total_records, 
avg(CAST(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject, health
order by subject, health DESC

-- does average student performance differ between students with and without home internet access ?

select subject ,internet as internet_access,
count(*) as total_records, 
avg(CAST(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject, internet
order by subject, internet DESC

-- does average student performance differ between students who do and do not aspire to higher education ?

select subject ,higher as higher_education_aspiration,
count(*) as total_records, 
avg(CAST(G3 as decimal(10,2))) as average_grade
from Student_Performance
group by subject, higher
order by subject, higher DESC
