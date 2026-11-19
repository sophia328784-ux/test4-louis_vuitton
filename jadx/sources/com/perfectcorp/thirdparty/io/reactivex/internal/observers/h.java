package com.perfectcorp.thirdparty.io.reactivex.internal.observers;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import com.perfectcorp.thirdparty.io.reactivex.exceptions.CompositeException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class h<T> extends AtomicReference<Disposable> implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Consumer f42631b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Consumer f42632c;
    public final Action d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Consumer f42633e;

    public h(Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Consumer<? super Disposable> consumer3) {
        this.f42631b = consumer;
        this.f42632c = consumer2;
        this.d = action;
        this.f42633e = consumer3;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final void dispose() {
        com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.a(this);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return get() == com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onComplete() {
        if (isDisposed()) {
            return;
        }
        lazySet(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a);
        try {
            this.d.run();
        } catch (Throwable th) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onError(Throwable th) {
        if (isDisposed()) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            return;
        }
        lazySet(com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a);
        try {
            this.f42632c.accept(th);
        } catch (Throwable th2) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(new CompositeException(th, th2));
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onNext(Object obj) {
        if (isDisposed()) {
            return;
        }
        try {
            this.f42631b.accept(obj);
        } catch (Throwable th) {
            get().dispose();
            onError(th);
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onSubscribe(Disposable disposable) {
        if (com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.d(this, disposable)) {
            try {
                this.f42633e.accept(this);
            } catch (Throwable th) {
                disposable.dispose();
                onError(th);
            }
        }
    }
}
