USE PXPOWER_CRU4
GO
 
UPDATE Jobs
SET XmlDoc.modify('replace value of(/Job/@status)[1] with "ACTIVE"', 'replace value of(/Job/@currentStep)[1] with "REFERENCE_JOB"', 'replace value of(/Job/@resumeAfter)[1] with ""','replace value of(/Job/DataItem/@scoringScenarioId)[1] with "252"')
--SET XmlDoc.modify('replace value of(/Job/@status)[1] with "ACTIVE"', 'replace value of(/Job/@currentStep)[1] with "REFERENCE_JOB"')
--SET XmlDoc.modify('replace value of(/Job/@status)[1] with "ACTIVE"')
--SET XmlDoc.modify('replace value of(/Job/DataItem/@scoringScenarioId)[1] with "252"')
WHERE JobId = '94DB32B1-8792-418A-A5E1-DCE34F9D0B6D'

GO


USE PXPOWER_CRU4
GO 

UPDATE Jobs
SET XmlDoc.modify('replace value of(/Job/DataItem[@name=("scoringScenarioId")]/@value)[1] with "252"')
WHERE JobId = '94DB32B1-8792-418A-A5E1-DCE34F9D0B6D'
GO

UPDATE Jobs
SET XmlDoc.modify('replace value of(/Job/@currentStep)[1] with "REFERENCE_JOB"')
WHERE JobId = '94DB32B1-8792-418A-A5E1-DCE34F9D0B6D'

UPDATE Jobs
SET XmlDoc.modify('replace value of(/Job/@resumeAfter)[1] with ""')
WHERE JobId = '94DB32B1-8792-418A-A5E1-DCE34F9D0B6D'

UPDATE Jobs
SET XmlDoc.modify('replace value of(/Job/@status)[1] with "ACTIVE"')
WHERE JobId = '94DB32B1-8792-418A-A5E1-DCE34F9D0B6D'

GO
