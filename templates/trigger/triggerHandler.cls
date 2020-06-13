public with sharing class {{objectName}}TriggerHandler extends BaseTrigger
{
    private integer BatchSize = 0;    
    public static boolean IsFromBachJob ;
    public static boolean isFromUploadAPI=false;
    
    public {{objectName}}TriggerHandler(boolean isExecuting, integer size)
    {
        m_isExecuting = isExecuting;
        BatchSize = size;
    }      

    public void OnBeforeInsert(List<{{entityName}}> records)
    {
        system.debug('Trigger On Before Insert');
    }
    public void OnAfterInsert(List<{{entityName}}> records)
    {
        system.debug('Trigger On After Insert');
    }
    public void OnAfterUpdate( List<{{entityName}}> newRecords, List<{{entityName}}> oldRecords, Map<ID, {{entityName}}> newRecordMap , Map<ID, {{entityName}}> oldRecordMap)
    {
        system.debug('Trigger On After Update ');
    }
    public void OnBeforeUpdate( List<{{entityName}}> newRecords, List<{{entityName}}> oldRecords, Map<ID, {{entityName}}> newRecordMap , Map<ID, {{entityName}}> oldRecordMap)
    {
        system.debug('Trigger On Before Update ');
    }
} 