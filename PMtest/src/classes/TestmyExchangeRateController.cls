@isTest
private class TestmyExchangeRateController {
static testMethod void test1(){
     CurrencyType rate = new CurrencyType( ConversionRate=76,  IsoCode = 'GBP');
     //insert rate;
     test.startTest();
     myExchangeRateController ctr= new myExchangeRateController();
     ctr.getAmount();
     ctr.getRate();
     test.stopTest();
 }
 }