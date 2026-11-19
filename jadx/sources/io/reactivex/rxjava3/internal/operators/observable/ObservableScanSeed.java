package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableScanSeed<T, R> extends AbstractObservableWithUpstream<T, R> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BiFunction f70823c;
    public final Supplier d;

    public static final class ScanSeedObserver<T, R> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70824b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BiFunction f70825c;
        public Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Disposable f70826e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f70827f;

        public ScanSeedObserver(Observer observer, BiFunction biFunction, Object obj) {
            this.f70824b = observer;
            this.f70825c = biFunction;
            this.d = obj;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70826e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70826e.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.f70827f) {
                return;
            }
            this.f70827f = true;
            this.f70824b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70827f) {
                RxJavaPlugins.b(th);
            } else {
                this.f70827f = true;
                this.f70824b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70827f) {
                return;
            }
            try {
                Object objApply = this.f70825c.apply(this.d, obj);
                Objects.requireNonNull(objApply, "The accumulator returned a null value");
                this.d = objApply;
                this.f70824b.onNext(objApply);
            } catch (Throwable th) {
                Exceptions.a(th);
                this.f70826e.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70826e, disposable)) {
                this.f70826e = disposable;
                Observer observer = this.f70824b;
                observer.onSubscribe(this);
                observer.onNext(this.d);
            }
        }
    }

    public ObservableScanSeed(ObservableSource<T> observableSource, Supplier<R> supplier, BiFunction<R, ? super T, R> biFunction) {
        super(observableSource);
        this.f70823c = biFunction;
        this.d = supplier;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        try {
            Object obj = this.d.get();
            Objects.requireNonNull(obj, "The seed supplied is null");
            this.f70226b.subscribe(new ScanSeedObserver(observer, this.f70823c, obj));
        } catch (Throwable th) {
            Exceptions.a(th);
            EmptyDisposable.b(th, observer);
        }
    }
}
