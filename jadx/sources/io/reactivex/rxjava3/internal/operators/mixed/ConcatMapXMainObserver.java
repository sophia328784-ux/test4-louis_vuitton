package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import io.reactivex.rxjava3.operators.QueueDisposable;
import io.reactivex.rxjava3.operators.SimpleQueue;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ConcatMapXMainObserver<T> extends AtomicInteger implements Observer<T>, Disposable {
    private static final long serialVersionUID = -3214213361171757852L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicThrowable f70165b = new AtomicThrowable();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f70166c;
    public final ErrorMode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SimpleQueue f70167e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Disposable f70168f;
    public volatile boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile boolean f70169h;

    public ConcatMapXMainObserver(int i2, ErrorMode errorMode) {
        this.d = errorMode;
        this.f70166c = i2;
    }

    public void a() {
    }

    public abstract void b();

    public abstract void c();

    public abstract void d();

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        this.f70169h = true;
        this.f70168f.dispose();
        b();
        this.f70165b.b();
        if (getAndIncrement() == 0) {
            this.f70167e.clear();
            a();
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return this.f70169h;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onComplete() {
        this.g = true;
        c();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onError(Throwable th) {
        if (this.f70165b.a(th)) {
            if (this.d == ErrorMode.IMMEDIATE) {
                b();
            }
            this.g = true;
            c();
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onNext(Object obj) {
        if (obj != null) {
            this.f70167e.offer(obj);
        }
        c();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable disposable) {
        if (DisposableHelper.g(this.f70168f, disposable)) {
            this.f70168f = disposable;
            if (disposable instanceof QueueDisposable) {
                QueueDisposable queueDisposable = (QueueDisposable) disposable;
                int iRequestFusion = queueDisposable.requestFusion(7);
                if (iRequestFusion == 1) {
                    this.f70167e = queueDisposable;
                    this.g = true;
                    d();
                    c();
                    return;
                }
                if (iRequestFusion == 2) {
                    this.f70167e = queueDisposable;
                    d();
                    return;
                }
            }
            this.f70167e = new SpscLinkedArrayQueue(this.f70166c);
            d();
        }
    }
}
