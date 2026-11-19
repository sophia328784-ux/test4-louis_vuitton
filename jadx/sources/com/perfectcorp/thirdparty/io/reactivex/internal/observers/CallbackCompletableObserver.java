package com.perfectcorp.thirdparty.io.reactivex.internal.observers;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class CallbackCompletableObserver extends AtomicReference<Disposable> implements com.perfectcorp.thirdparty.io.reactivex.a, Disposable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Consumer f42616b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Action f42617c;

    public CallbackCompletableObserver(Consumer<? super Throwable> consumer, Action action) {
        this.f42616b = consumer;
        this.f42617c = action;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final void dispose() {
        com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(this);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return get() == com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.a
    public final void onComplete() {
        try {
            this.f42617c.run();
        } catch (Throwable th) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
        }
        lazySet(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.a
    public final void onError(Throwable th) {
        try {
            this.f42616b.accept(th);
        } catch (Throwable th2) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th2);
        }
        lazySet(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.a
    public final void onSubscribe(Disposable disposable) {
        com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.d(this, disposable);
    }
}
