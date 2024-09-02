package com.chamith.ors.util;

import java.security.SecureRandom;

public class IdGenerator {
    private static final int LOWER_BOUND = 11111;
    private static final int UPPER_BOUND = 99999;
    private static final SecureRandom SECURE_RANDOM = new SecureRandom();

    public static String getId() {
        int nextInt = SECURE_RANDOM.nextInt(LOWER_BOUND, UPPER_BOUND);
        return String.valueOf(nextInt);
    }
}
