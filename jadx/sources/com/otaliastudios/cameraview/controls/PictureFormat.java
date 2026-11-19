package com.otaliastudios.cameraview.controls;

/* JADX INFO: loaded from: classes3.dex */
public enum PictureFormat implements Control {
    JPEG(0),
    DNG(1);

    private int value;
    static final PictureFormat DEFAULT = JPEG;

    PictureFormat(int i2) {
        this.value = i2;
    }

    public static PictureFormat a(int i2) {
        for (PictureFormat pictureFormat : values()) {
            if (pictureFormat.value == i2) {
                return pictureFormat;
            }
        }
        return DEFAULT;
    }

    public final int b() {
        return this.value;
    }
}
