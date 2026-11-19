package com.perfectcorp.perfectlib.core;

import android.graphics.Bitmap;
import com.perfectcorp.common.utility.Bitmaps;
import com.perfectcorp.perfectlib.jniproxy.CImageBuffer;
import com.perfectcorp.perfectlib.jniproxy.CommonJNI;
import com.perfectcorp.perfectlib.jniproxy.PixelFormat;
import defpackage.az;
import defpackage.md;

/* JADX INFO: loaded from: classes3.dex */
public abstract class ImageBufferBridge {
    public static CImageBuffer a(Bitmap bitmap) {
        if (bitmap.getConfig() != Bitmap.Config.ARGB_8888) {
            az.r("The bitmap config is ", bitmap.getConfig(), ". But it must be ARGB_8888.");
            return null;
        }
        CImageBuffer cImageBuffer = new CImageBuffer(PixelFormat.Format32bppRGBA);
        if (!CommonJNI.CImageBuffer_AttachAndroidBitmap(cImageBuffer.f40390a, cImageBuffer, bitmap)) {
            md.k("Couldn't attach to bitmap. ".concat(Bitmaps.c(bitmap)));
            return null;
        }
        if (CommonJNI.CImageBuffer_SwapColorChannel__SWIG_0(cImageBuffer.f40390a, cImageBuffer)) {
            return cImageBuffer;
        }
        md.k("SwapColorChannel() failed.");
        return null;
    }
}
