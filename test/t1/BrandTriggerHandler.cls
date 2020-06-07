public with sharing class BrandTriggerHandler extends BaseTrigger
{
    private integer BatchSize = 0;    
    public static boolean IsFromBachJob ;
    public static boolean isFromUploadAPI=false;
    
    public BrandTriggerHandler(boolean isExecuting, integer size)
    {
        m_isExecuting = isExecuting;
        BatchSize = size;
    }      

    public void OnBeforeInsert(List<Brand__c> records)
    {
        system.debug('Trigger On Before Insert');
    }
    public void OnAfterInsert(List<Brand__c> records)
    {
        system.debug('Trigger On After Insert');
    }
    public void OnAfterUpdate( List<Brand__c> newRecords, List<Brand__c> oldRecords, Map<ID, Brand__c> newRecordMap , Map<ID, Brand__c> oldRecordMap)
    {
        system.debug('Trigger On After Update ');
    }
    public void OnBeforeUpdate( List<Brand__c> newRecords, List<Brand__c> oldRecords, Map<ID, Brand__c> newRecordMap , Map<ID, Brand__c> oldRecordMap)
    {
        system.debug('Trigger On Before Update ');
    }
} 