package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableTake<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f70916c;

    public static final class TakeObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70917b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f70918c;
        public Disposable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f70919e;

        public TakeObserver(Observer observer, long j2) {
            this.f70917b = observer;
            this.f70919e = j2;
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
            if (this.f70918c) {
                return;
            }
            this.f70918c = true;
            this.d.dispose();
            this.f70917b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70918c) {
                RxJavaPlugins.b(th);
                return;
            }
            this.f70918c = true;
            this.d.dispose();
            this.f70917b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70918c) {
                return;
            }
            long j2 = this.f70919e;
            long j3 = j2 - 1;
            this.f70919e = j3;
            if (j2 > 0) {
                boolean z = j3 == 0;
                this.f70917b.onNext(obj);
                if (z) {
                    onComplete();
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.d, disposable)) {
                this.d = disposable;
                long j2 = this.f70919e;
                Observer observer = this.f70917b;
                if (j2 != 0) {
                    observer.onSubscribe(this);
                    return;
                }
                this.f70918c = true;
                disposable.dispose();
                EmptyDisposable.a(observer);
            }
        }
    }

    public ObservableTake(ObservableSource<T> observableSource, long j2) {
        super(observableSource);
        this.f70916c = j2;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new TakeObserver(observer, this.f70916c));
    }
}
