package com.otaliastudios.cameraview.controls;

/* JADX INFO: loaded from: classes3.dex */
public enum Facing implements Control {
    BACK(0),
    FRONT(1);

    private int value;

    Facing(int i2) {
        this.value = i2;
    }

    public static Facing a(int i2) {
        for (Facing facing : values()) {
            if (facing.value == i2) {
                return facing;
            }
        }
        return null;
    }

    public final int b() {
        return this.value;
    }
}
