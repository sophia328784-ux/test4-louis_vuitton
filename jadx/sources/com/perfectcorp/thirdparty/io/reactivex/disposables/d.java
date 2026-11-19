package com.perfectcorp.thirdparty.io.reactivex.disposables;

/* JADX INFO: loaded from: classes3.dex */
final class d extends c<Runnable> {
    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.c
    public final /* synthetic */ void a(Object obj) {
        ((Runnable) obj).run();
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        return "RunnableDisposable(disposed=" + isDisposed() + ", " + get() + ")";
    }
}
