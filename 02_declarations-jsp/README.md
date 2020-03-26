# Visit Counter

[:bulb: Jest też dostępna polska wersja tego pliku tutaj](README.pl.md)

Example of declaration usage in JSP servlet

## :gear: How to run it?
Follow the instructions mentioned in [hello-world-jsp example](../00_hello-world-jsp/README.md)

## Exercise
Create simulation of throwing coin using following enum:
```
package foo.bar;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public enum CoinSide {
    HEADS,
    TAILS;

    private static final List<CoinSide> VALUES = Collections.unmodifiableList(Arrays.asList(values()));
    private static final int SIZE = VALUES.size();
    private static final Random RANDOM = new Random();

    public static CoinSide flipCoin()  {
        return VALUES.get(RANDOM.nextInt(SIZE));
    }
}
```
2. Now try to present result of `flipCoin` method on your JSP page, each time you refresh your browser new execution of method should happened


