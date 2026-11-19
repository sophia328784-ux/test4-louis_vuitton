package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Maybe;
import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.fuseable.FuseToObservable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableElementAtMaybe<T> extends Maybe<T> implements FuseToObservable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource f70469b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f70470c;

    public static final class ElementAtObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MaybeObserver f70471b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f70472c;
        public Disposable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f70473e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f70474f;

        public ElementAtObserver(MaybeObserver maybeObserver, long j2) {
            this.f70471b = maybeObserver;
            this.f70472c = j2;
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
            if (this.f70474f) {
                return;
            }
            this.f70474f = true;
            this.f70471b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70474f) {
                RxJavaPlugins.b(th);
            } else {
                this.f70474f = true;
                this.f70471b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70474f) {
                return;
            }
            long j2 = this.f70473e;
            if (j2 != this.f70472c) {
                this.f70473e = j2 + 1;
                return;
            }
            this.f70474f = true;
            this.d.dispose();
            this.f70471b.onSuccess(obj);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.d, disposable)) {
                this.d = disposable;
                this.f70471b.onSubscribe(this);
            }
        }
    }

    public ObservableElementAtMaybe(ObservableSource<T> observableSource, long j2) {
        this.f70469b = observableSource;
        this.f70470c = j2;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToObservable
    public final Observable b() {
        return new ObservableElementAt(this.f70469b, this.f70470c, null, false);
    }

    @Override // io.reactivex.rxjava3.core.Maybe
    public final void c(MaybeObserver maybeObserver) {
        this.f70469b.subscribe(new ElementAtObserver(maybeObserver, this.f70470c));
    }
}
