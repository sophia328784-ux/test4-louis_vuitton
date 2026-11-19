package com.perfectcorp.thirdparty.io.reactivex.internal.observers;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class ConsumerSingleObserver<T> extends AtomicReference<Disposable> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.f<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Consumer f42618b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Consumer f42619c;

    public ConsumerSingleObserver(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2) {
        this.f42618b = consumer;
        this.f42619c = consumer2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final void dispose() {
        com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(this);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return get() == com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.f
    public final void onError(Throwable th) {
        lazySet(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a);
        try {
            this.f42619c.accept(th);
        } catch (Throwable th2) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(new CompositeException(th, th2));
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.f
    public final void onSubscribe(Disposable disposable) {
        com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.d(this, disposable);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.f
    public final void onSuccess(Object obj) {
        lazySet(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a);
        try {
            this.f42618b.accept(obj);
        } catch (Throwable th) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
        }
    }
}
