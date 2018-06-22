public class myExchangeRateController {
 private final CurrencyType rate;
    
    public myExchangeRateController() {
       rate = ([Select Id, ConversionRate From CurrencyType Where IsoCode = 'GBP']);
    }
    
    public CurrencyType getRate() {
       
        return rate;
    }
 
     public Double getAmount() {
       
       double amount = rate.ConversionRate;
       //double actualAmountInUSD =2240;
       double actualAmountInUSD =2800;
       double convertedAmount = actualAmountInUSD *amount; 
       system.debug('*******'+amount );
       return convertedAmount ;
    }

 
 
 
}