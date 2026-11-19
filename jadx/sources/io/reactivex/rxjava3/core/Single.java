package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.single.SingleJust;
import io.reactivex.rxjava3.internal.operators.single.SingleMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Single<T> implements SingleSource<T> {
    public static SingleJust c(Object obj) {
        Objects.requireNonNull(obj, "item is null");
        return new SingleJust(obj);
    }

    @Override // io.reactivex.rxjava3.core.SingleSource
    public final void a(SingleObserver singleObserver) {
        Objects.requireNonNull(singleObserver, "observer is null");
        try {
            e(singleObserver);
        } catch (NullPointerException e2) {
            throw e2;
        } catch (Throwable th) {
            Exceptions.a(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public final SingleMap d(Function function) {
        Objects.requireNonNull(function, "mapper is null");
        return new SingleMap(this, function);
    }

    public abstract void e(SingleObserver singleObserver);
}
