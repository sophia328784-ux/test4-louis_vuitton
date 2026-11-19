package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ErrorMode;
import io.reactivex.rxjava3.observers.SerializedObserver;
import io.reactivex.rxjava3.operators.QueueDisposable;
import io.reactivex.rxjava3.operators.SimpleQueue;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableConcatMap<T, U> extends AbstractObservableWithUpstream<T, U> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70347c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ErrorMode f70348e;

    public static final class ConcatMapDelayErrorObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -6951100001833242599L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70349b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70350c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicThrowable f70351e = new AtomicThrowable();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final DelayErrorInnerObserver f70352f;
        public final boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public SimpleQueue f70353h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Disposable f70354i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public volatile boolean f70355j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public volatile boolean f70356k;
        public volatile boolean l;
        public int m;

        public static final class DelayErrorInnerObserver<R> extends AtomicReference<Disposable> implements Observer<R> {
            private static final long serialVersionUID = 2620149119579502636L;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Observer f70357b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final ConcatMapDelayErrorObserver f70358c;

            public DelayErrorInnerObserver(Observer observer, ConcatMapDelayErrorObserver concatMapDelayErrorObserver) {
                this.f70357b = observer;
                this.f70358c = concatMapDelayErrorObserver;
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onComplete() {
                ConcatMapDelayErrorObserver concatMapDelayErrorObserver = this.f70358c;
                concatMapDelayErrorObserver.f70355j = false;
                concatMapDelayErrorObserver.a();
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onError(Throwable th) {
                ConcatMapDelayErrorObserver concatMapDelayErrorObserver = this.f70358c;
                if (concatMapDelayErrorObserver.f70351e.a(th)) {
                    if (!concatMapDelayErrorObserver.g) {
                        concatMapDelayErrorObserver.f70354i.dispose();
                    }
                    concatMapDelayErrorObserver.f70355j = false;
                    concatMapDelayErrorObserver.a();
                }
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onNext(Object obj) {
                this.f70357b.onNext(obj);
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onSubscribe(Disposable disposable) {
                DisposableHelper.c(this, disposable);
            }
        }

        public ConcatMapDelayErrorObserver(Observer observer, Function function, int i2, boolean z) {
            this.f70349b = observer;
            this.f70350c = function;
            this.d = i2;
            this.g = z;
            this.f70352f = new DelayErrorInnerObserver(observer, this);
        }

        public final void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            Observer observer = this.f70349b;
            SimpleQueue simpleQueue = this.f70353h;
            AtomicThrowable atomicThrowable = this.f70351e;
            while (true) {
                if (!this.f70355j) {
                    if (this.l) {
                        simpleQueue.clear();
                        return;
                    }
                    if (!this.g && atomicThrowable.get() != null) {
                        simpleQueue.clear();
                        this.l = true;
                        atomicThrowable.d(observer);
                        return;
                    }
                    boolean z = this.f70356k;
                    try {
                        Object objPoll = simpleQueue.poll();
                        boolean z2 = objPoll == null;
                        if (z && z2) {
                            this.l = true;
                            atomicThrowable.d(observer);
                            return;
                        }
                        if (!z2) {
                            try {
                                Object objApply = this.f70350c.apply(objPoll);
                                Objects.requireNonNull(objApply, "The mapper returned a null ObservableSource");
                                ObservableSource observableSource = (ObservableSource) objApply;
                                if (observableSource instanceof Supplier) {
                                    try {
                                        Object obj = ((Supplier) observableSource).get();
                                        if (obj != null && !this.l) {
                                            observer.onNext(obj);
                                        }
                                    } catch (Throwable th) {
                                        Exceptions.a(th);
                                        atomicThrowable.a(th);
                                    }
                                } else {
                                    this.f70355j = true;
                                    observableSource.subscribe(this.f70352f);
                                }
                            } catch (Throwable th2) {
                                Exceptions.a(th2);
                                this.l = true;
                                this.f70354i.dispose();
                                simpleQueue.clear();
                                atomicThrowable.a(th2);
                                atomicThrowable.d(observer);
                                return;
                            }
                        }
                    } catch (Throwable th3) {
                        Exceptions.a(th3);
                        this.l = true;
                        this.f70354i.dispose();
                        atomicThrowable.a(th3);
                        atomicThrowable.d(observer);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.l = true;
            this.f70354i.dispose();
            DelayErrorInnerObserver delayErrorInnerObserver = this.f70352f;
            delayErrorInnerObserver.getClass();
            DisposableHelper.a(delayErrorInnerObserver);
            this.f70351e.b();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.l;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70356k = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70351e.a(th)) {
                this.f70356k = true;
                a();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.m == 0) {
                this.f70353h.offer(obj);
            }
            a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70354i, disposable)) {
                this.f70354i = disposable;
                if (disposable instanceof QueueDisposable) {
                    QueueDisposable queueDisposable = (QueueDisposable) disposable;
                    int iRequestFusion = queueDisposable.requestFusion(3);
                    if (iRequestFusion == 1) {
                        this.m = iRequestFusion;
                        this.f70353h = queueDisposable;
                        this.f70356k = true;
                        this.f70349b.onSubscribe(this);
                        a();
                        return;
                    }
                    if (iRequestFusion == 2) {
                        this.m = iRequestFusion;
                        this.f70353h = queueDisposable;
                        this.f70349b.onSubscribe(this);
                        return;
                    }
                }
                this.f70353h = new SpscLinkedArrayQueue(this.d);
                this.f70349b.onSubscribe(this);
            }
        }
    }

    public static final class SourceObserver<T, U> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 8828587559905699186L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SerializedObserver f70359b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70360c;
        public final InnerObserver d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f70361e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public SimpleQueue f70362f;
        public Disposable g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile boolean f70363h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public volatile boolean f70364i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public volatile boolean f70365j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f70366k;

        public static final class InnerObserver<U> extends AtomicReference<Disposable> implements Observer<U> {
            private static final long serialVersionUID = -7449079488798789337L;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final SerializedObserver f70367b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final SourceObserver f70368c;

            public InnerObserver(SerializedObserver serializedObserver, SourceObserver sourceObserver) {
                this.f70367b = serializedObserver;
                this.f70368c = sourceObserver;
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onComplete() {
                SourceObserver sourceObserver = this.f70368c;
                sourceObserver.f70363h = false;
                sourceObserver.a();
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onError(Throwable th) {
                this.f70368c.dispose();
                this.f70367b.onError(th);
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onNext(Object obj) {
                this.f70367b.onNext(obj);
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onSubscribe(Disposable disposable) {
                DisposableHelper.c(this, disposable);
            }
        }

        public SourceObserver(SerializedObserver serializedObserver, Function function, int i2) {
            this.f70359b = serializedObserver;
            this.f70360c = function;
            this.f70361e = i2;
            this.d = new InnerObserver(serializedObserver, this);
        }

        public final void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            while (!this.f70364i) {
                if (!this.f70363h) {
                    boolean z = this.f70365j;
                    try {
                        Object objPoll = this.f70362f.poll();
                        boolean z2 = objPoll == null;
                        if (z && z2) {
                            this.f70364i = true;
                            this.f70359b.onComplete();
                            return;
                        }
                        if (!z2) {
                            try {
                                Object objApply = this.f70360c.apply(objPoll);
                                Objects.requireNonNull(objApply, "The mapper returned a null ObservableSource");
                                ObservableSource observableSource = (ObservableSource) objApply;
                                this.f70363h = true;
                                observableSource.subscribe(this.d);
                            } catch (Throwable th) {
                                Exceptions.a(th);
                                dispose();
                                this.f70362f.clear();
                                this.f70359b.onError(th);
                                return;
                            }
                        }
                    } catch (Throwable th2) {
                        Exceptions.a(th2);
                        dispose();
                        this.f70362f.clear();
                        this.f70359b.onError(th2);
                        return;
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.f70362f.clear();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70364i = true;
            InnerObserver innerObserver = this.d;
            innerObserver.getClass();
            DisposableHelper.a(innerObserver);
            this.g.dispose();
            if (getAndIncrement() == 0) {
                this.f70362f.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70364i;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.f70365j) {
                return;
            }
            this.f70365j = true;
            a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70365j) {
                RxJavaPlugins.b(th);
                return;
            }
            this.f70365j = true;
            dispose();
            this.f70359b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70365j) {
                return;
            }
            if (this.f70366k == 0) {
                this.f70362f.offer(obj);
            }
            a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.g, disposable)) {
                this.g = disposable;
                if (disposable instanceof QueueDisposable) {
                    QueueDisposable queueDisposable = (QueueDisposable) disposable;
                    int iRequestFusion = queueDisposable.requestFusion(3);
                    if (iRequestFusion == 1) {
                        this.f70366k = iRequestFusion;
                        this.f70362f = queueDisposable;
                        this.f70365j = true;
                        this.f70359b.onSubscribe(this);
                        a();
                        return;
                    }
                    if (iRequestFusion == 2) {
                        this.f70366k = iRequestFusion;
                        this.f70362f = queueDisposable;
                        this.f70359b.onSubscribe(this);
                        return;
                    }
                }
                this.f70362f = new SpscLinkedArrayQueue(this.f70361e);
                this.f70359b.onSubscribe(this);
            }
        }
    }

    public ObservableConcatMap(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<? extends U>> function, int i2, ErrorMode errorMode) {
        super(observableSource);
        this.f70347c = function;
        this.f70348e = errorMode;
        this.d = Math.max(8, i2);
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        ObservableSource observableSource = this.f70226b;
        Function function = this.f70347c;
        if (ObservableScalarXMap.b(observableSource, observer, function)) {
            return;
        }
        ErrorMode errorMode = ErrorMode.IMMEDIATE;
        int i2 = this.d;
        ErrorMode errorMode2 = this.f70348e;
        if (errorMode2 == errorMode) {
            observableSource.subscribe(new SourceObserver(new SerializedObserver(observer), function, i2));
        } else {
            observableSource.subscribe(new ConcatMapDelayErrorObserver(observer, function, i2, errorMode2 == ErrorMode.END));
        }
    }
}
