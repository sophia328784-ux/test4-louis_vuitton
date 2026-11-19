package com.google.ar.core;

/* JADX INFO: loaded from: classes2.dex */
abstract class FutureImpl implements Future {
    final long nativeCallbackContext;
    final long nativeFuture;
    final long nativeSymbolTableHandle;
    final Session session;

    public FutureImpl(Session session, long j2, long j3) {
        this.session = session;
        this.nativeSymbolTableHandle = session.nativeSymbolTableHandle;
        this.nativeFuture = j2;
        this.nativeCallbackContext = j3;
    }

    public static native void nativeReleaseFuture(long j2, long j3);

    @Override // com.google.ar.core.Future
    public boolean cancel() {
        return nativeCancel(this.session.nativeWrapperHandle, this.nativeFuture, this.nativeCallbackContext);
    }

    public void finalize() throws Throwable {
        nativeReleaseFuture(this.nativeSymbolTableHandle, this.nativeFuture);
        super.finalize();
    }

    @Override // com.google.ar.core.Future
    public FutureState getState() {
        return FutureState.forNumber(nativeGetState(this.session.nativeWrapperHandle, this.nativeFuture));
    }

    public native boolean nativeCancel(long j2, long j3, long j4);

    public native int nativeGetState(long j2, long j3);
}
