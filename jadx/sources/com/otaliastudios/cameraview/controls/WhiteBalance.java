package com.otaliastudios.cameraview.controls;

/* JADX INFO: loaded from: classes3.dex */
public enum WhiteBalance implements Control {
    AUTO(0),
    INCANDESCENT(1),
    FLUORESCENT(2),
    DAYLIGHT(3),
    CLOUDY(4);

    private int value;
    static final WhiteBalance DEFAULT = AUTO;

    WhiteBalance(int i2) {
        this.value = i2;
    }

    public static WhiteBalance a(int i2) {
        for (WhiteBalance whiteBalance : values()) {
            if (whiteBalance.value == i2) {
                return whiteBalance;
            }
        }
        return DEFAULT;
    }

    public final int b() {
        return this.value;
    }
}
