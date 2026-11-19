package com.otaliastudios.cameraview.controls;

/* JADX INFO: loaded from: classes3.dex */
public enum Mode implements Control {
    PICTURE(0),
    VIDEO(1);

    private int value;
    static final Mode DEFAULT = PICTURE;

    Mode(int i2) {
        this.value = i2;
    }

    public static Mode a(int i2) {
        for (Mode mode : values()) {
            if (mode.value == i2) {
                return mode;
            }
        }
        return DEFAULT;
    }

    public final int b() {
        return this.value;
    }
}
