package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.fuseable.FuseToObservable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableElementAtSingle<T> extends Single<T> implements FuseToObservable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f70476c;
    public final Object d;

    public static final class ElementAtObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SingleObserver f70477b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f70478c;
        public final Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Disposable f70479e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f70480f;
        public boolean g;

        public ElementAtObserver(SingleObserver singleObserver, long j2, Object obj) {
            this.f70477b = singleObserver;
            this.f70478c = j2;
            this.d = obj;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70479e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70479e.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.g) {
                return;
            }
            this.g = true;
            Object obj = this.d;
            SingleObserver singleObserver = this.f70477b;
            if (obj != null) {
                singleObserver.onSuccess(obj);
            } else {
                singleObserver.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.g) {
                RxJavaPlugins.b(th);
            } else {
                this.g = true;
                this.f70477b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.g) {
                return;
            }
            long j2 = this.f70480f;
            if (j2 != this.f70478c) {
                this.f70480f = j2 + 1;
                return;
            }
            this.g = true;
            this.f70479e.dispose();
            this.f70477b.onSuccess(obj);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70479e, disposable)) {
                this.f70479e = disposable;
                this.f70477b.onSubscribe(this);
            }
        }
    }

    public ObservableElementAtSingle(ObservableSource<T> observableSource, long j2, T t) {
        this.f70475b = observableSource;
        this.f70476c = j2;
        this.d = t;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToObservable
    public final Observable b() {
        return new ObservableElementAt(this.f70475b, this.f70476c, this.d, true);
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void e(SingleObserver singleObserver) {
        this.f70475b.subscribe(new ElementAtObserver(singleObserver, this.f70476c, this.d));
    }
}
