package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableRange extends Observable<Integer> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f70712b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f70713c;

    public static final class RangeDisposable extends BasicIntQueueDisposable<Integer> {
        private static final long serialVersionUID = 396518478098735504L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70714b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f70715c;
        public long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f70716e;

        public RangeDisposable(Observer observer, long j2, long j3) {
            this.f70714b = observer;
            this.d = j2;
            this.f70715c = j3;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final void clear() {
            this.d = this.f70715c;
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
            return this.d == this.f70715c;
        }

        @Override // io.reactivex.rxjava3.operators.SimpleQueue
        public final Object poll() {
            long j2 = this.d;
            if (j2 != this.f70715c) {
                this.d = 1 + j2;
                return Integer.valueOf((int) j2);
            }
            lazySet(1);
            return null;
        }

        @Override // io.reactivex.rxjava3.operators.QueueFuseable
        public final int requestFusion(int i2) {
            this.f70716e = true;
            return 1;
        }
    }

    public ObservableRange(int i2, int i3) {
        this.f70712b = i2;
        this.f70713c = ((long) i2) + ((long) i3);
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        Observer observer2;
        RangeDisposable rangeDisposable = new RangeDisposable(observer, this.f70712b, this.f70713c);
        observer.onSubscribe(rangeDisposable);
        if (rangeDisposable.f70716e) {
            return;
        }
        long j2 = rangeDisposable.d;
        while (true) {
            long j3 = rangeDisposable.f70715c;
            observer2 = rangeDisposable.f70714b;
            if (j2 == j3 || rangeDisposable.get() != 0) {
                break;
            }
            observer2.onNext(Integer.valueOf((int) j2));
            j2++;
        }
        if (rangeDisposable.get() == 0) {
            rangeDisposable.lazySet(1);
            observer2.onComplete();
        }
    }
}
