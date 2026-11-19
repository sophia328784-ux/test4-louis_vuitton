package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.ArrayCompositeDisposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.observers.SerializedObserver;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableSkipUntil<T, U> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ObservableSource f70883c;

    public final class SkipUntil implements Observer<U> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayCompositeDisposable f70884b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SkipUntilObserver f70885c;
        public final SerializedObserver d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Disposable f70886e;

        public SkipUntil(ArrayCompositeDisposable arrayCompositeDisposable, SkipUntilObserver skipUntilObserver, SerializedObserver serializedObserver) {
            this.f70884b = arrayCompositeDisposable;
            this.f70885c = skipUntilObserver;
            this.d = serializedObserver;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70885c.f70889e = true;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70884b.dispose();
            this.d.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f70886e.dispose();
            this.f70885c.f70889e = true;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70886e, disposable)) {
                this.f70886e = disposable;
                this.f70884b.a(1, disposable);
            }
        }
    }

    public static final class SkipUntilObserver<T> implements Observer<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SerializedObserver f70887b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayCompositeDisposable f70888c;
        public Disposable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile boolean f70889e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f70890f;

        public SkipUntilObserver(SerializedObserver serializedObserver, ArrayCompositeDisposable arrayCompositeDisposable) {
            this.f70887b = serializedObserver;
            this.f70888c = arrayCompositeDisposable;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70888c.dispose();
            this.f70887b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70888c.dispose();
            this.f70887b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70890f) {
                this.f70887b.onNext(obj);
            } else if (this.f70889e) {
                this.f70890f = true;
                this.f70887b.onNext(obj);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.d, disposable)) {
                this.d = disposable;
                this.f70888c.a(0, disposable);
            }
        }
    }

    public ObservableSkipUntil(ObservableSource<T> observableSource, ObservableSource<U> observableSource2) {
        super(observableSource);
        this.f70883c = observableSource2;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        SerializedObserver serializedObserver = new SerializedObserver(observer);
        ArrayCompositeDisposable arrayCompositeDisposable = new ArrayCompositeDisposable(2);
        serializedObserver.onSubscribe(arrayCompositeDisposable);
        SkipUntilObserver skipUntilObserver = new SkipUntilObserver(serializedObserver, arrayCompositeDisposable);
        this.f70883c.subscribe(new SkipUntil(arrayCompositeDisposable, skipUntilObserver, serializedObserver));
        this.f70226b.subscribe(skipUntilObserver);
    }
}
