package com.perfectcorp.common.utility;

import android.graphics.Bitmap;
import android.graphics.Matrix;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Bitmaps {

    public static class a extends OutOfMemoryError {
        public a(String str) {
            super(str);
        }
    }

    public static Bitmap a(int i2, int i3) {
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i3, config);
        String str = i2 + "x" + i3 + " " + config;
        if (bitmapCreateBitmap != null) {
            return bitmapCreateBitmap;
        }
        throw new a("Bitmap.createBitmap() returns null: ".concat(str));
    }

    public static Bitmap b(Bitmap bitmap, int i2, int i3, int i4, Matrix matrix) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, i2, i3, i4, matrix, true);
        String str = i3 + "x" + i4 + "+0+" + i2 + " matrix:" + matrix + " filter:true";
        if (bitmapCreateBitmap != null) {
            return bitmapCreateBitmap;
        }
        throw new a("Bitmap.createBitmap() returns null: ".concat(str));
    }

    public static String c(Bitmap bitmap) {
        if (bitmap == null) {
            return "null";
        }
        return bitmap + " [" + bitmap.getWidth() + 'x' + bitmap.getHeight() + ", config=" + bitmap.getConfig() + ", hasAlpha=" + bitmap.hasAlpha() + ", isRecycled=" + bitmap.isRecycled() + ", isMutable=" + bitmap.isMutable() + ']';
    }
}
