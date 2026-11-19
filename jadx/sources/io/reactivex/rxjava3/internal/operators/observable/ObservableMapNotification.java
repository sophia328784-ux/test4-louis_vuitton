package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableMapNotification<T, R> extends AbstractObservableWithUpstream<T, ObservableSource<? extends R>> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70654c;
    public final Function d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Supplier f70655e;

    public static final class MapNotificationObserver<T, R> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70656b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70657c;
        public final Function d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Supplier f70658e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Disposable f70659f;

        public MapNotificationObserver(Observer observer, Function function, Function function2, Supplier supplier) {
            this.f70656b = observer;
            this.f70657c = function;
            this.d = function2;
            this.f70658e = supplier;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70659f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70659f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            Observer observer = this.f70656b;
            try {
                Object obj = this.f70658e.get();
                Objects.requireNonNull(obj, "The onComplete ObservableSource returned is null");
                observer.onNext((ObservableSource) obj);
                observer.onComplete();
            } catch (Throwable th) {
                Exceptions.a(th);
                observer.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            Observer observer = this.f70656b;
            try {
                Object objApply = this.d.apply(th);
                Objects.requireNonNull(objApply, "The onError ObservableSource returned is null");
                observer.onNext((ObservableSource) objApply);
                observer.onComplete();
            } catch (Throwable th2) {
                Exceptions.a(th2);
                observer.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            Observer observer = this.f70656b;
            try {
                Object objApply = this.f70657c.apply(obj);
                Objects.requireNonNull(objApply, "The onNext ObservableSource returned is null");
                observer.onNext((ObservableSource) objApply);
            } catch (Throwable th) {
                Exceptions.a(th);
                observer.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70659f, disposable)) {
                this.f70659f = disposable;
                this.f70656b.onSubscribe(this);
            }
        }
    }

    public ObservableMapNotification(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<? extends R>> function, Function<? super Throwable, ? extends ObservableSource<? extends R>> function2, Supplier<? extends ObservableSource<? extends R>> supplier) {
        super(observableSource);
        this.f70654c = function;
        this.d = function2;
        this.f70655e = supplier;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new MapNotificationObserver(observer, this.f70654c, this.d, this.f70655e));
    }
}
