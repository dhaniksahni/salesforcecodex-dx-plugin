@isTest
private class BrandTest {

    @isTest
    static void saveBrandTest() {
        Brand demo = new Brand();
        demo.saveBrand('hello');
        System.assertEquals(demo.getAppVersion(), '1.0.0');
    }
}