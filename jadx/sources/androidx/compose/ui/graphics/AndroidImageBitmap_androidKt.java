package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import defpackage.mt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-graphics"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidImageBitmap_androidKt {
    public static final Bitmap a(ImageBitmap imageBitmap) {
        if (imageBitmap instanceof AndroidImageBitmap) {
            return ((AndroidImageBitmap) imageBitmap).f8834a;
        }
        mt.i("Unable to obtain android.graphics.Bitmap");
        return null;
    }

    public static final Bitmap.Config b(int i2) {
        ImageBitmapConfig.Companion companion = ImageBitmapConfig.f8892b;
        companion.getClass();
        if (i2 == 0) {
            return Bitmap.Config.ARGB_8888;
        }
        companion.getClass();
        if (i2 == ImageBitmapConfig.f8893c) {
            return Bitmap.Config.ALPHA_8;
        }
        companion.getClass();
        if (i2 == ImageBitmapConfig.d) {
            return Bitmap.Config.RGB_565;
        }
        companion.getClass();
        if (i2 == ImageBitmapConfig.f8894e) {
            return Bitmap.Config.RGBA_F16;
        }
        companion.getClass();
        return i2 == ImageBitmapConfig.f8895f ? Bitmap.Config.HARDWARE : Bitmap.Config.ARGB_8888;
    }
}
