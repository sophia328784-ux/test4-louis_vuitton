package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.CompletableObserver;
import io.reactivex.rxjava3.core.CompletableSource;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.HalfSerializer;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableMergeWithCompletable<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CompletableSource f70662c;

    public static final class MergeWithObserver<T> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -4592979584110982903L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70663b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AtomicReference f70664c = new AtomicReference();
        public final OtherObserver d = new OtherObserver(this);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicThrowable f70665e = new AtomicThrowable();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public volatile boolean f70666f;
        public volatile boolean g;

        public static final class OtherObserver extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = -2935427570954647017L;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final MergeWithObserver f70667b;

            public OtherObserver(MergeWithObserver mergeWithObserver) {
                this.f70667b = mergeWithObserver;
            }

            @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onComplete() {
                MergeWithObserver mergeWithObserver = this.f70667b;
                mergeWithObserver.g = true;
                if (mergeWithObserver.f70666f) {
                    HalfSerializer.a(mergeWithObserver.f70663b, mergeWithObserver, mergeWithObserver.f70665e);
                }
            }

            @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onError(Throwable th) {
                MergeWithObserver mergeWithObserver = this.f70667b;
                DisposableHelper.a(mergeWithObserver.f70664c);
                HalfSerializer.b(mergeWithObserver.f70663b, th, mergeWithObserver, mergeWithObserver.f70665e);
            }

            @Override // io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onSubscribe(Disposable disposable) {
                DisposableHelper.e(this, disposable);
            }
        }

        public MergeWithObserver(Observer observer) {
            this.f70663b = observer;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            DisposableHelper.a(this.f70664c);
            DisposableHelper.a(this.d);
            this.f70665e.b();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return DisposableHelper.b((Disposable) this.f70664c.get());
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70666f = true;
            if (this.g) {
                HalfSerializer.a(this.f70663b, this, this.f70665e);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            DisposableHelper.a(this.d);
            HalfSerializer.b(this.f70663b, th, this, this.f70665e);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            HalfSerializer.c(this.f70663b, obj, this, this.f70665e);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this.f70664c, disposable);
        }
    }

    public ObservableMergeWithCompletable(Observable<T> observable, CompletableSource completableSource) {
        super(observable);
        this.f70662c = completableSource;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        MergeWithObserver mergeWithObserver = new MergeWithObserver(observer);
        observer.onSubscribe(mergeWithObserver);
        this.f70226b.subscribe(mergeWithObserver);
        this.f70662c.a(mergeWithObserver.d);
    }
}
