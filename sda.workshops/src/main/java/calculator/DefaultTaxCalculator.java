package calculator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
@Component
    public class DefaultTaxCalculator implements TaxCalculator {
    private Integer multiplier;
    private TaxCalculatorHelper taxCalculatorHelper;

 //   public  DefaultTaxCalculator(){
  //      this(0);
  //  }

    public DefaultTaxCalculator(Integer multiplier, TaxCalculatorHelper taxCalculatorHelper) {
        this.multiplier = multiplier;
        this.taxCalculatorHelper = taxCalculatorHelper;
    }

    public Integer calculate(Integer amount) {
        taxCalculatorHelper.help();
        return multiplier*amount;
  }
    @Autowired
    public void setTaxCalculatorHelper(TaxCalculatorHelper taxCalculatorHelper) {
        this.taxCalculatorHelper = taxCalculatorHelper;
    }
}
