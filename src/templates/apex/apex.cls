public with sharing class {{objectName}} {

  //save record
  public void save{{objectName}}(string name) {
    try 
    {
        {{objectName}}Selector objRecord=new {{objectName}}Selector();
        {{objectName}} record=objRecord.getByName(name);

        if(record!=null)
        {
          //do whatever you want do
        }
    } 
    catch (BaseException ex) {
        ApplicationException.LogException(ex);
    }
    catch (Exception ex) {
        ApplicationException.LogException(ex);
    }
  }
}