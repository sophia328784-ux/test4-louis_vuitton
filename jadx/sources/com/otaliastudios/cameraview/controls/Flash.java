package com.otaliastudios.cameraview.controls;

/* JADX INFO: loaded from: classes3.dex */
public enum Flash implements Control {
    OFF(0),
    ON(1),
    AUTO(2),
    TORCH(3);

    private int value;
    static final Flash DEFAULT = OFF;

    Flash(int i2) {
        this.value = i2;
    }

    public static Flash a(int i2) {
        for (Flash flash : values()) {
            if (flash.value == i2) {
                return flash;
            }
        }
        return DEFAULT;
    }

    public final int b() {
        return this.value;
    }
}
