package com.perfectcorp.thirdparty.io.reactivex.internal.observers;

import com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public final class f<T> extends CountDownLatch implements Disposable, com.perfectcorp.thirdparty.io.reactivex.e<T>, Future<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f42627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Throwable f42628c;
    public final AtomicReference d;

    public f() {
        super(1);
        this.d = new AtomicReference();
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b bVar;
        while (true) {
            AtomicReference atomicReference = this.d;
            Disposable disposable = (Disposable) atomicReference.get();
            if (disposable == this || disposable == (bVar = com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a)) {
                return false;
            }
            do {
                if (atomicReference.compareAndSet(disposable, bVar)) {
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    countDown();
                    return true;
                }
            } while (atomicReference.get() == disposable);
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final void dispose() {
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j2, TimeUnit timeUnit) throws ExecutionException, TimeoutException {
        if (getCount() != 0 && !await(j2, timeUnit)) {
            throw new TimeoutException(com.perfectcorp.thirdparty.io.reactivex.internal.util.e.a(j2, timeUnit));
        }
        if (isCancelled()) {
            throw new CancellationException();
        }
        Throwable th = this.f42628c;
        if (th == null) {
            return this.f42627b;
        }
        throw new ExecutionException(th);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.b((Disposable) this.d.get());
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        return isDone();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return getCount() == 0;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onComplete() {
        if (this.f42627b == null) {
            onError(new NoSuchElementException("The source is empty"));
            return;
        }
        while (true) {
            AtomicReference atomicReference = this.d;
            Disposable disposable = (Disposable) atomicReference.get();
            if (disposable == this || disposable == com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a) {
                return;
            }
            do {
                if (atomicReference.compareAndSet(disposable, this)) {
                    countDown();
                    return;
                }
            } while (atomicReference.get() == disposable);
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onError(Throwable th) {
        if (this.f42628c != null) {
            com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
            return;
        }
        this.f42628c = th;
        while (true) {
            AtomicReference atomicReference = this.d;
            Disposable disposable = (Disposable) atomicReference.get();
            if (disposable == this || disposable == com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.f42600a) {
                break;
            }
            do {
                if (atomicReference.compareAndSet(disposable, this)) {
                    countDown();
                    return;
                }
            } while (atomicReference.get() == disposable);
        }
        com.perfectcorp.thirdparty.io.reactivex.plugins.a.a(th);
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onNext(Object obj) {
        if (this.f42627b == null) {
            this.f42627b = obj;
        } else {
            ((Disposable) this.d.get()).dispose();
            onError(new IndexOutOfBoundsException("More than one element received"));
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.e
    public final void onSubscribe(Disposable disposable) {
        com.perfectcorp.thirdparty.io.reactivex.internal.disposables.b.d(this.d, disposable);
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws ExecutionException, InterruptedException {
        if (getCount() != 0) {
            await();
        }
        if (isCancelled()) {
            throw new CancellationException();
        }
        Throwable th = this.f42628c;
        if (th == null) {
            return this.f42627b;
        }
        throw new ExecutionException(th);
    }
}
