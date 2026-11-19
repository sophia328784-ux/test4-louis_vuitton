package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes4.dex */
public final class SingleFromCallable<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Callable f71060b;

    public SingleFromCallable(Callable<? extends T> callable) {
        this.f71060b = callable;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void e(SingleObserver singleObserver) {
        Disposable disposableF = Disposable.f(Functions.f70037b);
        singleObserver.onSubscribe(disposableF);
        if (disposableF.isDisposed()) {
            return;
        }
        try {
            Object objCall = this.f71060b.call();
            Objects.requireNonNull(objCall, "The callable returned a null value");
            if (disposableF.isDisposed()) {
                return;
            }
            singleObserver.onSuccess(objCall);
        } catch (Throwable th) {
            Exceptions.a(th);
            if (disposableF.isDisposed()) {
                RxJavaPlugins.b(th);
            } else {
                singleObserver.onError(th);
            }
        }
    }
}
