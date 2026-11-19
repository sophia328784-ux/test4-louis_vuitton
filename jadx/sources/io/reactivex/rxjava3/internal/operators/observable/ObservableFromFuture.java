package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableFromFuture<T> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Future f70544b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f70545c;
    public final TimeUnit d;

    public ObservableFromFuture(Future<? extends T> future, long j2, TimeUnit timeUnit) {
        this.f70544b = future;
        this.f70545c = j2;
        this.d = timeUnit;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        DeferredScalarDisposable deferredScalarDisposable = new DeferredScalarDisposable(observer);
        observer.onSubscribe(deferredScalarDisposable);
        if (deferredScalarDisposable.isDisposed()) {
            return;
        }
        try {
            TimeUnit timeUnit = this.d;
            Future future = this.f70544b;
            Object obj = timeUnit != null ? future.get(this.f70545c, timeUnit) : future.get();
            if (obj == null) {
                throw ExceptionHelper.b("Future returned a null value.");
            }
            Throwable th = ExceptionHelper.f71119a;
            deferredScalarDisposable.a(obj);
        } catch (Throwable th2) {
            Exceptions.a(th2);
            if (deferredScalarDisposable.isDisposed()) {
                return;
            }
            observer.onError(th2);
        }
    }
}
