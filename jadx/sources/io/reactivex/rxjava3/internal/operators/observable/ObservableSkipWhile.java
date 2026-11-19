package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableSkipWhile<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Predicate f70891c;

    public static final class SkipWhileObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70892b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Predicate f70893c;
        public Disposable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f70894e;

        public SkipWhileObserver(Observer observer, Predicate predicate) {
            this.f70892b = observer;
            this.f70893c = predicate;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.d.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70892b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70892b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            boolean z = this.f70894e;
            Observer observer = this.f70892b;
            if (z) {
                observer.onNext(obj);
                return;
            }
            try {
                if (this.f70893c.test(obj)) {
                    return;
                }
                this.f70894e = true;
                observer.onNext(obj);
            } catch (Throwable th) {
                Exceptions.a(th);
                this.d.dispose();
                observer.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.d, disposable)) {
                this.d = disposable;
                this.f70892b.onSubscribe(this);
            }
        }
    }

    public ObservableSkipWhile(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        super(observableSource);
        this.f70891c = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new SkipWhileObserver(observer, this.f70891c));
    }
}
