package com.google.ar.core;

import com.google.ar.core.exceptions.DeadlineExceededException;
import java.io.Closeable;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class PointCloud implements Closeable {
    private long nativeHandle;
    private final long nativeSymbolTableHandle;
    private final Session session;

    public PointCloud() {
        this.nativeHandle = 0L;
        this.session = null;
        this.nativeSymbolTableHandle = 0L;
    }

    private native ByteBuffer nativeGetData(long j2, long j3);

    private native ByteBuffer nativeGetIds(long j2, long j3);

    private native long nativeGetTimestamp(long j2, long j3);

    private native void nativeReleasePointCloud(long j2, long j3);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        release();
    }

    public void finalize() throws Throwable {
        long j2 = this.nativeHandle;
        if (j2 != 0) {
            nativeReleasePointCloud(this.nativeSymbolTableHandle, j2);
        }
        super.finalize();
    }

    public IntBuffer getIds() {
        long j2 = this.nativeHandle;
        if (j2 != 0) {
            return Session.directByteBufferOrDefault(nativeGetIds(this.session.nativeWrapperHandle, j2)).asIntBuffer();
        }
        throw new DeadlineExceededException();
    }

    public FloatBuffer getPoints() {
        long j2 = this.nativeHandle;
        if (j2 != 0) {
            return Session.directByteBufferOrDefault(nativeGetData(this.session.nativeWrapperHandle, j2)).asFloatBuffer();
        }
        throw new DeadlineExceededException();
    }

    public long getTimestamp() {
        long j2 = this.nativeHandle;
        if (j2 != 0) {
            return nativeGetTimestamp(this.session.nativeWrapperHandle, j2);
        }
        throw new DeadlineExceededException();
    }

    public void release() {
        nativeReleasePointCloud(this.nativeSymbolTableHandle, this.nativeHandle);
        this.nativeHandle = 0L;
    }

    public PointCloud(Session session, long j2) {
        this.session = session;
        this.nativeHandle = j2;
        this.nativeSymbolTableHandle = session.nativeSymbolTableHandle;
    }
}
