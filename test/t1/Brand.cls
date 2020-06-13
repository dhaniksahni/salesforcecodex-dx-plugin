public with sharing class Brand {

  //save record
  public void saveBrand(string name) {
    try 
    {
        BrandSelector objRecord=new BrandSelector();
        Brand record=objRecord.getByName(name);

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