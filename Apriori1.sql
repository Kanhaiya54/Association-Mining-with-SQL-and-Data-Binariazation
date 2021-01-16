/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) patient_id,[diagnosis]
into #diag1
  FROM [LM5].[dbo].[diagnoses] d, LM5.dbo.claims c where d.claim_id = c.claim_id
  group by patient_id,diagnosis;

  select * from #diag1

  ALTER TABLE #diag1 ALTER COLUMN patient_id nvarchar(100) NOT NULL;
  ALTER TABLE #diag1 ALTER COLUMN diagnosis nvarchar(100) NOT NULL;

  create index #diag1#1 on #diag1(patient_id)
  create index #diag1#2 on #diag1(diagnosis)

  -- cnt of patients
  --773
  select count(distinct patient_id) from #diag1;

  select * from #diag#1

select top 100 * from #diag1;

select diagnosis,count(*)/773.0 as sup from #diag1 group by diagnosis having count(*)/773.0 >= 0.03 ORDER BY sup DESC;


select diagnosis into #item1 from #diag1 group by diagnosis having count(*)/773.0 >= 0.05;

select * from #item1;

select top 100 * from #diag1;

--Creating 2 item pairs from thresholded values from #diag1 table.

select a.diagnosis d1, b.diagnosis d2, (count(*)/773.0)*10 as sup
into #diag2
from #diag1 a, #diag1 b 
where a.patient_id = b.patient_id 
and b.diagnosis>a.diagnosis 
and a.diagnosis in (select * from #item1) 
and b.diagnosis in (select * from #item1)
group by a.diagnosis,b.diagnosis having (count(*)/773.0)*10 > 0.1 ORDER BY d1;


select * from #diag2

select d1,d2 into #item2 from #diag2 group by d1,d2 having sup >= 0.3;

select * from #item2