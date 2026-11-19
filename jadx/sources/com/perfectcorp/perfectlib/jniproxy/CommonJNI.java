package com.perfectcorp.perfectlib.jniproxy;

import com.perfectcorp.common.a;

/* JADX INFO: loaded from: classes3.dex */
public class CommonJNI {
    static {
        a.a();
    }

    public static final native boolean CImageBuffer_AttachAndroidBitmap(long j2, CImageBuffer cImageBuffer, Object obj);

    public static final native boolean CImageBuffer_DetachAndroidBitmap(long j2, CImageBuffer cImageBuffer);

    public static final native boolean CImageBuffer_SwapColorChannel__SWIG_0(long j2, CImageBuffer cImageBuffer);

    public static final native void delete_CImageBuffer(long j2);

    public static final native long new_CImageBuffer__SWIG_0(int i2);

    public static final native long new_CImageBuffer__SWIG_1();
}
