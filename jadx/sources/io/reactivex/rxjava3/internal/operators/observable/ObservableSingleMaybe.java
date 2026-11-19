package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableSingleMaybe<T> extends Maybe<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70856b;

    public static final class SingleElementObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MaybeObserver f70857b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Disposable f70858c;
        public Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f70859e;

        public SingleElementObserver(MaybeObserver maybeObserver) {
            this.f70857b = maybeObserver;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70858c.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70858c.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.f70859e) {
                return;
            }
            this.f70859e = true;
            Object obj = this.d;
            this.d = null;
            MaybeObserver maybeObserver = this.f70857b;
            if (obj == null) {
                maybeObserver.onComplete();
            } else {
                maybeObserver.onSuccess(obj);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70859e) {
                RxJavaPlugins.b(th);
            } else {
                this.f70859e = true;
                this.f70857b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70859e) {
                return;
            }
            if (this.d == null) {
                this.d = obj;
                return;
            }
            this.f70859e = true;
            this.f70858c.dispose();
            this.f70857b.onError(new IllegalArgumentException("Sequence contains more than one element!"));
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70858c, disposable)) {
                this.f70858c = disposable;
                this.f70857b.onSubscribe(this);
            }
        }
    }

    public ObservableSingleMaybe(ObservableSource<T> observableSource) {
        this.f70856b = observableSource;
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public final void c(MaybeObserver maybeObserver) {
        this.f70856b.subscribe(new SingleElementObserver(maybeObserver));
    }
}
