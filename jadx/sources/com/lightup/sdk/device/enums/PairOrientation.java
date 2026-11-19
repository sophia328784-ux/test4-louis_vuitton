package com.lightup.sdk.device.enums;

/* JADX INFO: loaded from: classes4.dex */
public enum PairOrientation {
    LEFT(0),
    RIGHT(1),
    UNKNOWN(255);

    private int identifier;

    PairOrientation(int i2) {
        this.identifier = i2;
    }

    public static PairOrientation from(byte b2) {
        if (b2 == 0) {
            return LEFT;
        }
        if (b2 == 1) {
            return RIGHT;
        }
        if (b2 == -1) {
            return UNKNOWN;
        }
        return null;
    }

    public int getIdentifier() {
        return this.identifier;
    }
}
