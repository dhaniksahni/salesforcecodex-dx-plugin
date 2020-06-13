@isTest
private class {{objectName}}Test {

    @isTest
    static void save{{objectName}}Test() {
        {{objectName}} demo = new {{objectName}}();
        demo.save{{objectName}}('hello');
        System.assertEquals(demo.getAppVersion(), '1.0.0');
    }
}