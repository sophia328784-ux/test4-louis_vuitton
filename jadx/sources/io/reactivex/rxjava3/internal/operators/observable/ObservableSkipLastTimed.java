package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableSkipLastTimed<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f70872c;
    public final TimeUnit d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Scheduler f70873e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f70874f;
    public final boolean g;

    public static final class SkipLastTimedObserver<T> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -5677354903406201275L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70875b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f70876c;
        public final TimeUnit d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Scheduler f70877e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final SpscLinkedArrayQueue f70878f;
        public final boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Disposable f70879h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public volatile boolean f70880i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public volatile boolean f70881j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Throwable f70882k;

        public SkipLastTimedObserver(Observer observer, long j2, TimeUnit timeUnit, Scheduler scheduler, int i2, boolean z) {
            this.f70875b = observer;
            this.f70876c = j2;
            this.d = timeUnit;
            this.f70877e = scheduler;
            this.f70878f = new SpscLinkedArrayQueue(i2);
            this.g = z;
        }

        public final void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            Observer observer = this.f70875b;
            SpscLinkedArrayQueue spscLinkedArrayQueue = this.f70878f;
            boolean z = this.g;
            TimeUnit timeUnit = this.d;
            Scheduler scheduler = this.f70877e;
            long j2 = this.f70876c;
            int iAddAndGet = 1;
            while (!this.f70880i) {
                boolean z2 = this.f70881j;
                Long l = (Long) spscLinkedArrayQueue.b();
                boolean z3 = l == null;
                scheduler.getClass();
                long jA = Scheduler.a(timeUnit);
                if (!z3 && l.longValue() > jA - j2) {
                    z3 = true;
                }
                if (z2) {
                    if (!z) {
                        Throwable th = this.f70882k;
                        if (th != null) {
                            this.f70878f.clear();
                            observer.onError(th);
                            return;
                        } else if (z3) {
                            observer.onComplete();
                            return;
                        }
                    } else if (z3) {
                        Throwable th2 = this.f70882k;
                        if (th2 != null) {
                            observer.onError(th2);
                            return;
                        } else {
                            observer.onComplete();
                            return;
                        }
                    }
                }
                if (z3) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    spscLinkedArrayQueue.poll();
                    observer.onNext(spscLinkedArrayQueue.poll());
                }
            }
            this.f70878f.clear();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (this.f70880i) {
                return;
            }
            this.f70880i = true;
            this.f70879h.dispose();
            if (getAndIncrement() == 0) {
                this.f70878f.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70880i;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70881j = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70882k = th;
            this.f70881j = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f70877e.getClass();
            this.f70878f.a(Long.valueOf(Scheduler.a(this.d)), obj);
            a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70879h, disposable)) {
                this.f70879h = disposable;
                this.f70875b.onSubscribe(this);
            }
        }
    }

    public ObservableSkipLastTimed(ObservableSource<T> observableSource, long j2, TimeUnit timeUnit, Scheduler scheduler, int i2, boolean z) {
        super(observableSource);
        this.f70872c = j2;
        this.d = timeUnit;
        this.f70873e = scheduler;
        this.f70874f = i2;
        this.g = z;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new SkipLastTimedObserver(observer, this.f70872c, this.d, this.f70873e, this.f70874f, this.g));
    }
}
