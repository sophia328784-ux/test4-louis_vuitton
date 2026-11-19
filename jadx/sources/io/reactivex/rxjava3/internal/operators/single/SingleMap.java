package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class SingleMap<T, R> extends Single<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SingleSource f71063b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f71064c;

    public static final class MapSingleObserver<T, R> implements SingleObserver<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SingleObserver f71065b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f71066c;

        public MapSingleObserver(SingleObserver singleObserver, Function function) {
            this.f71065b = singleObserver;
            this.f71066c = function;
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
        public final void onError(Throwable th) {
            this.f71065b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
        public final void onSubscribe(Disposable disposable) {
            this.f71065b.onSubscribe(disposable);
        }

        @Override // io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.core.MaybeObserver
        public final void onSuccess(Object obj) {
            try {
                Object objApply = this.f71066c.apply(obj);
                Objects.requireNonNull(objApply, "The mapper function returned a null value.");
                this.f71065b.onSuccess(objApply);
            } catch (Throwable th) {
                Exceptions.a(th);
                onError(th);
            }
        }
    }

    public SingleMap(SingleSource<? extends T> singleSource, Function<? super T, ? extends R> function) {
        this.f71063b = singleSource;
        this.f71064c = function;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void e(SingleObserver singleObserver) {
        this.f71063b.a(new MapSingleObserver(singleObserver, this.f71064c));
    }
}
