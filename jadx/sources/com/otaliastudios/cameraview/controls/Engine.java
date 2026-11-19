package com.otaliastudios.cameraview.controls;

/* JADX INFO: loaded from: classes3.dex */
public enum Engine implements Control {
    CAMERA1(0),
    CAMERA2(1);

    private int value;
    static final Engine DEFAULT = CAMERA1;

    Engine(int i2) {
        this.value = i2;
    }

    public static Engine a(int i2) {
        for (Engine engine : values()) {
            if (engine.value == i2) {
                return engine;
            }
        }
        return DEFAULT;
    }

    public final int b() {
        return this.value;
    }
}
