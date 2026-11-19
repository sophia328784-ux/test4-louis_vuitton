package com.otaliastudios.cameraview.controls;

/* JADX INFO: loaded from: classes3.dex */
public enum Hdr implements Control {
    OFF(0),
    ON(1);

    private int value;
    static final Hdr DEFAULT = OFF;

    Hdr(int i2) {
        this.value = i2;
    }

    public static Hdr a(int i2) {
        for (Hdr hdr : values()) {
            if (hdr.value == i2) {
                return hdr;
            }
        }
        return DEFAULT;
    }

    public final int b() {
        return this.value;
    }
}
