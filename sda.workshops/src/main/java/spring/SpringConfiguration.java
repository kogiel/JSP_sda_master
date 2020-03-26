package spring;

import calculator.DefaultTaxCalculator;
import calculator.TaxCalculator;
import calculator.TaxCalculatorHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = {"service", "calculator"})
public class SpringConfiguration {
    @Bean()
    public TaxCalculatorHelper taxCalculatorHelper(){
       return new TaxCalculatorHelper();
  }
 @Bean()
    public DefaultTaxCalculator defaultTaxCalculator() {
        return new DefaultTaxCalculator(0 , taxCalculatorHelper());
 }


}
