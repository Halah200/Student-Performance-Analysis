-- use union all to append records from both subject tables
--add a subject column to indentify each subjects
select *, 'Math' As subject
into Student_Performance
from Student_Math
union all

select *,'Portuguese' As subject
from Student_Portuguese

--validate the combined dataset after merging both subjects
select subject, count(*) As total_records
from Student_Performance
GROUP BY Subject;

select * from Student_Performance

 /*identifies distinct profiles using demographic,
family, social, and academic background attributes */
select count(*) As Distinct_Student_profiles
from (
select distinct school, sex, age, address, famsize, Pstatus, Medu, Fedu,Mjob,Fjob, reason, 
guardian,traveltime,studytime, failures, schoolsup,famsup,paid,
activities,nursery,higher,internet,romantic,freetime,goout,
Dalc,Walc,health,absences
from Student_Performance) As student_profiles
--check variable types
EXEC sp_help 'Student_Performance'




