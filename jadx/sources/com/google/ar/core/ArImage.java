package com.google.ar.core;

import android.graphics.Rect;
import android.media.Image;
import defpackage.r81;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
class ArImage extends com.google.ar.core.dependencies.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Session f33343b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f33344c;
    public long d;

    public ArImage(Session session, long j2) {
        this.f33343b = session;
        this.d = j2;
        this.f33344c = session.nativeSymbolTableHandle;
    }

    private native void nativeClose(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: nativeGetBuffer, reason: merged with bridge method [inline-methods] */
    public native ByteBuffer e(long j2, long j3, int i2);

    private native int nativeGetFormat(long j2, long j3);

    private native int nativeGetHeight(long j2, long j3);

    private native int nativeGetNumberOfPlanes(long j2, long j3);

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: nativeGetPixelStride, reason: merged with bridge method [inline-methods] */
    public native int d(long j2, long j3, int i2);

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: nativeGetRowStride, reason: merged with bridge method [inline-methods] */
    public native int c(long j2, long j3, int i2);

    private native long nativeGetTimestamp(long j2, long j3);

    private native int nativeGetWidth(long j2, long j3);

    public static native void nativeLoadSymbols();

    @Override // android.media.Image, java.lang.AutoCloseable
    public final void close() {
        nativeClose(this.f33344c, this.d);
        this.d = 0L;
    }

    @Override // android.media.Image
    public final Rect getCropRect() {
        return new Rect(0, 0, getWidth(), getHeight());
    }

    @Override // android.media.Image
    public final int getFormat() {
        int iNativeGetFormat = nativeGetFormat(this.f33343b.nativeWrapperHandle, this.d);
        if (iNativeGetFormat != -1) {
            return iNativeGetFormat;
        }
        r81.i("Unknown error in ArImage.getFormat().");
        return 0;
    }

    @Override // android.media.Image
    public final int getHeight() {
        int iNativeGetHeight = nativeGetHeight(this.f33343b.nativeWrapperHandle, this.d);
        if (iNativeGetHeight != -1) {
            return iNativeGetHeight;
        }
        r81.i("Unknown error in ArImage.getHeight().");
        return 0;
    }

    @Override // android.media.Image
    public final Image.Plane[] getPlanes() {
        int iNativeGetNumberOfPlanes = nativeGetNumberOfPlanes(this.f33343b.nativeWrapperHandle, this.d);
        if (iNativeGetNumberOfPlanes == -1) {
            r81.i("Unknown error in ArImage.getPlanes().");
            return null;
        }
        o[] oVarArr = new o[iNativeGetNumberOfPlanes];
        for (int i2 = 0; i2 < iNativeGetNumberOfPlanes; i2++) {
            oVarArr[i2] = new o(this, this.d, i2);
        }
        return oVarArr;
    }

    @Override // android.media.Image
    public final long getTimestamp() {
        long jNativeGetTimestamp = nativeGetTimestamp(this.f33343b.nativeWrapperHandle, this.d);
        if (jNativeGetTimestamp != -1) {
            return jNativeGetTimestamp;
        }
        r81.i("Unknown error in ArImage.getTimestamp().");
        return 0L;
    }

    @Override // android.media.Image
    public final int getWidth() {
        int iNativeGetWidth = nativeGetWidth(this.f33343b.nativeWrapperHandle, this.d);
        if (iNativeGetWidth != -1) {
            return iNativeGetWidth;
        }
        r81.i("Unknown error in ArImage.getWidth().");
        return 0;
    }

    @Override // android.media.Image
    public final void setCropRect(Rect rect) {
        throw new UnsupportedOperationException("This is a read-only image.");
    }

    @Override // android.media.Image
    public final void setTimestamp(long j2) {
        throw new UnsupportedOperationException("This is a read-only image.");
    }
}
