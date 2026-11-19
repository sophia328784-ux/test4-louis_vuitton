package com.otaliastudios.cameraview.controls;

/* JADX INFO: loaded from: classes3.dex */
public enum AudioCodec implements Control {
    DEVICE_DEFAULT(0),
    AAC(1),
    HE_AAC(2),
    AAC_ELD(3);

    private int value;
    static final AudioCodec DEFAULT = DEVICE_DEFAULT;

    AudioCodec(int i2) {
        this.value = i2;
    }

    public static AudioCodec a(int i2) {
        for (AudioCodec audioCodec : values()) {
            if (audioCodec.value == i2) {
                return audioCodec;
            }
        }
        return DEFAULT;
    }

    public final int b() {
        return this.value;
    }
}
