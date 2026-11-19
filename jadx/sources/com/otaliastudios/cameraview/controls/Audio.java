package com.otaliastudios.cameraview.controls;

/* JADX INFO: loaded from: classes3.dex */
public enum Audio implements Control {
    OFF(0),
    ON(1),
    MONO(2),
    STEREO(3);

    private int value;
    static final Audio DEFAULT = ON;

    Audio(int i2) {
        this.value = i2;
    }

    public static Audio a(int i2) {
        for (Audio audio : values()) {
            if (audio.value == i2) {
                return audio;
            }
        }
        return DEFAULT;
    }

    public final int b() {
        return this.value;
    }
}
