package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableReduceWithSingle<T, R> extends Single<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Supplier f70734c;
    public final BiFunction d;

    public ObservableReduceWithSingle(ObservableSource<T> observableSource, Supplier<R> supplier, BiFunction<R, ? super T, R> biFunction) {
        this.f70733b = observableSource;
        this.f70734c = supplier;
        this.d = biFunction;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void e(SingleObserver singleObserver) {
        try {
            Object obj = this.f70734c.get();
            Objects.requireNonNull(obj, "The seedSupplier returned a null value");
            this.f70733b.subscribe(new ObservableReduceSeedSingle.ReduceSeedObserver(singleObserver, this.d, obj));
        } catch (Throwable th) {
            Exceptions.a(th);
            singleObserver.onSubscribe(EmptyDisposable.INSTANCE);
            singleObserver.onError(th);
        }
    }
}
