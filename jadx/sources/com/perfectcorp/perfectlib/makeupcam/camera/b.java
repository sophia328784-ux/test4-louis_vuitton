package com.perfectcorp.perfectlib.makeupcam.camera;

import android.graphics.PointF;

/* JADX INFO: loaded from: classes3.dex */
class b {
    byte[] feather_data;
    int mode;
    PointF model_eyebrow_head;
    PointF model_eyebrow_lower1;
    PointF model_eyebrow_lower2;
    PointF model_eyebrow_lower3;
    PointF model_eyebrow_tail;
    PointF model_eyebrow_top;
    PointF model_eyebrow_upper1;
    PointF model_eyebrow_upper2;
    PointF model_eyebrow_upper3;
    byte[] data = null;
    int width = 0;
    int height = 0;
    int stride = 0;

    public void AllocByteArray(int i2, int i3, int i4) {
        if (this.width == i2 && this.height == i3) {
            return;
        }
        this.width = i2;
        this.height = i3;
        int i5 = i2 * i4;
        this.stride = i5;
        this.data = new byte[i5 * i3];
    }
}
