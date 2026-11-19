package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Paint;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import defpackage.pq0;
import java.security.MessageDigest;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class CenterCrop extends BitmapTransformation {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f24760b = "com.bumptech.glide.load.resource.bitmap.CenterCrop".getBytes(Key.f24395a);

    @Override // com.bumptech.glide.load.Key
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(f24760b);
    }

    @Override // com.bumptech.glide.load.resource.bitmap.BitmapTransformation
    public final Bitmap c(BitmapPool bitmapPool, Bitmap bitmap, int i2, int i3) {
        float width;
        float fA;
        Paint paint = TransformationUtils.f24815a;
        if (bitmap.getWidth() == i2 && bitmap.getHeight() == i3) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        int width2 = bitmap.getWidth() * i3;
        int height = bitmap.getHeight() * i2;
        float fA2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (width2 > height) {
            width = i3 / bitmap.getHeight();
            fA2 = pq0.a(bitmap.getWidth(), width, i2, 0.5f);
            fA = 0.0f;
        } else {
            width = i2 / bitmap.getWidth();
            fA = pq0.a(bitmap.getHeight(), width, i3, 0.5f);
        }
        matrix.setScale(width, width);
        matrix.postTranslate((int) (fA2 + 0.5f), (int) (fA + 0.5f));
        Bitmap bitmapE = bitmapPool.e(i2, i3, bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888);
        bitmapE.setHasAlpha(bitmap.hasAlpha());
        TransformationUtils.a(bitmap, bitmapE, matrix);
        return bitmapE;
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        return obj instanceof CenterCrop;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        return -599754482;
    }
}
