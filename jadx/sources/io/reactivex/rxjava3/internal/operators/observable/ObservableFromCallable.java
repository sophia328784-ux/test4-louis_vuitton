package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableFromCallable<T> extends Observable<T> implements Supplier<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Callable f70540b;

    public ObservableFromCallable(Callable<? extends T> callable) {
        this.f70540b = callable;
    }

    @Override // io.reactivex.rxjava3.functions.Supplier
    public final Object get() throws Exception {
        Object objCall = this.f70540b.call();
        if (objCall == null) {
            throw ExceptionHelper.b("The Callable returned a null value.");
        }
        Throwable th = ExceptionHelper.f71119a;
        return objCall;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        DeferredScalarDisposable deferredScalarDisposable = new DeferredScalarDisposable(observer);
        observer.onSubscribe(deferredScalarDisposable);
        if (deferredScalarDisposable.isDisposed()) {
            return;
        }
        try {
            Object objCall = this.f70540b.call();
            if (objCall == null) {
                throw ExceptionHelper.b("Callable returned a null value.");
            }
            Throwable th = ExceptionHelper.f71119a;
            deferredScalarDisposable.a(objCall);
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
