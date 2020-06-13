 public with sharing class {{objectName}}Selector extends ObjectSelector {
    
    public {{objectName}}()
    {
        objectName= '{{entityName}}';
		    fieldNames={{objectName}}Constant.{{objectName}}_EXIST_QUERY_FIELD;
    }

    public List<{{objectName}}> selectByName(string name, string query)
    {
        fieldNames={{objectName}}Constant.{{objectName}}_NAME_QUERY;   
        if(string.isNotBlank(query))
        {
        	fieldNames=query;    
        }
        whereCondition='Active__c=true AND Name=\''+name+'\'';
        return (List<{{objectName}}>)selector();
    }
}