package com.perfectcorp.common.utility;

import android.graphics.Bitmap;
import android.graphics.Matrix;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ImageUtils {
    public static void a(int i2, int i3, int i4, int[] iArr) {
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        Bitmap bitmapA = Bitmaps.a(i2, i3);
        bitmapA.setPixels(iArr, 0, i4, 0, 0, i2, i3);
        Matrix matrix = new Matrix();
        matrix.preScale(-1.0f, 1.0f);
        Bitmap bitmapB = Bitmaps.b(bitmapA, 0, bitmapA.getWidth(), bitmapA.getHeight(), matrix);
        bitmapB.getPixels(iArr, 0, bitmapB.getWidth(), 0, 0, bitmapB.getWidth(), bitmapB.getHeight());
        b(bitmapB);
    }

    public static final void b(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        try {
            bitmap.recycle();
        } catch (Exception unused) {
        }
    }
}
