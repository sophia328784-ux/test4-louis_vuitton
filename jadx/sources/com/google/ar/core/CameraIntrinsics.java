package com.google.ar.core;

/* JADX INFO: loaded from: classes2.dex */
public class CameraIntrinsics {
    long nativeHandle;
    private final long nativeSymbolTableHandle;
    private final Session session;

    public CameraIntrinsics() {
        this.nativeHandle = 0L;
        this.session = null;
        this.nativeSymbolTableHandle = 0L;
    }

    private native void nativeDestroyCameraIntrinsics(long j2, long j3);

    private native void nativeGetFocalLength(long j2, long j3, float[] fArr, int i2);

    private native void nativeGetImageDimensions(long j2, long j3, int[] iArr, int i2);

    private native void nativeGetPrincipalPoint(long j2, long j3, float[] fArr, int i2);

    public void finalize() throws Throwable {
        long j2 = this.nativeHandle;
        if (j2 != 0) {
            nativeDestroyCameraIntrinsics(this.nativeSymbolTableHandle, j2);
        }
        super.finalize();
    }

    public void getFocalLength(float[] fArr, int i2) {
        nativeGetFocalLength(this.session.nativeWrapperHandle, this.nativeHandle, fArr, i2);
    }

    public void getImageDimensions(int[] iArr, int i2) {
        nativeGetImageDimensions(this.session.nativeWrapperHandle, this.nativeHandle, iArr, i2);
    }

    public void getPrincipalPoint(float[] fArr, int i2) {
        nativeGetPrincipalPoint(this.session.nativeWrapperHandle, this.nativeHandle, fArr, i2);
    }

    public CameraIntrinsics(long j2, Session session) {
        this.nativeHandle = j2;
        this.session = session;
        this.nativeSymbolTableHandle = session.nativeSymbolTableHandle;
    }

    public float[] getFocalLength() {
        float[] fArr = new float[2];
        getFocalLength(fArr, 0);
        return fArr;
    }

    public int[] getImageDimensions() {
        int[] iArr = new int[2];
        getImageDimensions(iArr, 0);
        return iArr;
    }

    public float[] getPrincipalPoint() {
        float[] fArr = new float[2];
        getPrincipalPoint(fArr, 0);
        return fArr;
    }
}
