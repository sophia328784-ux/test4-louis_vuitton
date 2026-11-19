package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableRangeLong extends Observable<Long> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f70717b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f70718c;

    public static final class RangeDisposable extends BasicIntQueueDisposable<Long> {
        private static final long serialVersionUID = 396518478098735504L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70719b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f70720c;
        public long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f70721e;

        public RangeDisposable(Observer observer, long j2, long j3) {
            this.f70719b = observer;
            this.d = j2;
            this.f70720c = j3;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final void clear() {
            this.d = this.f70720c;
            lazySet(1);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            set(1);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return get() != 0;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final boolean isEmpty() {
            return this.d == this.f70720c;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            long j2 = this.d;
            if (j2 != this.f70720c) {
                this.d = 1 + j2;
                return Long.valueOf(j2);
            }
            lazySet(1);
            return null;
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public final int requestFusion(int i2) {
            this.f70721e = true;
            return 1;
        }
    }

    public ObservableRangeLong(long j2, long j3) {
        this.f70717b = j2;
        this.f70718c = j3;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        Observer observer2;
        long j2 = this.f70718c;
        long j3 = this.f70717b;
        RangeDisposable rangeDisposable = new RangeDisposable(observer, j3, j2 + j3);
        observer.onSubscribe(rangeDisposable);
        if (rangeDisposable.f70721e) {
            return;
        }
        long j4 = rangeDisposable.d;
        while (true) {
            long j5 = rangeDisposable.f70720c;
            observer2 = rangeDisposable.f70719b;
            if (j4 == j5 || rangeDisposable.get() != 0) {
                break;
            }
            observer2.onNext(Long.valueOf(j4));
            j4++;
        }
        if (rangeDisposable.get() == 0) {
            rangeDisposable.lazySet(1);
            observer2.onComplete();
        }
    }
}
