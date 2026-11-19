package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableError<T> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f70482b;

    public ObservableError(Supplier<? extends Throwable> supplier) {
        this.f70482b = supplier;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        try {
            Object obj = this.f70482b.get();
            if (obj == null) {
                throw ExceptionHelper.b("Supplier returned a null Throwable.");
            }
            Throwable th = ExceptionHelper.f71119a;
            th = (Throwable) obj;
            EmptyDisposable.b(th, observer);
        } catch (Throwable th2) {
            th = th2;
            Exceptions.a(th);
        }
    }
}
