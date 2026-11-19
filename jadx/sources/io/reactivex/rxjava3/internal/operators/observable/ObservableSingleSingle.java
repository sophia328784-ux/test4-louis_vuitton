package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableSingleSingle<T> extends Single<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f70861c;

    public static final class SingleElementObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SingleObserver f70862b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object f70863c;
        public Disposable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Object f70864e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f70865f;

        public SingleElementObserver(SingleObserver singleObserver, Object obj) {
            this.f70862b = singleObserver;
            this.f70863c = obj;
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
            if (this.f70865f) {
                return;
            }
            this.f70865f = true;
            Object obj = this.f70864e;
            this.f70864e = null;
            if (obj == null) {
                obj = this.f70863c;
            }
            SingleObserver singleObserver = this.f70862b;
            if (obj != null) {
                singleObserver.onSuccess(obj);
            } else {
                singleObserver.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70865f) {
                RxJavaPlugins.b(th);
            } else {
                this.f70865f = true;
                this.f70862b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70865f) {
                return;
            }
            if (this.f70864e == null) {
                this.f70864e = obj;
                return;
            }
            this.f70865f = true;
            this.d.dispose();
            this.f70862b.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.d, disposable)) {
                this.d = disposable;
                this.f70862b.onSubscribe(this);
            }
        }
    }

    public ObservableSingleSingle(ObservableSource<? extends T> observableSource, T t) {
        this.f70860b = observableSource;
        this.f70861c = t;
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void e(SingleObserver singleObserver) {
        this.f70860b.subscribe(new SingleElementObserver(singleObserver, this.f70861c));
    }
}
