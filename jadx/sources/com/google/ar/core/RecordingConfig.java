package com.google.ar.core;

import android.net.Uri;

/* JADX INFO: loaded from: classes2.dex */
public class RecordingConfig {
    long nativeHandle;
    private final long nativeSymbolTableHandle;
    private final Session session;

    public RecordingConfig(Session session) {
        this.session = session;
        this.nativeHandle = nativeCreateRecordingConfig(session.nativeWrapperHandle);
        this.nativeSymbolTableHandle = session.nativeSymbolTableHandle;
    }

    private native void nativeAddTrack(long j2, long j3, long j4);

    private static native long nativeCreateRecordingConfig(long j2);

    private static native void nativeDestroyRecordingConfig(long j2, long j3);

    private native boolean nativeGetAutoStopOnPause(long j2, long j3);

    private native String nativeGetMp4DatasetFilePath(long j2, long j3);

    private native String nativeGetMp4DatasetUri(long j2, long j3);

    private native int nativeGetRecordingRotation(long j2, long j3);

    private native void nativeSetAutoStopOnPause(long j2, long j3, boolean z);

    private native void nativeSetMp4DatasetFilePath(long j2, long j3, String str);

    private native void nativeSetMp4DatasetUri(long j2, long j3, String str);

    private native void nativeSetRecordingRotation(long j2, long j3, int i2);

    public RecordingConfig addTrack(Track track) {
        nativeAddTrack(this.session.nativeWrapperHandle, this.nativeHandle, track.nativeHandle);
        return this;
    }

    public void finalize() throws Throwable {
        long j2 = this.nativeHandle;
        if (j2 != 0) {
            nativeDestroyRecordingConfig(this.nativeSymbolTableHandle, j2);
            this.nativeHandle = 0L;
        }
        super.finalize();
    }

    public boolean getAutoStopOnPause() {
        return nativeGetAutoStopOnPause(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    @Deprecated
    public String getMp4DatasetFilePath() {
        return nativeGetMp4DatasetFilePath(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public Uri getMp4DatasetUri() {
        String strNativeGetMp4DatasetUri = nativeGetMp4DatasetUri(this.session.nativeWrapperHandle, this.nativeHandle);
        if (strNativeGetMp4DatasetUri == null) {
            return null;
        }
        return Uri.parse(strNativeGetMp4DatasetUri);
    }

    public int getRecordingRotation() {
        return nativeGetRecordingRotation(this.session.nativeWrapperHandle, this.nativeHandle);
    }

    public RecordingConfig setAutoStopOnPause(boolean z) {
        nativeSetAutoStopOnPause(this.session.nativeWrapperHandle, this.nativeHandle, z);
        return this;
    }

    @Deprecated
    public RecordingConfig setMp4DatasetFilePath(String str) {
        nativeSetMp4DatasetFilePath(this.session.nativeWrapperHandle, this.nativeHandle, str);
        return this;
    }

    public RecordingConfig setMp4DatasetUri(Uri uri) {
        nativeSetMp4DatasetUri(this.session.nativeWrapperHandle, this.nativeHandle, uri.toString());
        return this;
    }

    public RecordingConfig setRecordingRotation(int i2) {
        nativeSetRecordingRotation(this.session.nativeWrapperHandle, this.nativeHandle, i2);
        return this;
    }

    public RecordingConfig() {
        this.session = null;
        this.nativeHandle = 0L;
        this.nativeSymbolTableHandle = 0L;
    }
}
