package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.Observer;

/* JADX INFO: loaded from: classes4.dex */
public class DeferredScalarDisposable<T> extends BasicIntQueueDisposable<T> {
    private static final long serialVersionUID = -5502432239815349361L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Observer f70115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f70116c;

    public DeferredScalarDisposable(Observer<? super T> observer) {
        this.f70115b = observer;
    }

    public final void a(Object obj) {
        int i2 = get();
        if ((i2 & 54) != 0) {
            return;
        }
        Observer observer = this.f70115b;
        if (i2 == 8) {
            this.f70116c = obj;
            lazySet(16);
            observer.onNext(null);
        } else {
            lazySet(2);
            observer.onNext(obj);
        }
        if (get() != 4) {
            observer.onComplete();
        }
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final void clear() {
        lazySet(32);
        this.f70116c = null;
    }

    public void dispose() {
        set(4);
        this.f70116c = null;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return get() == 4;
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final boolean isEmpty() {
        return get() != 16;
    }

    public void onSuccess(Object obj) {
        a(obj);
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final Object poll() {
        if (get() != 16) {
            return null;
        }
        Object obj = this.f70116c;
        this.f70116c = null;
        lazySet(32);
        return obj;
    }

    @Override // io.reactivex.rxjava3.operators.QueueFuseable
    public final int requestFusion(int i2) {
        lazySet(8);
        return 2;
    }
}
