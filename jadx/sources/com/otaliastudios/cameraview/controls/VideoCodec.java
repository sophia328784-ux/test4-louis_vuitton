package com.otaliastudios.cameraview.controls;

/* JADX INFO: loaded from: classes3.dex */
public enum VideoCodec implements Control {
    DEVICE_DEFAULT(0),
    H_263(1),
    H_264(2);

    private int value;
    static final VideoCodec DEFAULT = DEVICE_DEFAULT;

    VideoCodec(int i2) {
        this.value = i2;
    }

    public static VideoCodec a(int i2) {
        for (VideoCodec videoCodec : values()) {
            if (videoCodec.value == i2) {
                return videoCodec;
            }
        }
        return DEFAULT;
    }

    public final int b() {
        return this.value;
    }
}
