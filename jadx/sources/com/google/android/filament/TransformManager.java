package com.google.android.filament;

/* JADX INFO: loaded from: classes2.dex */
public class TransformManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28593a;

    private static native int nCreate(long j2, int i2);

    private static native int nGetChildCount(long j2, int i2);

    private static native void nGetChildren(long j2, int i2, int[] iArr, int i3);

    private static native int nGetInstance(long j2, int i2);

    private static native void nGetTransform(long j2, int i2, float[] fArr);

    private static native boolean nHasComponent(long j2, int i2);

    private static native void nSetParent(long j2, int i2, int i3);

    private static native void nSetTransform(long j2, int i2, float[] fArr);

    public final int a(int i2) {
        return nCreate(this.f28593a, i2);
    }

    public final int[] b(int i2) {
        long j2 = this.f28593a;
        int[] iArr = new int[nGetChildCount(j2, i2)];
        if (iArr.length > 0) {
            nGetChildren(j2, i2, iArr, iArr.length);
        }
        return iArr;
    }

    public final int c(int i2) {
        return nGetInstance(this.f28593a, i2);
    }

    public final float[] d(float[] fArr, int i2) {
        if (fArr.length < 16) {
            throw new ArrayIndexOutOfBoundsException("Array length must be at least 16");
        }
        nGetTransform(this.f28593a, i2, fArr);
        return fArr;
    }

    public final boolean e(int i2) {
        return nHasComponent(this.f28593a, i2);
    }

    public final void f(int i2, int i3) {
        nSetParent(this.f28593a, i2, i3);
    }

    public final void g(float[] fArr, int i2) {
        if (fArr.length < 16) {
            throw new ArrayIndexOutOfBoundsException("Array length must be at least 16");
        }
        nSetTransform(this.f28593a, i2, fArr);
    }
}
