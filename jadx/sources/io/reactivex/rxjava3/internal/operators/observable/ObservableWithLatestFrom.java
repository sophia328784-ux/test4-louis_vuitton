package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.observers.SerializedObserver;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableWithLatestFrom<T, U, R> extends AbstractObservableWithUpstream<T, R> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BiFunction f71025c;
    public final ObservableSource d;

    public static final class WithLatestFromObserver<T, U, R> extends AtomicReference<U> implements Observer<T>, Disposable {
        private static final long serialVersionUID = -312246233408980075L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SerializedObserver f71026b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BiFunction f71027c;
        public final AtomicReference d = new AtomicReference();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicReference f71028e = new AtomicReference();

        public WithLatestFromObserver(SerializedObserver serializedObserver, BiFunction biFunction) {
            this.f71026b = serializedObserver;
            this.f71027c = biFunction;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            DisposableHelper.a(this.d);
            DisposableHelper.a(this.f71028e);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return DisposableHelper.b((Disposable) this.d.get());
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            DisposableHelper.a(this.f71028e);
            this.f71026b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            DisposableHelper.a(this.f71028e);
            this.f71026b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            SerializedObserver serializedObserver = this.f71026b;
            U u = get();
            if (u != null) {
                try {
                    Object objApply = this.f71027c.apply(obj, u);
                    Objects.requireNonNull(objApply, "The combiner returned a null value");
                    serializedObserver.onNext(objApply);
                } catch (Throwable th) {
                    Exceptions.a(th);
                    dispose();
                    serializedObserver.onError(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this.d, disposable);
        }
    }

    public final class WithLatestFromOtherObserver implements Observer<U> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final WithLatestFromObserver f71029b;

        public WithLatestFromOtherObserver(WithLatestFromObserver withLatestFromObserver) {
            this.f71029b = withLatestFromObserver;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            WithLatestFromObserver withLatestFromObserver = this.f71029b;
            DisposableHelper.a(withLatestFromObserver.d);
            withLatestFromObserver.f71026b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f71029b.lazySet(obj);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this.f71029b.f71028e, disposable);
        }
    }

    public ObservableWithLatestFrom(ObservableSource<T> observableSource, BiFunction<? super T, ? super U, ? extends R> biFunction, ObservableSource<? extends U> observableSource2) {
        super(observableSource);
        this.f71025c = biFunction;
        this.d = observableSource2;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        SerializedObserver serializedObserver = new SerializedObserver(observer);
        WithLatestFromObserver withLatestFromObserver = new WithLatestFromObserver(serializedObserver, this.f71025c);
        serializedObserver.onSubscribe(withLatestFromObserver);
        this.d.subscribe(new WithLatestFromOtherObserver(withLatestFromObserver));
        this.f70226b.subscribe(withLatestFromObserver);
    }
}
