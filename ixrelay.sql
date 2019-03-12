SELECT [EventId]
      ,[EventType]
      ,[Status]
      ,[Dispatcher]
      ,[XmlDoc]
      ,[Created]
      ,[LastUpdated]
     -- ,XmlDoc.value('(/Event/id)[1]', 'VARCHAR(32)') AS Quote
      --,XmlDoc.value('(/Event/PolicyProcessingVendorInstance)[1]', 'VARCHAR(30)') AS SOR
  FROM [IXRELAY_CRU4].[dbo].[Events]WITH(NOLOCK)
  WHERE (EventType='policy.updated.bound')
  AND Created > '2015-10-11'
  AND Created < '2015-12-23'
  AND XmlDoc.value('(/Event/policyId)[1]', 'VARCHAR(32)') IN (
--'60850240fbe44111ae3bac2e16c7fbe0',
--'c3aa2a3cbe514029b33022117d69fad3'
--'41ce279426ce42aeb60dd134aae61e9d'
--'dae34e8178134f7485487317ef0c502b'
--'0bc98e9989204a77952c27636bbee516'
--'4fe1585e0d6c48638a17c31f3a30a10a'
--'061a04c184e1457e9497f658d8777f89'
'3b985de0e3234f59b473db602da16013'
--'44373'
)
  ORDER by Created DESC
GO
