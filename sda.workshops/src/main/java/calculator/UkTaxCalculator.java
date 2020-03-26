package calculator;

import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Component;

@Component
@Profile("UK")
@Primary
public class UkTaxCalculator implements TaxCalculator {

    public Integer calculate(Integer amount){
        return 2*amount;
    }
}
