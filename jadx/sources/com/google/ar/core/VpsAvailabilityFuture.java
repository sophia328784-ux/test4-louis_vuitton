package com.google.ar.core;

import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public class VpsAvailabilityFuture extends FutureImpl {

    public static class CallbackWrapper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Consumer f33358a;

        public CallbackWrapper(Consumer consumer) {
            this.f33358a = consumer;
        }

        public void accept(int i2) {
            this.f33358a.accept(VpsAvailability.forNumber(i2));
        }
    }

    public VpsAvailabilityFuture(Session session, long j2, long j3) {
        super(session, j2, j3);
    }

    @Override // com.google.ar.core.FutureImpl, com.google.ar.core.Future
    public /* bridge */ /* synthetic */ boolean cancel() {
        return super.cancel();
    }

    public VpsAvailability getResult() {
        return VpsAvailability.forNumber(nativeGetResult(this.session.nativeWrapperHandle, this.nativeFuture));
    }

    @Override // com.google.ar.core.FutureImpl, com.google.ar.core.Future
    public /* bridge */ /* synthetic */ FutureState getState() {
        return super.getState();
    }

    public native int nativeGetResult(long j2, long j3);
}
