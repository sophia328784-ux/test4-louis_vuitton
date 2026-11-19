package com.perfectcorp.perfectlib.jniproxy;

/* JADX INFO: loaded from: classes3.dex */
public class CImageBuffer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public transient long f40390a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public transient boolean f40391b;

    public CImageBuffer(PixelFormat pixelFormat) {
        this(CommonJNI.new_CImageBuffer__SWIG_0(pixelFormat.a()));
    }

    public final synchronized void a() {
        try {
            long j2 = this.f40390a;
            if (j2 != 0) {
                if (this.f40391b) {
                    this.f40391b = false;
                    CommonJNI.delete_CImageBuffer(j2);
                }
                this.f40390a = 0L;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void finalize() {
        a();
    }

    public CImageBuffer(long j2) {
        this.f40391b = true;
        this.f40390a = j2;
    }

    public CImageBuffer() {
        this(CommonJNI.new_CImageBuffer__SWIG_1());
    }
}
