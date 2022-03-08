delete from [dbo].[TaskGroup] where taskgroupid <=0;            
            
SET IDENTITY_INSERT [dbo].[TaskGroup] ON
INSERT INTO [dbo].[TaskGroup] ([TaskGroupId],[TaskGroupName],[SubjectAreaId], [TaskGroupPriority],[TaskGroupConcurrency],[TaskGroupJSON],[ActiveYN])
Values (-1,'Test Tasks',1, 0,10,null,1)

INSERT INTO [dbo].[TaskGroup] ([TaskGroupId],[TaskGroupName],[SubjectAreaId], [TaskGroupPriority],[TaskGroupConcurrency],[TaskGroupJSON],[ActiveYN])
Values (-2,'Test Tasks2',1, 0,10,null,1)

INSERT INTO [dbo].[TaskGroup] ([TaskGroupId],[TaskGroupName],[SubjectAreaId], [TaskGroupPriority],[TaskGroupConcurrency],[TaskGroupJSON],[ActiveYN])
Values (-3,'Test Tasks3',1, 0,10,null,1)

INSERT INTO [dbo].[TaskGroup] ([TaskGroupId],[TaskGroupName],[SubjectAreaId], [TaskGroupPriority],[TaskGroupConcurrency],[TaskGroupJSON],[ActiveYN])
Values (-4,'Test Tasks4',1, 0,10,null,1)

SET IDENTITY_INSERT [dbo].[TaskGroup] OFF

delete from [dbo].[TaskMaster] where taskmasterid <=0;

