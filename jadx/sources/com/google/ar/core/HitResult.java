package com.google.ar.core;

/* JADX INFO: loaded from: classes2.dex */
public class HitResult {
    long nativeHandle;
    private final long nativeSymbolTableHandle;
    private final Session session;

    public HitResult() {
        this.session = null;
        this.nativeHandle = 0L;
        this.nativeSymbolTableHandle = 0L;
    }

    private native long nativeCreateAnchor(long j2, long j3);

    private static native void nativeDestroyHitResult(long j2, long j3);

    private native float nativeGetDistance(long j2, long j3);

    private native Pose nativeGetPose(long j2, long j3);

    public Anchor createAnchor() {
        return new Anchor(nativeCreateAnchor(this.session.nativeWrapperHandle, this.nativeHandle), this.session);
    }

    public boolean equals(Object obj) {
        return (obj instanceof HitResult) && ((HitResult) obj).nativeHandle == this.nativeHandle;
    }

    public void finalize() throws Throwable {
        long j2 = this.nativeHandle;
        if (j2 != 0) {
            nativeDestroyHitResult(this.nativeSymbolTableHandle, j2);
        }
        super.finalize();
    }

    public float getDistance() {
        return nativeGetDistance(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public Pose getHitPose() {
        return nativeGetPose(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public Trackable getTrackable() {
        return this.session.createTrackable(nativeAcquireTrackable(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public int hashCode() {
        return Long.valueOf(this.nativeHandle).hashCode();
    }

    public native long nativeAcquireTrackable(long j2, long j3);

    public HitResult(long j2, Session session) {
        this.session = session;
        this.nativeHandle = j2;
        this.nativeSymbolTableHandle = session.nativeSymbolTableHandle;
    }
}
