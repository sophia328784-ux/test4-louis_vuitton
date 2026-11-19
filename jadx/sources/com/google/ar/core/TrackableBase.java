package com.google.ar.core;

import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
class TrackableBase implements Trackable {
    long nativeHandle;
    protected final long nativeSymbolTableHandle;
    protected final Session session;

    public TrackableBase(long j2, Session session) {
        this.session = session;
        this.nativeHandle = j2;
        this.nativeSymbolTableHandle = session == null ? 0L : session.nativeSymbolTableHandle;
    }

    public static int internalGetType(long j2, long j3) {
        return nativeGetType(j2, j3);
    }

    public static void internalReleaseNativeHandle(long j2, long j3) {
        nativeReleaseTrackable(j2, j3);
    }

    private native long nativeCreateAnchor(long j2, long j3, Pose pose);

    private native long[] nativeGetAnchors(long j2, long j3);

    private native int nativeGetTrackingState(long j2, long j3);

    private static native int nativeGetType(long j2, long j3);

    private static native void nativeReleaseTrackable(long j2, long j3);

    @Override // com.google.ar.core.Trackable
    public Anchor createAnchor(Pose pose) {
        return new Anchor(nativeCreateAnchor(this.session.nativeWrapperHandle, this.nativeHandle, pose), this.session);
    }

    public boolean equals(Object obj) {
        return (obj instanceof TrackableBase) && ((TrackableBase) obj).nativeHandle == this.nativeHandle;
    }

    public void finalize() throws Throwable {
        long j2 = this.nativeHandle;
        if (j2 != 0) {
            nativeReleaseTrackable(this.nativeSymbolTableHandle, j2);
            this.nativeHandle = 0L;
        }
        super.finalize();
    }

    @Override // com.google.ar.core.Trackable
    public Collection getAnchors() {
        return this.session.convertNativeAnchorsToCollection(nativeGetAnchors(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    @Override // com.google.ar.core.Trackable
    public TrackingState getTrackingState() {
        return TrackingState.forNumber(nativeGetTrackingState(this.session.nativeWrapperHandle, this.nativeHandle));
    }

    public int hashCode() {
        return Long.valueOf(this.nativeHandle).hashCode();
    }
}
