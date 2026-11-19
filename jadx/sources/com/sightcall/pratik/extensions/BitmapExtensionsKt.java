package com.sightcall.pratik.extensions;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u001a\u0010\u0004\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006\u001a\u001e\u0010\b\u001a\u00020\t*\u00020\u00012\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u0003¨\u0006\r"}, d2 = {"rotate", "Landroid/graphics/Bitmap;", "degrees", "", "crop", "widthPercent", "", "heightPercent", "toBase64", "", "format", "Landroid/graphics/Bitmap$CompressFormat;", "quality", "pratik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class BitmapExtensionsKt {
    public static final Bitmap crop(Bitmap bitmap, float f2, float f3) {
        bitmap.getClass();
        int width = (int) (bitmap.getWidth() * f2);
        int height = (int) (bitmap.getHeight() * f3);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, (bitmap.getWidth() - width) / 2, (bitmap.getHeight() - height) / 2, width, height);
        bitmapCreateBitmap.getClass();
        return bitmapCreateBitmap;
    }

    public static final Bitmap rotate(Bitmap bitmap, int i2) {
        bitmap.getClass();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Matrix matrix = new Matrix();
        matrix.setRotate(i2);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, width, height, matrix, true);
        bitmapCreateBitmap.getClass();
        return bitmapCreateBitmap;
    }

    public static final String toBase64(Bitmap bitmap, Bitmap.CompressFormat compressFormat, int i2) throws IOException {
        bitmap.getClass();
        compressFormat.getClass();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(compressFormat, i2, byteArrayOutputStream);
        String strEncodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
        byteArrayOutputStream.close();
        strEncodeToString.getClass();
        return strEncodeToString;
    }

    public static /* synthetic */ String toBase64$default(Bitmap bitmap, Bitmap.CompressFormat compressFormat, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            compressFormat = Bitmap.CompressFormat.JPEG;
        }
        if ((i3 & 2) != 0) {
            i2 = 95;
        }
        return toBase64(bitmap, compressFormat, i2);
    }
}
