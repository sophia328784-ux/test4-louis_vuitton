package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.observables.ConnectableObservable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableRefCount<T> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConnectableObservable f70735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f70736c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TimeUnit f70737e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Scheduler f70738f;
    public RefConnection g;

    public static final class RefConnection extends AtomicReference<Disposable> implements Runnable, Consumer<Disposable> {
        private static final long serialVersionUID = -4552101107598366241L;
        boolean connected;
        boolean disconnectedEarly;
        final ObservableRefCount<?> parent;
        long subscriberCount;
        Disposable timer;

        public RefConnection(ObservableRefCount<?> observableRefCount) {
            this.parent = observableRefCount;
        }

        @Override // io.reactivex.rxjava3.functions.Consumer
        public void accept(Disposable disposable) {
            DisposableHelper.c(this, disposable);
            synchronized (this.parent) {
                try {
                    if (this.disconnectedEarly) {
                        this.parent.f70735b.d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.parent.d(this);
        }
    }

    public static final class RefCountObserver<T> extends AtomicBoolean implements Observer<T>, Disposable {
        private static final long serialVersionUID = -7419642935409022375L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70739b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ObservableRefCount f70740c;
        public final RefConnection d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Disposable f70741e;

        public RefCountObserver(Observer observer, ObservableRefCount observableRefCount, RefConnection refConnection) {
            this.f70739b = observer;
            this.f70740c = observableRefCount;
            this.d = refConnection;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70741e.dispose();
            if (compareAndSet(false, true)) {
                ObservableRefCount observableRefCount = this.f70740c;
                RefConnection refConnection = this.d;
                synchronized (observableRefCount) {
                    try {
                        RefConnection refConnection2 = observableRefCount.g;
                        if (refConnection2 != null && refConnection2 == refConnection) {
                            long j2 = refConnection.subscriberCount - 1;
                            refConnection.subscriberCount = j2;
                            if (j2 == 0 && refConnection.connected) {
                                if (observableRefCount.d == 0) {
                                    observableRefCount.d(refConnection);
                                    return;
                                }
                                SequentialDisposable sequentialDisposable = new SequentialDisposable();
                                refConnection.timer = sequentialDisposable;
                                DisposableHelper.c(sequentialDisposable, observableRefCount.f70738f.d(refConnection, observableRefCount.d, observableRefCount.f70737e));
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70741e.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (compareAndSet(false, true)) {
                this.f70740c.c(this.d);
                this.f70739b.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (!compareAndSet(false, true)) {
                RxJavaPlugins.b(th);
            } else {
                this.f70740c.c(this.d);
                this.f70739b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f70739b.onNext(obj);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70741e, disposable)) {
                this.f70741e = disposable;
                this.f70739b.onSubscribe(this);
            }
        }
    }

    public ObservableRefCount(ConnectableObservable<T> connectableObservable, int i2, long j2, TimeUnit timeUnit, Scheduler scheduler) {
        this.f70735b = connectableObservable;
        this.f70736c = i2;
        this.d = j2;
        this.f70737e = timeUnit;
        this.f70738f = scheduler;
    }

    public final void c(RefConnection refConnection) {
        synchronized (this) {
            try {
                if (this.g == refConnection) {
                    Disposable disposable = refConnection.timer;
                    if (disposable != null) {
                        disposable.dispose();
                        refConnection.timer = null;
                    }
                    long j2 = refConnection.subscriberCount - 1;
                    refConnection.subscriberCount = j2;
                    if (j2 == 0) {
                        this.g = null;
                        this.f70735b.d();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(RefConnection refConnection) {
        synchronized (this) {
            try {
                if (refConnection.subscriberCount == 0 && refConnection == this.g) {
                    this.g = null;
                    Disposable disposable = refConnection.get();
                    DisposableHelper.a(refConnection);
                    if (disposable == null) {
                        refConnection.disconnectedEarly = true;
                    } else {
                        this.f70735b.d();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        RefConnection refConnection;
        boolean z;
        Disposable disposable;
        synchronized (this) {
            try {
                refConnection = this.g;
                if (refConnection == null) {
                    refConnection = new RefConnection(this);
                    this.g = refConnection;
                }
                long j2 = refConnection.subscriberCount;
                if (j2 == 0 && (disposable = refConnection.timer) != null) {
                    disposable.dispose();
                }
                long j3 = j2 + 1;
                refConnection.subscriberCount = j3;
                if (refConnection.connected || j3 != this.f70736c) {
                    z = false;
                } else {
                    z = true;
                    refConnection.connected = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f70735b.subscribe(new RefCountObserver(observer, this, refConnection));
        if (z) {
            this.f70735b.c(refConnection);
        }
    }

    public ObservableRefCount(ConnectableObservable<T> connectableObservable) {
        this(connectableObservable, 1, 0L, TimeUnit.NANOSECONDS, null);
    }
}
