package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableElementAt<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f70462c;
    public final Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f70463e;

    public static final class ElementAtObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70464b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f70465c;
        public final Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f70466e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Disposable f70467f;
        public long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f70468h;

        public ElementAtObserver(Observer observer, long j2, Object obj, boolean z) {
            this.f70464b = observer;
            this.f70465c = j2;
            this.d = obj;
            this.f70466e = z;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70467f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70467f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.f70468h) {
                return;
            }
            this.f70468h = true;
            Observer observer = this.f70464b;
            Object obj = this.d;
            if (obj == null && this.f70466e) {
                observer.onError(new NoSuchElementException());
                return;
            }
            if (obj != null) {
                observer.onNext(obj);
            }
            observer.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70468h) {
                RxJavaPlugins.b(th);
            } else {
                this.f70468h = true;
                this.f70464b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70468h) {
                return;
            }
            long j2 = this.g;
            if (j2 != this.f70465c) {
                this.g = j2 + 1;
                return;
            }
            this.f70468h = true;
            this.f70467f.dispose();
            Observer observer = this.f70464b;
            observer.onNext(obj);
            observer.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70467f, disposable)) {
                this.f70467f = disposable;
                this.f70464b.onSubscribe(this);
            }
        }
    }

    public ObservableElementAt(ObservableSource<T> observableSource, long j2, T t, boolean z) {
        super(observableSource);
        this.f70462c = j2;
        this.d = t;
        this.f70463e = z;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new ElementAtObserver(observer, this.f70462c, this.d, this.f70463e));
    }
}
