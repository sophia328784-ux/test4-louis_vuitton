package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableOnErrorNext<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70692c;

    public static final class OnErrorNextObserver<T> implements Observer<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70693b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70694c;
        public final SequentialDisposable d = new SequentialDisposable();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f70695e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f70696f;

        public OnErrorNextObserver(Observer observer, Function function) {
            this.f70693b = observer;
            this.f70694c = function;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.f70696f) {
                return;
            }
            this.f70696f = true;
            this.f70695e = true;
            this.f70693b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            boolean z = this.f70695e;
            Observer observer = this.f70693b;
            if (z) {
                if (this.f70696f) {
                    RxJavaPlugins.b(th);
                    return;
                } else {
                    observer.onError(th);
                    return;
                }
            }
            this.f70695e = true;
            try {
                ObservableSource observableSource = (ObservableSource) this.f70694c.apply(th);
                if (observableSource != null) {
                    observableSource.subscribe(this);
                    return;
                }
                NullPointerException nullPointerException = new NullPointerException("Observable is null");
                nullPointerException.initCause(th);
                observer.onError(nullPointerException);
            } catch (Throwable th2) {
                Exceptions.a(th2);
                observer.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70696f) {
                return;
            }
            this.f70693b.onNext(obj);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            SequentialDisposable sequentialDisposable = this.d;
            sequentialDisposable.getClass();
            DisposableHelper.c(sequentialDisposable, disposable);
        }
    }

    public ObservableOnErrorNext(ObservableSource<T> observableSource, Function<? super Throwable, ? extends ObservableSource<? extends T>> function) {
        super(observableSource);
        this.f70692c = function;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        OnErrorNextObserver onErrorNextObserver = new OnErrorNextObserver(observer, this.f70692c);
        observer.onSubscribe(onErrorNextObserver.d);
        this.f70226b.subscribe(onErrorNextObserver);
    }
}