delete from [dbo].[TaskInstance] where taskmasterid <=0;




                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        0                          ,
        '[0]  File copy between datalake zones of SalesLT.Customer*.parquet (Binary) from ADLS to ADLS SalesLT.Customer.parquet (Binary)'                      ,
        2                            ,
        -1                           ,
        4                      ,
        4                        ,
        4                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "SalesLT.Customer*.parquet",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "SalesLT.Customer*.json",
        "Type": "Binary"
    },
    "Target": {
        "DataFileName": "SalesLT.Customer.parquet",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "/Tests/Azure Storage to Azure Storage/0",
        "SchemaFileName": "SalesLT.Customer.json",
        "Type": "Binary"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -1                          ,
        '[1]  File copy between datalake zones of SalesLT.Customer*.parquet (Binary) from ADLS to ADLS SalesLT.Customer.parquet (Binary)'                      ,
        2                            ,
        -1                           ,
        4                      ,
        4                        ,
        4                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "SalesLT.Customer*.parquet",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "SalesLT.Customer*.json",
        "Type": "Binary"
    },
    "Target": {
        "DataFileName": "SalesLT.Customer.parquet",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "/Tests/Azure Storage to Azure Storage/1",
        "SchemaFileName": "SalesLT.Customer.json",
        "Type": "Binary"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -2                          ,
        '[2]  Folder copy between datalake zones of *.* (Binary) from ADLS to ADLS  (Binary)'                      ,
        2                            ,
        -1                           ,
        4                      ,
        4                        ,
        4                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "*.*",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "",
        "Type": "Binary"
    },
    "Target": {
        "DataFileName": "",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "/Tests/Azure Storage to Azure Storage/2",
        "SchemaFileName": "",
        "Type": "Binary"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -3                          ,
        '[3]  File copy between datalake zones of yellow_tripdata_2017-03.xlsx (Excel) from ADLS to ADLS yellow_tripdata_2017-03.parquet (Parquet)'                      ,
        2                            ,
        -2                           ,
        4                      ,
        4                        ,
        4                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "yellow_tripdata_2017-03.xlsx",
        "DeleteAfterCompletion": "false",
        "FirstRowAsHeader": "true",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "",
        "SheetName": "yellow_tripdata_2017-03",
        "SkipLineCount": "",
        "Type": "Excel"
    },
    "Target": {
        "DataFileName": "yellow_tripdata_2017-03.parquet",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "/Tests/Azure Storage to SQL Database/3",
        "SchemaFileName": "",
        "Type": "Parquet"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -4                          ,
        '[4]  File copy between datalake zones of yellow_tripdata_2017-03.xlsx (Excel) from ADLS to ADLS yellow_tripdata_2017-03.csv (DelimitedText)'                      ,
        2                            ,
        -2                           ,
        4                      ,
        4                        ,
        4                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "yellow_tripdata_2017-03.xlsx",
        "DeleteAfterCompletion": "false",
        "FirstRowAsHeader": "true",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "",
        "SheetName": "yellow_tripdata_2017-03",
        "SkipLineCount": "",
        "Type": "Excel"
    },
    "Target": {
        "DataFileName": "yellow_tripdata_2017-03.csv",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "/Tests/Azure Storage to Azure Storage/4",
        "SchemaFileName": "",
        "Type": "DelimitedText"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -5                          ,
        '[5]  File copy between datalake zones of yellow_tripdata_2017-03.xlsx (Excel) from ADLS to ADLS yellow_tripdata_2017-03.json (Json)'                      ,
        2                            ,
        -3                           ,
        4                      ,
        4                        ,
        4                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "yellow_tripdata_2017-03.xlsx",
        "DeleteAfterCompletion": "false",
        "FirstRowAsHeader": "true",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "",
        "SheetName": "yellow_tripdata_2017-03",
        "SkipLineCount": "",
        "Type": "Excel"
    },
    "Target": {
        "DataFileName": "yellow_tripdata_2017-03.json",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "/Tests/Azure Storage to Azure Storage/5",
        "SchemaFileName": "",
        "Type": "Json"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -6                          ,
        '[6]  File copy from data lake to FileServer of yellow_tripdata_2017-03.xlsx (Binary) from ADLS to FileServer yellow_tripdata_2017-03.xlsx (Binary)'                      ,
        2                            ,
        -2                           ,
        4                      ,
        4                        ,
        15                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "yellow_tripdata_2017-03.xlsx",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "",
        "Type": "Binary"
    },
    "Target": {
        "DataFileName": "yellow_tripdata_2017-03.xlsx",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "c:/Tests/Azure Storage to Azure Storage/6",
        "SchemaFileName": "",
        "Type": "Binary"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -7                          ,
        '[7]  FullLoad of SalesLT.Customer.parquet (Parquet) from ADLS to Azure SQL'                      ,
        1                            ,
        -4                           ,
        4                      ,
        4                        ,
        2                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "SalesLT.Customer.parquet",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "SalesLT.Customer.json",
        "Type": "Parquet"
    },
    "Target": {
        "AutoCreateTable": "true",
        "AutoGenerateMerge": "true",
        "MergeSQL": "",
        "PostCopySQL": "",
        "PreCopySQL": "",
        "StagingTableName": "stg_Customer7",
        "StagingTableSchema": "dbo",
        "TableName": "Customer7",
        "TableSchema": "dbo",
        "Type": "Table"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -8                          ,
        '[8]  FullLoad of SalesLT.Customer.parquet (Parquet) from Azure Blob to Azure SQL'                      ,
        1                            ,
        -2                           ,
        4                      ,
        3                        ,
        2                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "SalesLT.Customer.parquet",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "SalesLT.Customer.json",
        "Type": "Parquet"
    },
    "Target": {
        "AutoCreateTable": "true",
        "AutoGenerateMerge": "true",
        "MergeSQL": "",
        "PostCopySQL": "",
        "PreCopySQL": "",
        "StagingTableName": "stg_Customer8",
        "StagingTableSchema": "dbo",
        "TableName": "Customer8",
        "TableSchema": "dbo",
        "Type": "Table"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -9                          ,
        '[9]  FullLoad of yellow_tripdata_2017-03.xlsx (Excel) from ADLS to Azure SQL'                      ,
        1                            ,
        -2                           ,
        4                      ,
        4                        ,
        2                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "yellow_tripdata_2017-03.xlsx",
        "DeleteAfterCompletion": "false",
        "FirstRowAsHeader": "true",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "",
        "SheetName": "yellow_tripdata_2017-03",
        "SkipLineCount": 0,
        "Type": "Excel"
    },
    "Target": {
        "AutoCreateTable": "true",
        "AutoGenerateMerge": "false",
        "MergeSQL": "",
        "PostCopySQL": "",
        "PreCopySQL": "",
        "StagingTableName": "stg_yellow_tripdata9",
        "StagingTableSchema": "dbo",
        "TableName": "yellow_tripdata9",
        "TableSchema": "dbo",
        "Type": "Table"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -10                          ,
        '[10]  FullLoad of yellow_tripdata_2017-03.xlsx (Excel) from Azure Blob to Azure SQL'                      ,
        1                            ,
        -2                           ,
        4                      ,
        3                        ,
        2                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "yellow_tripdata_2017-03.xlsx",
        "DeleteAfterCompletion": "false",
        "FirstRowAsHeader": "true",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "",
        "SheetName": "yellow_tripdata_2017-03",
        "SkipLineCount": 0,
        "Type": "Excel"
    },
    "Target": {
        "AutoCreateTable": "true",
        "AutoGenerateMerge": "false",
        "MergeSQL": "",
        "PostCopySQL": "",
        "PreCopySQL": "",
        "StagingTableName": "stg_yellow_tripdata10",
        "StagingTableSchema": "dbo",
        "TableName": "yellow_tripdata10",
        "TableSchema": "dbo",
        "Type": "Table"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -11                          ,
        '[11]  FullLoad of yellow_tripdata_2017-03.csv (Csv) from Azure Blob to Azure SQL'                      ,
        1                            ,
        -1                           ,
        4                      ,
        3                        ,
        2                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "yellow_tripdata_2017-03.csv",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "",
        "Type": "Csv"
    },
    "Target": {
        "AutoCreateTable": "true",
        "AutoGenerateMerge": "false",
        "MergeSQL": "",
        "PostCopySQL": "",
        "PreCopySQL": "",
        "StagingTableName": "stg_yellow_tripdata11",
        "StagingTableSchema": "dbo",
        "TableName": "yellow_tripdata11",
        "TableSchema": "dbo",
        "Type": "Table"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -12                          ,
        '[12]  FullLoad of yellow_tripdata_2017-03.json (Json) from Azure Blob to Azure SQL'                      ,
        1                            ,
        -2                           ,
        4                      ,
        3                        ,
        2                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "yellow_tripdata_2017-03.json",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "",
        "Type": "Json"
    },
    "Target": {
        "AutoCreateTable": "true",
        "AutoGenerateMerge": "false",
        "MergeSQL": "",
        "PostCopySQL": "",
        "PreCopySQL": "",
        "StagingTableName": "stg_yellow_tripdata12",
        "StagingTableSchema": "dbo",
        "TableName": "yellow_tripdata12",
        "TableSchema": "dbo",
        "Type": "Table"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -13                          ,
        '[13]  FullLoad of yellow_tripdata_2017-03.csv (Csv) from ADLS to Azure SQL'                      ,
        1                            ,
        -2                           ,
        4                      ,
        4                        ,
        2                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "yellow_tripdata_2017-03.csv",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "",
        "Type": "Csv"
    },
    "Target": {
        "AutoCreateTable": "true",
        "AutoGenerateMerge": "false",
        "MergeSQL": "",
        "PostCopySQL": "",
        "PreCopySQL": "",
        "StagingTableName": "stg_yellow_tripdata13",
        "StagingTableSchema": "dbo",
        "TableName": "yellow_tripdata13",
        "TableSchema": "dbo",
        "Type": "Table"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -14                          ,
        '[14]  FullLoad of yellow_tripdata_2017-03.json (Json) from ADLS to Azure SQL'                      ,
        1                            ,
        -4                           ,
        4                      ,
        4                        ,
        2                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "yellow_tripdata_2017-03.json",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "",
        "Type": "Json"
    },
    "Target": {
        "AutoCreateTable": "true",
        "AutoGenerateMerge": "false",
        "MergeSQL": "",
        "PostCopySQL": "",
        "PreCopySQL": "",
        "StagingTableName": "stg_yellow_tripdata14",
        "StagingTableSchema": "dbo",
        "TableName": "yellow_tripdata14",
        "TableSchema": "dbo",
        "Type": "Table"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -15                          ,
        '[15]  FullLoad of SalesLT.Customer.parquet (Parquet) from ADLS to Azure Synapse'                      ,
        1                            ,
        -1                           ,
        4                      ,
        4                        ,
        10                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "SalesLT.Customer.parquet",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "SalesLT.Customer.json",
        "Type": "Parquet"
    },
    "Target": {
        "AutoCreateTable": "true",
        "AutoGenerateMerge": "true",
        "MergeSQL": "",
        "PostCopySQL": "",
        "PreCopySQL": "",
        "StagingTableName": "stg_Customer15",
        "StagingTableSchema": "dbo",
        "TableName": "Customer15",
        "TableSchema": "dbo",
        "Type": "Table"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -16                          ,
        '[16]  FullLoad of SalesLT.Customer.parquet (Parquet) from Azure Blob to Azure Synapse'                      ,
        1                            ,
        -1                           ,
        4                      ,
        3                        ,
        10                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "SalesLT.Customer.parquet",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "SalesLT.Customer.json",
        "Type": "Parquet"
    },
    "Target": {
        "AutoCreateTable": "true",
        "AutoGenerateMerge": "true",
        "MergeSQL": "",
        "PostCopySQL": "",
        "PreCopySQL": "",
        "StagingTableName": "stg_Customer16",
        "StagingTableSchema": "dbo",
        "TableName": "Customer16",
        "TableSchema": "dbo",
        "Type": "Table"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -17                          ,
        '[17]  FullLoad of yellow_tripdata_2017-03.xlsx (Excel) from ADLS to Azure Synapse'                      ,
        1                            ,
        -4                           ,
        4                      ,
        4                        ,
        10                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "yellow_tripdata_2017-03.xlsx",
        "DeleteAfterCompletion": "false",
        "FirstRowAsHeader": "true",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "",
        "SheetName": "yellow_tripdata_2017-03",
        "SkipLineCount": 0,
        "Type": "Excel"
    },
    "Target": {
        "AutoCreateTable": "true",
        "AutoGenerateMerge": "false",
        "MergeSQL": "",
        "PostCopySQL": "",
        "PreCopySQL": "",
        "StagingTableName": "stg_yellow_tripdata17",
        "StagingTableSchema": "dbo",
        "TableName": "yellow_tripdata17",
        "TableSchema": "dbo",
        "Type": "Table"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -18                          ,
        '[18]  FullLoad of yellow_tripdata_2017-03.xlsx (Excel) from Azure Blob to Azure Synapse'                      ,
        1                            ,
        -3                           ,
        4                      ,
        3                        ,
        10                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "yellow_tripdata_2017-03.xlsx",
        "DeleteAfterCompletion": "false",
        "FirstRowAsHeader": "true",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "",
        "SheetName": "yellow_tripdata_2017-03",
        "SkipLineCount": 0,
        "Type": "Excel"
    },
    "Target": {
        "AutoCreateTable": "true",
        "AutoGenerateMerge": "false",
        "MergeSQL": "",
        "PostCopySQL": "",
        "PreCopySQL": "",
        "StagingTableName": "stg_yellow_tripdata18",
        "StagingTableSchema": "dbo",
        "TableName": "yellow_tripdata18",
        "TableSchema": "dbo",
        "Type": "Table"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -19                          ,
        '[19]  FullLoad of yellow_tripdata_2017-03.csv (Csv) from Azure Blob to Azure Synapse'                      ,
        1                            ,
        -3                           ,
        4                      ,
        3                        ,
        10                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "yellow_tripdata_2017-03.csv",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "",
        "Type": "Csv"
    },
    "Target": {
        "AutoCreateTable": "true",
        "AutoGenerateMerge": "false",
        "MergeSQL": "",
        "PostCopySQL": "",
        "PreCopySQL": "",
        "StagingTableName": "stg_yellow_tripdata19",
        "StagingTableSchema": "dbo",
        "TableName": "yellow_tripdata19",
        "TableSchema": "dbo",
        "Type": "Table"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -20                          ,
        '[20]  FullLoad of yellow_tripdata_2017-03.json (Json) from Azure Blob to Azure Synapse'                      ,
        1                            ,
        -4                           ,
        4                      ,
        3                        ,
        10                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "yellow_tripdata_2017-03.json",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "",
        "Type": "Json"
    },
    "Target": {
        "AutoCreateTable": "true",
        "AutoGenerateMerge": "false",
        "MergeSQL": "",
        "PostCopySQL": "",
        "PreCopySQL": "",
        "StagingTableName": "stg_yellow_tripdata20",
        "StagingTableSchema": "dbo",
        "TableName": "yellow_tripdata20",
        "TableSchema": "dbo",
        "Type": "Table"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -21                          ,
        '[21]  FullLoad of yellow_tripdata_2017-03.csv (Csv) from ADLS to Azure Synapse'                      ,
        1                            ,
        -1                           ,
        4                      ,
        4                        ,
        10                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "yellow_tripdata_2017-03.csv",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "",
        "Type": "Csv"
    },
    "Target": {
        "AutoCreateTable": "true",
        "AutoGenerateMerge": "false",
        "MergeSQL": "",
        "PostCopySQL": "",
        "PreCopySQL": "",
        "StagingTableName": "stg_yellow_tripdata21",
        "StagingTableSchema": "dbo",
        "TableName": "yellow_tripdata21",
        "TableSchema": "dbo",
        "Type": "Table"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -22                          ,
        '[22]  FullLoad of yellow_tripdata_2017-03.json (Json) from ADLS to Azure Synapse'                      ,
        1                            ,
        -4                           ,
        4                      ,
        4                        ,
        10                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "DataFileName": "yellow_tripdata_2017-03.json",
        "DeleteAfterCompletion": "false",
        "MaxConcurrentConnections": 0,
        "Recursively": "false",
        "RelativePath": "samples/",
        "SchemaFileName": "",
        "Type": "Json"
    },
    "Target": {
        "AutoCreateTable": "true",
        "AutoGenerateMerge": "false",
        "MergeSQL": "",
        "PostCopySQL": "",
        "PreCopySQL": "",
        "StagingTableName": "stg_yellow_tripdata22",
        "StagingTableSchema": "dbo",
        "TableName": "yellow_tripdata22",
        "TableSchema": "dbo",
        "Type": "Table"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -23                          ,
        '[23]  FullLoad of SalesLT.Customer (Table) from Azure SQL to SalesLT.Customer.parquet in Azure Blob(Parquet)'                      ,
        3                            ,
        -2                           ,
        4                      ,
        1                        ,
        4                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "ChunkField": "",
        "ChunkSize": 0,
        "ExtractionSQL": "",
        "IncrementalType": "Full",
        "TableName": "Customer",
        "TableSchema": "SalesLT",
        "Type": "Table"
    },
    "Target": {
        "DataFileName": "SalesLT.Customer.parquet",
        "RelativePath": "/Tests/SQL Database to Azure Storage/23",
        "SchemaFileName": "SalesLT.Customer.json",
        "Type": "Parquet"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -24                          ,
        '[24]  FullLoad of SalesLT.Customer (Table) from Azure SQL to SalesLT.Customer.parquet in ADLS(Parquet)'                      ,
        3                            ,
        -4                           ,
        4                      ,
        1                        ,
        4                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "ChunkField": "",
        "ChunkSize": 0,
        "ExtractionSQL": "",
        "IncrementalType": "Full",
        "TableName": "Customer",
        "TableSchema": "SalesLT",
        "Type": "Table"
    },
    "Target": {
        "DataFileName": "SalesLT.Customer.parquet",
        "RelativePath": "/Tests/SQL Database to Azure Storage/24",
        "SchemaFileName": "SalesLT.Customer.json",
        "Type": "Parquet"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -25                          ,
        '[25]  FullLoadUsingExtractionSql of SalesLT.Customer (Table) from Azure SQL to SalesLT.Customer.parquet in ADLS(Parquet)'                      ,
        3                            ,
        -4                           ,
        4                      ,
        1                        ,
        4                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "ChunkField": "",
        "ChunkSize": 0,
        "ExtractionSQL": "Select top 10 * from SalesLT.Customer",
        "IncrementalType": "Full",
        "TableName": "Customer",
        "TableSchema": "SalesLT",
        "Type": "Table"
    },
    "Target": {
        "DataFileName": "SalesLT.Customer.parquet",
        "RelativePath": "/Tests/SQL Database to Azure Storage/25",
        "SchemaFileName": "SalesLT.Customer.json",
        "Type": "Parquet"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -26                          ,
        '[26]  FullLoadWithChunk of SalesLT.Customer (Table) from Azure SQL to SalesLT.Customer.parquet in ADLS(Parquet)'                      ,
        3                            ,
        -4                           ,
        4                      ,
        1                        ,
        4                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "ChunkField": "CustomerID",
        "ChunkSize": 100,
        "ExtractionSQL": "Select top 10 * from SalesLT.Customer",
        "IncrementalType": "Full",
        "TableName": "Customer",
        "TableSchema": "SalesLT",
        "Type": "Table"
    },
    "Target": {
        "DataFileName": "SalesLT.Customer.parquet",
        "RelativePath": "/Tests/SQL Database to Azure Storage/26",
        "SchemaFileName": "SalesLT.Customer.json",
        "Type": "Parquet"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -27                          ,
        '[27]  IncrementalLoad of SalesLT.Customer (Table) from Azure SQL to SalesLT.Customer.parquet in ADLS(Parquet)'                      ,
        3                            ,
        -4                           ,
        4                      ,
        1                        ,
        4                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "ChunkField": "",
        "ChunkSize": 0,
        "ExtractionSQL": "Select top 10 * from SalesLT.Customer",
        "IncrementalType": "Watermark",
        "TableName": "Customer",
        "TableSchema": "SalesLT",
        "Type": "Table"
    },
    "Target": {
        "DataFileName": "SalesLT.Customer.parquet",
        "RelativePath": "/Tests/SQL Database to Azure Storage/27",
        "SchemaFileName": "SalesLT.Customer.json",
        "Type": "Parquet"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -28                          ,
        '[28]  FullLoad of SalesLT.Customer (Table) from SQL Server to SalesLT.Customer.parquet in Azure Blob(Parquet)'                      ,
        3                            ,
        -1                           ,
        4                      ,
        6                        ,
        4                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "ChunkField": "",
        "ChunkSize": 0,
        "ExtractionSQL": "",
        "IncrementalType": "Full",
        "TableName": "Customer",
        "TableSchema": "SalesLT",
        "Type": "Table"
    },
    "Target": {
        "DataFileName": "SalesLT.Customer.parquet",
        "RelativePath": "/Tests/SQL Database to Azure Storage/28",
        "SchemaFileName": "SalesLT.Customer.json",
        "Type": "Parquet"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -29                          ,
        '[29]  FullLoad of SalesLT.Customer (Table) from SQL Server to SalesLT.Customer.parquet in ADLS(Parquet)'                      ,
        3                            ,
        -1                           ,
        4                      ,
        6                        ,
        4                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "ChunkField": "",
        "ChunkSize": 0,
        "ExtractionSQL": "",
        "IncrementalType": "Full",
        "TableName": "Customer",
        "TableSchema": "SalesLT",
        "Type": "Table"
    },
    "Target": {
        "DataFileName": "SalesLT.Customer.parquet",
        "RelativePath": "/Tests/SQL Database to Azure Storage/29",
        "SchemaFileName": "SalesLT.Customer.json",
        "Type": "Parquet"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
                                        
    SET IDENTITY_INSERT [dbo].[TaskMaster] ON;
    insert into [dbo].[TaskMaster]
    (
        [TaskMasterId]                          ,
        [TaskMasterName]                        ,
        [TaskTypeId]                            ,
        [TaskGroupId]                           ,
        [ScheduleMasterId]                      ,
        [SourceSystemId]                        ,
        [TargetSystemId]                        ,
        [DegreeOfCopyParallelism]               ,
        [AllowMultipleActiveInstances]          ,
        [TaskDatafactoryIR]                     ,
        [TaskMasterJSON]                        ,
        [ActiveYN]                              ,
        [DependencyChainTag]                    ,
        [DataFactoryId]                         
    )
    select 
        -30                          ,
        '[30]  FullLoad of SalesLT.Customer (Table) from SQL Server to dbo.all_objects.parquet in ADLS(Parquet)'                      ,
        3                            ,
        -4                           ,
        4                      ,
        6                        ,
        4                        ,
        1               ,
        0          ,
        'Azure'                     ,
        '{
    "Source": {
        "ChunkField": "",
        "ChunkSize": 0,
        "ExtractionSQL": "",
        "IncrementalType": "Full",
        "TableName": "Customer",
        "TableSchema": "SalesLT",
        "Type": "Table"
    },
    "Target": {
        "DataFileName": "dbo.all_objects.parquet",
        "RelativePath": "/Tests/SQL Database to Azure Storage/30",
        "SchemaFileName": "dbo_all_objects.json",
        "Type": "Parquet"
    }
}'                      ,
        0                              ,
        ''                  ,
        1;  
    
    SET IDENTITY_INSERT [dbo].[TaskMaster] OFF;        
    
    
