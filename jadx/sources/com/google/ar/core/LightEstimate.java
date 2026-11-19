package com.google.ar.core;

import android.media.Image;
import defpackage.r81;
import defpackage.z81;

/* JADX INFO: loaded from: classes2.dex */
public class LightEstimate {
    long nativeHandle;
    private final long nativeSymbolTableHandle;
    private final Session session;

    public enum State {
        NOT_VALID(0),
        VALID(1);

        final int nativeCode;

        State(int i2) {
            this.nativeCode = i2;
        }

        public static State forNumber(int i2) {
            for (State state : values()) {
                if (state.nativeCode == i2) {
                    return state;
                }
            }
            r81.i(z81.f(String.valueOf(i2).length() + (byte) 55, i2, "Unexpected value for native LightEstimate.State, value="));
            return null;
        }
    }

    public LightEstimate(Session session) {
        this.nativeHandle = 0L;
        this.session = session;
        this.nativeHandle = nativeCreateLightEstimate(session.nativeWrapperHandle);
        this.nativeSymbolTableHandle = session.nativeSymbolTableHandle;
    }

    private native long[] nativeAcquireEnvironmentalHdrCubeMap(long j2, long j3);

    private static native long nativeCreateLightEstimate(long j2);

    private static native void nativeDestroyLightEstimate(long j2, long j3);

    private native void nativeGetColorCorrection(long j2, long j3, float[] fArr, int i2);

    private native void nativeGetEnvironmentalHdrAmbientSphericalHarmonics(long j2, long j3, float[] fArr);

    private native void nativeGetEnvironmentalHdrMainLightDirection(long j2, long j3, float[] fArr);

    private native void nativeGetEnvironmentalHdrMainLightIntensity(long j2, long j3, float[] fArr);

    private native float nativeGetPixelIntensity(long j2, long j3);

    private native int nativeGetState(long j2, long j3);

    private native long nativeGetTimestamp(long j2, long j3);

    public Image[] acquireEnvironmentalHdrCubeMap() {
        long[] jArrNativeAcquireEnvironmentalHdrCubeMap = nativeAcquireEnvironmentalHdrCubeMap(this.session.nativeWrapperHandle, this.nativeHandle);
        ArImage[] arImageArr = new ArImage[jArrNativeAcquireEnvironmentalHdrCubeMap.length];
        for (int i2 = 0; i2 < jArrNativeAcquireEnvironmentalHdrCubeMap.length; i2++) {
            arImageArr[i2] = new ArImage(this.session, jArrNativeAcquireEnvironmentalHdrCubeMap[i2]);
        }
        return arImageArr;
    }

    public void finalize() throws Throwable {
        long j2 = this.nativeHandle;
        if (j2 != 0) {
            nativeDestroyLightEstimate(this.nativeSymbolTableHandle, j2);
        }
        super.finalize();
    }

    public void getColorCorrection(float[] fArr, int i2) {
        nativeGetColorCorrection(this.session.nativeWrapperHandle, this.nativeHandle, fArr, i2);
    }

    public float[] getEnvironmentalHdrAmbientSphericalHarmonics() {
        float[] fArr = new float[27];
        nativeGetEnvironmentalHdrAmbientSphericalHarmonics(this.session.nativeWrapperHandle, this.nativeHandle, fArr);
        return fArr;
    }

    public float[] getEnvironmentalHdrMainLightDirection() {
        float[] fArr = new float[3];
        nativeGetEnvironmentalHdrMainLightDirection(this.session.nativeWrapperHandle, this.nativeHandle, fArr);
        return fArr;
    }

    public float[] getEnvironmentalHdrMainLightIntensity() {
        float[] fArr = new float[3];
        nativeGetEnvironmentalHdrMainLightIntensity(this.session.nativeWrapperHandle, this.nativeHandle, fArr);
        return fArr;
    }

    public float getPixelIntensity() {
        return nativeGetPixelIntensity(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public State getState() {
        return State.forNumber(nativeGetState(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public long getTimestamp() {
        return nativeGetTimestamp(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public LightEstimate() {
        this.nativeHandle = 0L;
        this.session = null;
        this.nativeSymbolTableHandle = 0L;
    }
}
