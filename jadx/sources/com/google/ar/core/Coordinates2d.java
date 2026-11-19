package com.google.ar.core;

import defpackage.r81;
import defpackage.z81;

/* JADX INFO: loaded from: classes2.dex */
public enum Coordinates2d {
    TEXTURE_TEXELS(0),
    TEXTURE_NORMALIZED(1),
    IMAGE_PIXELS(2),
    IMAGE_NORMALIZED(3),
    OPENGL_NORMALIZED_DEVICE_COORDINATES(6),
    VIEW(7),
    VIEW_NORMALIZED(8);

    final int nativeCode;

    Coordinates2d(int i2) {
        this.nativeCode = i2;
    }

    public static Coordinates2d forNumber(int i2) {
        for (Coordinates2d coordinates2d : values()) {
            if (coordinates2d.nativeCode == i2) {
                return coordinates2d;
            }
        }
        r81.i(z81.f(String.valueOf(i2).length() + (byte) 49, i2, "Unexpected value for native Coordinates2d, value="));
        return null;
    }
}
