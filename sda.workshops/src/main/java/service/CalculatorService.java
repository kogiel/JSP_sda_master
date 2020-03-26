package service;

        import calculator.TaxCalculator;
        import org.springframework.beans.factory.annotation.Autowired;
        import org.springframework.beans.factory.annotation.Qualifier;
        import org.springframework.stereotype.Service;

@Service
public class CalculatorService {
    @Autowired
    TaxCalculator taxCalculator;

    public Integer getCalculatedTax(Integer amount) {
        return taxCalculator.calculate(amount);
    }
}
