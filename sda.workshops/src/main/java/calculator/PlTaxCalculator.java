package calculator;

import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Component;

@Component
@Profile("PL")
public class PlTaxCalculator implements TaxCalculator{

    public Integer calculate(Integer amount) {
        return 3*amount;
    }
}
