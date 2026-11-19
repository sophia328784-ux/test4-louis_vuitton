package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableReduceSeedSingle<T, R> extends Single<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70728b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f70729c;
    public final BiFunction d;

    public static final class ReduceSeedObserver<T, R> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SingleObserver f70730b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BiFunction f70731c;
        public Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Disposable f70732e;

        public ReduceSeedObserver(SingleObserver singleObserver, BiFunction biFunction, Object obj) {
            this.f70730b = singleObserver;
            this.d = obj;
            this.f70731c = biFunction;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70732e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70732e.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            Object obj = this.d;
            if (obj != null) {
                this.d = null;
                this.f70730b.onSuccess(obj);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.d == null) {
                RxJavaPlugins.b(th);
            } else {
                this.d = null;
                this.f70730b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            Object obj2 = this.d;
            if (obj2 != null) {
                try {
                    Object objApply = this.f70731c.apply(obj2, obj);
                    Objects.requireNonNull(objApply, "The reducer returned a null value");
                    this.d = objApply;
                } catch (Throwable th) {
                    Exceptions.a(th);
                    this.f70732e.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70732e, disposable)) {
                this.f70732e = disposable;
                this.f70730b.onSubscribe(this);
            }
        }
    }

    public ObservableReduceSeedSingle(ObservableSource<T> observableSource, R r, BiFunction<R, ? super T, R> biFunction) {
        this.f70728b = observableSource;
        this.f70729c = r;
        this.d = biFunction;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void e(SingleObserver singleObserver) {
        this.f70728b.subscribe(new ReduceSeedObserver(singleObserver, this.d, this.f70729c));
    }
}
