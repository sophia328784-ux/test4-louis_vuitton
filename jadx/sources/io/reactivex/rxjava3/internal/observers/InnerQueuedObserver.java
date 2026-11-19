package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.operators.QueueDisposable;
import io.reactivex.rxjava3.operators.SimpleQueue;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class InnerQueuedObserver<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable {
    private static final long serialVersionUID = -5417183359794346637L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InnerQueuedObserverSupport f70126b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f70127c;
    public SimpleQueue d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile boolean f70128e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f70129f;

    public InnerQueuedObserver(InnerQueuedObserverSupport<T> innerQueuedObserverSupport, int i2) {
        this.f70126b = innerQueuedObserverSupport;
        this.f70127c = i2;
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        DisposableHelper.a(this);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return DisposableHelper.b(get());
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onComplete() {
        this.f70126b.c(this);
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onError(Throwable th) {
        this.f70126b.d(this, th);
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onNext(Object obj) {
        int i2 = this.f70129f;
        InnerQueuedObserverSupport innerQueuedObserverSupport = this.f70126b;
        if (i2 == 0) {
            innerQueuedObserverSupport.a(this, obj);
        } else {
            innerQueuedObserverSupport.b();
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable disposable) {
        if (DisposableHelper.e(this, disposable)) {
            if (disposable instanceof QueueDisposable) {
                QueueDisposable queueDisposable = (QueueDisposable) disposable;
                int iRequestFusion = queueDisposable.requestFusion(3);
                if (iRequestFusion == 1) {
                    this.f70129f = iRequestFusion;
                    this.d = queueDisposable;
                    this.f70128e = true;
                    this.f70126b.c(this);
                    return;
                }
                if (iRequestFusion == 2) {
                    this.f70129f = iRequestFusion;
                    this.d = queueDisposable;
                    return;
                }
            }
            int i2 = -this.f70127c;
            this.d = i2 < 0 ? new SpscLinkedArrayQueue(-i2) : new SpscArrayQueue(i2);
        }
    }
}
