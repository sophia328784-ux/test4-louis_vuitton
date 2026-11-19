package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.InnerQueuedObserver;
import io.reactivex.rxjava3.internal.observers.InnerQueuedObserverSupport;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import io.reactivex.rxjava3.operators.QueueDisposable;
import io.reactivex.rxjava3.operators.SimpleQueue;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableConcatMapEager<T, R> extends AbstractObservableWithUpstream<T, R> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70369c;
    public final ErrorMode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f70370e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f70371f;

    public static final class ConcatMapEagerMainObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable, InnerQueuedObserverSupport<R> {
        private static final long serialVersionUID = 8080567949447303262L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70372b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70373c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f70374e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final ErrorMode f70375f;
        public final AtomicThrowable g = new AtomicThrowable();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final ArrayDeque f70376h = new ArrayDeque();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public SimpleQueue f70377i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Disposable f70378j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public volatile boolean f70379k;
        public int l;
        public volatile boolean m;
        public InnerQueuedObserver n;
        public int o;

        public ConcatMapEagerMainObserver(Observer observer, Function function, int i2, int i3, ErrorMode errorMode) {
            this.f70372b = observer;
            this.f70373c = function;
            this.d = i2;
            this.f70374e = i3;
            this.f70375f = errorMode;
        }

        @Override // io.reactivex.rxjava3.internal.observers.InnerQueuedObserverSupport
        public final void a(InnerQueuedObserver innerQueuedObserver, Object obj) {
            innerQueuedObserver.d.offer(obj);
            b();
        }

        @Override // io.reactivex.rxjava3.internal.observers.InnerQueuedObserverSupport
        public final void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            SimpleQueue simpleQueue = this.f70377i;
            ArrayDeque arrayDeque = this.f70376h;
            Observer observer = this.f70372b;
            ErrorMode errorMode = this.f70375f;
            int iAddAndGet = 1;
            while (true) {
                int i2 = this.o;
                while (i2 != this.d) {
                    if (this.m) {
                        simpleQueue.clear();
                        e();
                        return;
                    }
                    if (errorMode == ErrorMode.IMMEDIATE && this.g.get() != null) {
                        simpleQueue.clear();
                        e();
                        this.g.d(this.f70372b);
                        return;
                    }
                    try {
                        Object objPoll = simpleQueue.poll();
                        if (objPoll == null) {
                            break;
                        }
                        Object objApply = this.f70373c.apply(objPoll);
                        Objects.requireNonNull(objApply, "The mapper returned a null ObservableSource");
                        ObservableSource observableSource = (ObservableSource) objApply;
                        InnerQueuedObserver innerQueuedObserver = new InnerQueuedObserver(this, this.f70374e);
                        arrayDeque.offer(innerQueuedObserver);
                        observableSource.subscribe(innerQueuedObserver);
                        i2++;
                    } catch (Throwable th) {
                        Exceptions.a(th);
                        this.f70378j.dispose();
                        simpleQueue.clear();
                        e();
                        this.g.a(th);
                        this.g.d(this.f70372b);
                        return;
                    }
                }
                this.o = i2;
                if (this.m) {
                    simpleQueue.clear();
                    e();
                    return;
                }
                if (errorMode == ErrorMode.IMMEDIATE && this.g.get() != null) {
                    simpleQueue.clear();
                    e();
                    this.g.d(this.f70372b);
                    return;
                }
                InnerQueuedObserver innerQueuedObserver2 = this.n;
                if (innerQueuedObserver2 == null) {
                    if (errorMode == ErrorMode.BOUNDARY && this.g.get() != null) {
                        simpleQueue.clear();
                        e();
                        this.g.d(observer);
                        return;
                    }
                    boolean z = this.f70379k;
                    InnerQueuedObserver innerQueuedObserver3 = (InnerQueuedObserver) arrayDeque.poll();
                    boolean z2 = innerQueuedObserver3 == null;
                    if (z && z2) {
                        if (this.g.get() == null) {
                            observer.onComplete();
                            return;
                        }
                        simpleQueue.clear();
                        e();
                        this.g.d(observer);
                        return;
                    }
                    if (!z2) {
                        this.n = innerQueuedObserver3;
                    }
                    innerQueuedObserver2 = innerQueuedObserver3;
                }
                if (innerQueuedObserver2 != null) {
                    SimpleQueue simpleQueue2 = innerQueuedObserver2.d;
                    while (true) {
                        if (this.m) {
                            simpleQueue.clear();
                            e();
                            return;
                        }
                        boolean z3 = innerQueuedObserver2.f70128e;
                        if (errorMode == ErrorMode.IMMEDIATE && this.g.get() != null) {
                            simpleQueue.clear();
                            e();
                            this.g.d(observer);
                            return;
                        }
                        try {
                            Object objPoll2 = simpleQueue2.poll();
                            boolean z4 = objPoll2 == null;
                            if (z3 && z4) {
                                this.n = null;
                                this.o--;
                            } else if (!z4) {
                                observer.onNext(objPoll2);
                            }
                        } catch (Throwable th2) {
                            Exceptions.a(th2);
                            this.g.a(th2);
                            this.n = null;
                            this.o--;
                        }
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.observers.InnerQueuedObserverSupport
        public final void c(InnerQueuedObserver innerQueuedObserver) {
            innerQueuedObserver.f70128e = true;
            b();
        }

        @Override // io.reactivex.rxjava3.internal.observers.InnerQueuedObserverSupport
        public final void d(InnerQueuedObserver innerQueuedObserver, Throwable th) {
            if (this.g.a(th)) {
                if (this.f70375f == ErrorMode.IMMEDIATE) {
                    this.f70378j.dispose();
                }
                innerQueuedObserver.f70128e = true;
                b();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (this.m) {
                return;
            }
            this.m = true;
            this.f70378j.dispose();
            this.g.b();
            if (getAndIncrement() == 0) {
                do {
                    this.f70377i.clear();
                    e();
                } while (decrementAndGet() != 0);
            }
        }

        public final void e() {
            InnerQueuedObserver innerQueuedObserver = this.n;
            if (innerQueuedObserver != null) {
                DisposableHelper.a(innerQueuedObserver);
            }
            while (true) {
                InnerQueuedObserver innerQueuedObserver2 = (InnerQueuedObserver) this.f70376h.poll();
                if (innerQueuedObserver2 == null) {
                    return;
                } else {
                    DisposableHelper.a(innerQueuedObserver2);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.m;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70379k = true;
            b();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.g.a(th)) {
                this.f70379k = true;
                b();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.l == 0) {
                this.f70377i.offer(obj);
            }
            b();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70378j, disposable)) {
                this.f70378j = disposable;
                if (disposable instanceof QueueDisposable) {
                    QueueDisposable queueDisposable = (QueueDisposable) disposable;
                    int iRequestFusion = queueDisposable.requestFusion(3);
                    if (iRequestFusion == 1) {
                        this.l = iRequestFusion;
                        this.f70377i = queueDisposable;
                        this.f70379k = true;
                        this.f70372b.onSubscribe(this);
                        b();
                        return;
                    }
                    if (iRequestFusion == 2) {
                        this.l = iRequestFusion;
                        this.f70377i = queueDisposable;
                        this.f70372b.onSubscribe(this);
                        return;
                    }
                }
                this.f70377i = new SpscLinkedArrayQueue(this.f70374e);
                this.f70372b.onSubscribe(this);
            }
        }
    }

    public ObservableConcatMapEager(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<? extends R>> function, ErrorMode errorMode, int i2, int i3) {
        super(observableSource);
        this.f70369c = function;
        this.d = errorMode;
        this.f70370e = i2;
        this.f70371f = i3;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new ConcatMapEagerMainObserver(observer, this.f70369c, this.f70370e, this.f70371f, this.d));
    }
}
