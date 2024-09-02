package com.chamith.ors.util;

import java.security.SecureRandom;

import org.springframework.beans.factory.annotation.Autowired;

public class IdGenerator {
    private static final int LOWER_BOUND = 11111;
    private static final int UPPER_BOUND = 99999;

    @Autowired
    private final SecureRandom secureRandom;

    public IdGenerator(SecureRandom secureRandom) {
        this.secureRandom = secureRandom;
    }

    public String getId() {
        int nextInt = secureRandom.nextInt(LOWER_BOUND, UPPER_BOUND);
        return String.valueOf(nextInt);
    }
}
