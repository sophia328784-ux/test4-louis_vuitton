package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableTakeLastTimed<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f70926c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TimeUnit f70927e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Scheduler f70928f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f70929h;

    public static final class TakeLastTimedObserver<T> extends AtomicBoolean implements Observer<T>, Disposable {
        private static final long serialVersionUID = -5677354903406201275L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70930b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f70931c;
        public final long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final TimeUnit f70932e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Scheduler f70933f;
        public final SpscLinkedArrayQueue g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f70934h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Disposable f70935i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public volatile boolean f70936j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Throwable f70937k;

        public TakeLastTimedObserver(Observer observer, long j2, TimeUnit timeUnit, Scheduler scheduler, int i2, long j3, boolean z) {
            this.f70930b = observer;
            this.f70931c = j2;
            this.d = j3;
            this.f70932e = timeUnit;
            this.f70933f = scheduler;
            this.g = new SpscLinkedArrayQueue(i2);
            this.f70934h = z;
        }

        public final void a() {
            Throwable th;
            if (compareAndSet(false, true)) {
                Observer observer = this.f70930b;
                SpscLinkedArrayQueue spscLinkedArrayQueue = this.g;
                boolean z = this.f70934h;
                Scheduler scheduler = this.f70933f;
                TimeUnit timeUnit = this.f70932e;
                scheduler.getClass();
                long jA = Scheduler.a(timeUnit) - this.d;
                while (!this.f70936j) {
                    if (!z && (th = this.f70937k) != null) {
                        spscLinkedArrayQueue.clear();
                        observer.onError(th);
                        return;
                    }
                    Object objPoll = spscLinkedArrayQueue.poll();
                    if (objPoll == null) {
                        Throwable th2 = this.f70937k;
                        if (th2 != null) {
                            observer.onError(th2);
                            return;
                        } else {
                            observer.onComplete();
                            return;
                        }
                    }
                    Object objPoll2 = spscLinkedArrayQueue.poll();
                    if (((Long) objPoll).longValue() >= jA) {
                        observer.onNext(objPoll2);
                    }
                }
                spscLinkedArrayQueue.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (this.f70936j) {
                return;
            }
            this.f70936j = true;
            this.f70935i.dispose();
            if (compareAndSet(false, true)) {
                this.g.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70936j;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70937k = th;
            a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            long j2;
            long j3;
            this.f70933f.getClass();
            long jA = Scheduler.a(this.f70932e);
            long j4 = this.f70931c;
            boolean z = j4 == Long.MAX_VALUE;
            Long lValueOf = Long.valueOf(jA);
            SpscLinkedArrayQueue spscLinkedArrayQueue = this.g;
            spscLinkedArrayQueue.a(lValueOf, obj);
            while (!spscLinkedArrayQueue.isEmpty()) {
                if (((Long) spscLinkedArrayQueue.b()).longValue() > jA - this.d) {
                    if (z) {
                        return;
                    }
                    AtomicLong atomicLong = spscLinkedArrayQueue.f71153i;
                    long j5 = atomicLong.get();
                    while (true) {
                        j2 = spscLinkedArrayQueue.f71148b.get();
                        j3 = atomicLong.get();
                        if (j5 == j3) {
                            break;
                        } else {
                            j5 = j3;
                        }
                    }
                    if ((((int) (j2 - j3)) >> 1) <= j4) {
                        return;
                    }
                }
                spscLinkedArrayQueue.poll();
                spscLinkedArrayQueue.poll();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70935i, disposable)) {
                this.f70935i = disposable;
                this.f70930b.onSubscribe(this);
            }
        }
    }

    public ObservableTakeLastTimed(ObservableSource<T> observableSource, long j2, long j3, TimeUnit timeUnit, Scheduler scheduler, int i2, boolean z) {
        super(observableSource);
        this.f70926c = j2;
        this.d = j3;
        this.f70927e = timeUnit;
        this.f70928f = scheduler;
        this.g = i2;
        this.f70929h = z;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new TakeLastTimedObserver(observer, this.f70926c, this.f70927e, this.f70928f, this.g, this.d, this.f70929h));
    }
}
