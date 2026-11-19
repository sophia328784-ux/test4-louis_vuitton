package com.google.ar.core;

import java.util.function.BiConsumer;

/* JADX INFO: loaded from: classes2.dex */
public class HostCloudAnchorFuture extends FutureImpl {

    public static class CallbackWrapper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BiConsumer f33345a;

        public CallbackWrapper(BiConsumer biConsumer) {
            this.f33345a = biConsumer;
        }

        public void accept(String str, int i2) {
            this.f33345a.accept(str, Anchor.CloudAnchorState.forNumber(i2));
        }
    }

    public HostCloudAnchorFuture(Session session, long j2, long j3) {
        super(session, j2, j3);
    }

    @Override // com.google.ar.core.FutureImpl, com.google.ar.core.Future
    public /* bridge */ /* synthetic */ boolean cancel() {
        return super.cancel();
    }

    public String getResultCloudAnchorId() {
        return nativeGetResultCloudAnchorId(this.session.nativeWrapperHandle, this.nativeFuture);
    }

    public Anchor.CloudAnchorState getResultCloudAnchorState() {
        return Anchor.CloudAnchorState.forNumber(nativeGetResultCloudAnchorState(this.session.nativeWrapperHandle, this.nativeFuture));
    }

    @Override // com.google.ar.core.FutureImpl, com.google.ar.core.Future
    public /* bridge */ /* synthetic */ FutureState getState() {
        return super.getState();
    }

    public native String nativeGetResultCloudAnchorId(long j2, long j3);

    public native int nativeGetResultCloudAnchorState(long j2, long j3);
}
