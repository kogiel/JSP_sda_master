import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import service.CalculatorService;
import spring.SpringConfiguration;

public class Main {
    public static void main(String[] args) {
        System.out.println("TEST");
        AnnotationConfigApplicationContext context =
                new AnnotationConfigApplicationContext(SpringConfiguration.class);
        CalculatorService calculatorService = context.getBean(CalculatorService.class);

        System.out.println(calculatorService.getCalculatedTax(10));
    }
}
