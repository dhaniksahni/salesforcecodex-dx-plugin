 public with sharing class BrandSelector extends ObjectSelector {
    
    public Brand()
    {
        objectName= '{{entityName}}';
		    fieldNames=BrandConstant.Brand_EXIST_QUERY_FIELD;
    }

    public List<Brand> selectByName(string name, string query)
    {
        fieldNames=BrandConstant.Brand_NAME_QUERY;   
        if(string.isNotBlank(query))
        {
        	fieldNames=query;    
        }
        whereCondition='Active__c=true AND Name=\''+name+'\'';
        return (List<Brand>)selector();
    }
}