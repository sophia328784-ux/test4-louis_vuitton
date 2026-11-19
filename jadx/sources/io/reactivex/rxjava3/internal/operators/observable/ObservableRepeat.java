package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableRepeat<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f70742c;

    public static final class RepeatObserver<T> extends AtomicInteger implements Observer<T> {
        private static final long serialVersionUID = -7098360935104053232L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70743b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final SequentialDisposable f70744c;
        public final ObservableSource d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f70745e;

        public RepeatObserver(Observer observer, long j2, SequentialDisposable sequentialDisposable, ObservableSource observableSource) {
            this.f70743b = observer;
            this.f70744c = sequentialDisposable;
            this.d = observableSource;
            this.f70745e = j2;
        }

        public final void a() {
            if (getAndIncrement() == 0) {
                int iAddAndGet = 1;
                while (!this.f70744c.isDisposed()) {
                    this.d.subscribe(this);
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            long j2 = this.f70745e;
            if (j2 != Long.MAX_VALUE) {
                this.f70745e = j2 - 1;
            }
            if (j2 != 0) {
                a();
            } else {
                this.f70743b.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70743b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f70743b.onNext(obj);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            SequentialDisposable sequentialDisposable = this.f70744c;
            sequentialDisposable.getClass();
            DisposableHelper.c(sequentialDisposable, disposable);
        }
    }

    public ObservableRepeat(Observable<T> observable, long j2) {
        super(observable);
        this.f70742c = j2;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        observer.onSubscribe(sequentialDisposable);
        long j2 = this.f70742c;
        new RepeatObserver(observer, j2 != Long.MAX_VALUE ? j2 - 1 : Long.MAX_VALUE, sequentialDisposable, this.f70226b).a();
    }
}
