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
