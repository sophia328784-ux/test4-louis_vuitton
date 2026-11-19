package com.google.ar.core;

import java.lang.ref.WeakReference;
import java.util.function.BiConsumer;

/* JADX INFO: loaded from: classes2.dex */
public class ResolveCloudAnchorFuture extends FutureImpl {

    public static class CallbackWrapper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WeakReference f33353a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f33354b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BiConsumer f33355c;

        public CallbackWrapper(Session session, BiConsumer biConsumer) {
            this.f33353a = new WeakReference(session);
            this.f33354b = session.nativeSymbolTableHandle;
            this.f33355c = biConsumer;
        }

        public void accept(long j2, int i2) {
            Session session = (Session) this.f33353a.get();
            BiConsumer biConsumer = this.f33355c;
            if (session != null) {
                biConsumer.accept(ResolveCloudAnchorFuture.makeAnchor(j2, session), Anchor.CloudAnchorState.forNumber(i2));
                return;
            }
            biConsumer.accept(null, Anchor.CloudAnchorState.ERROR_INTERNAL);
            if (j2 != 0) {
                Anchor.nativeReleaseAnchor(this.f33354b, j2);
            }
        }
    }

    public ResolveCloudAnchorFuture(Session session, long j2, long j3) {
        super(session, j2, j3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Anchor makeAnchor(long j2, Session session) {
        if (j2 != 0) {
            return new Anchor(j2, session);
        }
        return null;
    }

    @Override // com.google.ar.core.FutureImpl, com.google.ar.core.Future
    public /* bridge */ /* synthetic */ boolean cancel() {
        return super.cancel();
    }

    public Anchor getResultAnchor() {
        return makeAnchor(nativeGetResultAnchor(this.session.nativeWrapperHandle, this.nativeFuture), this.session);
    }

    public Anchor.CloudAnchorState getResultCloudAnchorState() {
        return Anchor.CloudAnchorState.forNumber(nativeGetResultCloudAnchorState(this.session.nativeWrapperHandle, this.nativeFuture));
    }

    @Override // com.google.ar.core.FutureImpl, com.google.ar.core.Future
    public /* bridge */ /* synthetic */ FutureState getState() {
        return super.getState();
    }

    public native long nativeGetResultAnchor(long j2, long j3);

    public native int nativeGetResultCloudAnchorState(long j2, long j3);
}
