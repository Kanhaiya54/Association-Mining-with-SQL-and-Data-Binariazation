/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) patient_id
      ,[diagnosis]
  FROM [LM5].[dbo].[diagnoses],[LM5].dbo.claims where diagnoses.claim_id = claims.claim_id;


  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT patient_id
,max(case when [diagnosis] = 'ELIX1' then 1 else 0 end) as ELIX1
,max(case when [diagnosis] = 'ELIX10' then 1 else 0  end) as ELIX10
,max(case when [diagnosis] = 'ELIX11' then 1 else 0 end) as ELIX11
,max(case when [diagnosis] = 'ELIX12' then 1 else 0 end) as ELIX12
,max(case when [diagnosis] = 'ELIX13' then 1 else 0 end) as ELIX13
,max(case when [diagnosis] = 'ELIX14' then 1 else 0 end) as ELIX14
,max(case when [diagnosis] = 'ELIX15' then 1 else 0 end) as ELIX15
,max(case when [diagnosis] = 'ELIX16' then 1 else 0 end) as ELIX16
,max(case when [diagnosis] = 'ELIX17' then 1 else 0 end) as ELIX17
,max(case when [diagnosis] = 'ELIX18' then 1 else 0 end) as ELIX18
,max(case when [diagnosis] = 'ELIX19' then 1 else 0 end) as ELIX19
,max(case when [diagnosis] = 'ELIX2' then 1 else 0 end) as ELIX2
,max(case when [diagnosis] = 'ELIX20' then 1 else 0 end) as ELIX20
,max(case when [diagnosis] = 'ELIX21' then 1 else 0 end) as ELIX21
,max(case when [diagnosis] = 'ELIX22' then 1 else 0 end) as ELIX22
,max(case when [diagnosis] = 'ELIX23' then 1 else 0 end) as ELIX23
,max(case when [diagnosis] = 'ELIX24' then 1 else 0 end) as ELIX24
,max(case when [diagnosis] = 'ELIX25' then 1 else 0 end) as ELIX25
,max(case when [diagnosis] = 'ELIX26' then 1 else 0 end) as ELIX26
,max(case when [diagnosis] = 'ELIX27' then 1 else 0 end) as ELIX27
,max(case when [diagnosis] = 'ELIX28' then 1 else 0 end) as ELIX28
,max(case when [diagnosis] = 'ELIX29' then 1 else 0 end) as ELIX29
,max(case when [diagnosis] = 'ELIX3' then 1 else 0 end) as ELIX3
,max(case when [diagnosis] = 'ELIX4' then 1 else 0 end) as ELIX4
,max(case when [diagnosis] = 'ELIX5' then 1 else 0 end) as ELIX5
,max(case when [diagnosis] = 'ELIX6' then 1 else 0 end) as ELIX6
,max(case when [diagnosis] = 'ELIX7' then 1 else 0 end) as ELIX7
,max(case when [diagnosis] = 'ELIX8' then 1 else 0 end) as ELIX8
,max(case when [diagnosis] = 'ELIX9' then 1 else 0 end) as ELIX9
into [LM5].[dbo].[elix_binary_patients]
 FROM [LM5].[dbo].[diagnoses] d, [LM5].dbo.claims c where d.claim_id = c.claim_id group by patient_id;



 /****** Script for SelectTopNRows command from SSMS  ******/
SELECT distinct(diagnosis)
  FROM [LM5].[dbo].[diagnoses] order by diagnosis