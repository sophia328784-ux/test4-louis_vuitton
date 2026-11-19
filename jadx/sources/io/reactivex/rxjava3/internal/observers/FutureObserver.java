package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class FutureObserver<T> extends CountDownLatch implements Observer<T>, Future<T>, Disposable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f70124b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Throwable f70125c;
    public final AtomicReference d;

    public FutureObserver() {
        super(1);
        this.d = new AtomicReference();
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        DisposableHelper disposableHelper;
        while (true) {
            AtomicReference atomicReference = this.d;
            Disposable disposable = (Disposable) atomicReference.get();
            if (disposable == this || disposable == (disposableHelper = DisposableHelper.DISPOSED)) {
                return false;
            }
            do {
                if (atomicReference.compareAndSet(disposable, disposableHelper)) {
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    countDown();
                    return true;
                }
            } while (atomicReference.get() == disposable);
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j2, TimeUnit timeUnit) throws ExecutionException, TimeoutException {
        if (getCount() != 0 && !await(j2, timeUnit)) {
            throw new TimeoutException(ExceptionHelper.d(j2, timeUnit));
        }
        if (isCancelled()) {
            throw new CancellationException();
        }
        Throwable th = this.f70125c;
        if (th == null) {
            return this.f70124b;
        }
        throw new ExecutionException(th);
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return DisposableHelper.b((Disposable) this.d.get());
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return isDone();
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return getCount() == 0;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onComplete() {
        if (this.f70124b == null) {
            onError(new NoSuchElementException("The source is empty"));
            return;
        }
        AtomicReference atomicReference = this.d;
        Disposable disposable = (Disposable) atomicReference.get();
        if (disposable == this || disposable == DisposableHelper.DISPOSED) {
            return;
        }
        while (!atomicReference.compareAndSet(disposable, this)) {
            if (atomicReference.get() != disposable) {
                return;
            }
        }
        countDown();
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onError(Throwable th) {
        if (this.f70125c == null) {
            AtomicReference atomicReference = this.d;
            Disposable disposable = (Disposable) atomicReference.get();
            if (disposable != this && disposable != DisposableHelper.DISPOSED) {
                while (!atomicReference.compareAndSet(disposable, this)) {
                    if (atomicReference.get() != disposable) {
                    }
                }
                this.f70125c = th;
                countDown();
                return;
            }
        }
        RxJavaPlugins.b(th);
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onNext(Object obj) {
        if (this.f70124b == null) {
            this.f70124b = obj;
        } else {
            ((Disposable) this.d.get()).dispose();
            onError(new IndexOutOfBoundsException("More than one element received"));
        }
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable disposable) {
        DisposableHelper.e(this.d, disposable);
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws ExecutionException, InterruptedException {
        if (getCount() != 0) {
            await();
        }
        if (!isCancelled()) {
            Throwable th = this.f70125c;
            if (th == null) {
                return this.f70124b;
            }
            throw new ExecutionException(th);
        }
        throw new CancellationException();
    }
}
