package com.google.ar.core;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class TrackData {
    long nativeHandle;
    final long nativeSymbolTableHandle;
    private final Session session;

    public TrackData(long j2, Session session) {
        this.session = session;
        this.nativeHandle = j2;
        this.nativeSymbolTableHandle = session.nativeSymbolTableHandle;
    }

    private native ByteBuffer nativeGetData(long j2, long j3);

    private native long nativeGetFrameTimestamp(long j2, long j3);

    private static native void nativeReleaseTrackData(long j2, long j3);

    private void release() {
        long j2 = this.nativeHandle;
        if (j2 != 0) {
            nativeReleaseTrackData(this.nativeSymbolTableHandle, j2);
            this.nativeHandle = 0L;
        }
    }

    public void close() {
        release();
    }

    public void finalize() throws Throwable {
        release();
        super.finalize();
    }

    public ByteBuffer getData() {
        return nativeGetData(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public long getFrameTimestamp() {
        return nativeGetFrameTimestamp(this.session.nativeWrapperHandle, this.nativeHandle);
    }
}
