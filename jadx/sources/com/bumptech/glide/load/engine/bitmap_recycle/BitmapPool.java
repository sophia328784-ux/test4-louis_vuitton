package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes2.dex */
public interface BitmapPool {
    void a(int i2);

    void b();

    Bitmap c(int i2, int i3, Bitmap.Config config);

    void d(Bitmap bitmap);

    Bitmap e(int i2, int i3, Bitmap.Config config);
}
