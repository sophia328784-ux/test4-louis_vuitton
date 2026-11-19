package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.operators.QueueDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BasicFuseableObserver<T, R> implements Observer<T>, QueueDisposable<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Observer f70101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Disposable f70102c;
    public QueueDisposable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f70103e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f70104f;

    public BasicFuseableObserver(Observer<? super R> observer) {
        this.f70101b = observer;
    }

    public final void a(Throwable th) {
        Exceptions.a(th);
        this.f70102c.dispose();
        onError(th);
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public void clear() {
        this.d.clear();
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        this.f70102c.dispose();
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return this.f70102c.isDisposed();
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final boolean isEmpty() {
        return this.d.isEmpty();
    }

    @Override // io.reactivex.rxjava3.operators.SimpleQueue
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onComplete() {
        if (this.f70103e) {
            return;
        }
        this.f70103e = true;
        this.f70101b.onComplete();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public void onError(Throwable th) {
        if (this.f70103e) {
            RxJavaPlugins.b(th);
        } else {
            this.f70103e = true;
            this.f70101b.onError(th);
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable disposable) {
        if (DisposableHelper.g(this.f70102c, disposable)) {
            this.f70102c = disposable;
            if (disposable instanceof QueueDisposable) {
                this.d = (QueueDisposable) disposable;
            }
            this.f70101b.onSubscribe(this);
        }
    }

    @Override // io.reactivex.rxjava3.operators.QueueFuseable
    public int requestFusion(int i2) {
        QueueDisposable queueDisposable = this.d;
        if (queueDisposable == null || (i2 & 4) != 0) {
            return 0;
        }
        int iRequestFusion = queueDisposable.requestFusion(i2);
        if (iRequestFusion == 0) {
            return iRequestFusion;
        }
        this.f70104f = iRequestFusion;
        return iRequestFusion;
    }
}
