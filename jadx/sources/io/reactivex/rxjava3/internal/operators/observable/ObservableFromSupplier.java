package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableFromSupplier<T> extends Observable<T> implements Supplier<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f70555b;

    public ObservableFromSupplier(Supplier<? extends T> supplier) {
        this.f70555b = supplier;
    }

    @Override // io.reactivex.rxjava3.functions.Supplier
    public final Object get() {
        Object obj = this.f70555b.get();
        if (obj == null) {
            throw ExceptionHelper.b("The supplier returned a null value.");
        }
        Throwable th = ExceptionHelper.f71119a;
        return obj;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        DeferredScalarDisposable deferredScalarDisposable = new DeferredScalarDisposable(observer);
        observer.onSubscribe(deferredScalarDisposable);
        if (deferredScalarDisposable.isDisposed()) {
            return;
        }
        try {
            Object obj = this.f70555b.get();
            if (obj == null) {
                throw ExceptionHelper.b("Supplier returned a null value.");
            }
            Throwable th = ExceptionHelper.f71119a;
            deferredScalarDisposable.a(obj);
        } catch (Throwable th2) {
            Exceptions.a(th2);
            if (deferredScalarDisposable.isDisposed()) {
                RxJavaPlugins.b(th2);
            } else {
                observer.onError(th2);
            }
        }
    }
}
