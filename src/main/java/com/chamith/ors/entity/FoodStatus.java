package com.chamith.ors.entity;

public enum FoodStatus {
    NOT_AVAILABLE, AVAILABLE;

    public static FoodStatus valueOf(int id) throws IllegalArgumentException {
        if(id<0 || id>1) {
            throw new IllegalArgumentException("Illegal argument has been passed: " + id);
        }

        if(id==1) {
            return AVAILABLE;
        } else {
            return NOT_AVAILABLE;
        }
    }
}
