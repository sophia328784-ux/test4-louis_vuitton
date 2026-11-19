package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Predicate;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableAll<T> extends AbstractObservableWithUpstream<T, Boolean> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Predicate f70248c;

    public static final class AllObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70249b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Predicate f70250c;
        public Disposable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f70251e;

        public AllObserver(Observer observer, Predicate predicate) {
            this.f70249b = observer;
            this.f70250c = predicate;
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
            if (this.f70251e) {
                return;
            }
            this.f70251e = true;
            Boolean bool = Boolean.TRUE;
            Observer observer = this.f70249b;
            observer.onNext(bool);
            observer.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70251e) {
                RxJavaPlugins.b(th);
            } else {
                this.f70251e = true;
                this.f70249b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70251e) {
                return;
            }
            try {
                if (this.f70250c.test(obj)) {
                    return;
                }
                this.f70251e = true;
                this.d.dispose();
                Boolean bool = Boolean.FALSE;
                Observer observer = this.f70249b;
                observer.onNext(bool);
                observer.onComplete();
            } catch (Throwable th) {
                Exceptions.a(th);
                this.d.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.d, disposable)) {
                this.d = disposable;
                this.f70249b.onSubscribe(this);
            }
        }
    }

    public ObservableAll(ObservableSource<T> observableSource, Predicate<? super T> predicate) {
        super(observableSource);
        this.f70248c = predicate;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new AllObserver(observer, this.f70248c));
    }
}
