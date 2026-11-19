package com.google.android.filament;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class Camera {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f28527a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28528b;

    public Camera(long j2, int i2) {
        this.f28527a = j2;
        this.f28528b = i2;
    }

    private static native void nLookAt(long j2, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9);

    private static native void nSetCustomProjection(long j2, double[] dArr, double[] dArr2, double d, double d2);

    private static native void nSetExposure(long j2, float f2, float f3, float f4);

    private static native void nSetLensProjection(long j2, double d, double d2, double d3, double d4);

    private static native void nSetModelMatrix(long j2, float[] fArr);

    private static native void nSetScaling(long j2, double d, double d2);

    private static native void nSetShift(long j2, double d, double d2);

    public final long a() {
        long j2 = this.f28527a;
        if (j2 != 0) {
            return j2;
        }
        md.k("Calling method on destroyed Camera");
        return 0L;
    }

    public final void b(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
        nLookAt(a(), d, d2, d3, d4, d5, d6, d7, d8, d9);
    }

    public final void c(double[] dArr) {
        if (dArr.length < 16) {
            throw new ArrayIndexOutOfBoundsException("Array length must be at least 16");
        }
        nSetCustomProjection(a(), dArr, dArr, 0.10000000149011612d, 30.0d);
    }

    public final void d(float f2, float f3, float f4) {
        nSetExposure(a(), f2, f3, f4);
    }

    public final void e(double d, double d2, double d3, double d4) {
        nSetLensProjection(a(), d, d2, d3, d4);
    }

    public final void f(float[] fArr) {
        if (fArr.length < 16) {
            throw new ArrayIndexOutOfBoundsException("Array length must be at least 16");
        }
        nSetModelMatrix(a(), fArr);
    }

    public final void g(double d, double d2) {
        nSetScaling(a(), d, d2);
    }

    public final void h(double d) {
        nSetShift(a(), 0.0d, d);
    }
}
