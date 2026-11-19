package com.perfectcorp.perfectlib.makeupcam.camera;

import android.graphics.Point;

/* JADX INFO: loaded from: classes3.dex */
final class o {
    byte[] data;
    Point face_art_roi;
    int height;
    boolean is_enable;
    int stride;
    int width;

    public final void AllocByteArray(int i2, int i3) {
        if (this.width == i2 && this.height == i3) {
            return;
        }
        this.width = i2;
        this.height = i3;
        this.stride = i2 << 2;
        this.data = new byte[(i2 * i3) << 2];
    }
}
