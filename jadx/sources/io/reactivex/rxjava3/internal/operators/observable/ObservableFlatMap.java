package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.operators.QueueDisposable;
import io.reactivex.rxjava3.operators.SimplePlainQueue;
import io.reactivex.rxjava3.operators.SimpleQueue;
import io.reactivex.rxjava3.operators.SpscArrayQueue;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableFlatMap<T, U> extends AbstractObservableWithUpstream<T, U> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70484c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f70485e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f70486f;

    public static final class InnerObserver<T, U> extends AtomicReference<Disposable> implements Observer<U> {
        private static final long serialVersionUID = -4606175640614850599L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MergeObserver f70487b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public volatile boolean f70488c;
        public volatile SimpleQueue d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f70489e;

        public InnerObserver(MergeObserver mergeObserver) {
            this.f70487b = mergeObserver;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70488c = true;
            this.f70487b.c();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70487b.f70495i.a(th)) {
                MergeObserver mergeObserver = this.f70487b;
                if (!mergeObserver.d) {
                    mergeObserver.b();
                }
                this.f70488c = true;
                this.f70487b.c();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            int i2 = this.f70489e;
            MergeObserver mergeObserver = this.f70487b;
            if (i2 != 0) {
                mergeObserver.c();
                return;
            }
            if (mergeObserver.get() == 0 && mergeObserver.compareAndSet(0, 1)) {
                mergeObserver.f70490b.onNext(obj);
                if (mergeObserver.decrementAndGet() == 0) {
                    return;
                }
            } else {
                SimpleQueue spscLinkedArrayQueue = this.d;
                if (spscLinkedArrayQueue == null) {
                    spscLinkedArrayQueue = new SpscLinkedArrayQueue(mergeObserver.f70493f);
                    this.d = spscLinkedArrayQueue;
                }
                spscLinkedArrayQueue.offer(obj);
                if (mergeObserver.getAndIncrement() != 0) {
                    return;
                }
            }
            mergeObserver.d();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.e(this, disposable) && (disposable instanceof QueueDisposable)) {
                QueueDisposable queueDisposable = (QueueDisposable) disposable;
                int iRequestFusion = queueDisposable.requestFusion(7);
                if (iRequestFusion == 1) {
                    this.f70489e = iRequestFusion;
                    this.d = queueDisposable;
                    this.f70488c = true;
                    this.f70487b.c();
                    return;
                }
                if (iRequestFusion == 2) {
                    this.f70489e = iRequestFusion;
                    this.d = queueDisposable;
                }
            }
        }
    }

    public static final class MergeObserver<T, U> extends AtomicInteger implements Disposable, Observer<T> {
        public static final InnerObserver[] q = new InnerObserver[0];
        public static final InnerObserver[] r = new InnerObserver[0];
        private static final long serialVersionUID = -2117620485640801370L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70490b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70491c;
        public final boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f70492e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f70493f;
        public volatile SimplePlainQueue g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile boolean f70494h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final AtomicThrowable f70495i = new AtomicThrowable();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public volatile boolean f70496j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final AtomicReference f70497k;
        public Disposable l;
        public long m;
        public int n;
        public final ArrayDeque o;
        public int p;

        public MergeObserver(int i2, int i3, Observer observer, Function function, boolean z) {
            this.f70490b = observer;
            this.f70491c = function;
            this.d = z;
            this.f70492e = i2;
            this.f70493f = i3;
            if (i2 != Integer.MAX_VALUE) {
                this.o = new ArrayDeque(i2);
            }
            this.f70497k = new AtomicReference(q);
        }

        public final boolean a() {
            if (this.f70496j) {
                return true;
            }
            Throwable th = this.f70495i.get();
            if (this.d || th == null) {
                return false;
            }
            b();
            this.f70495i.d(this.f70490b);
            return true;
        }

        public final boolean b() {
            this.l.dispose();
            AtomicReference atomicReference = this.f70497k;
            InnerObserver[] innerObserverArr = r;
            InnerObserver[] innerObserverArr2 = (InnerObserver[]) atomicReference.getAndSet(innerObserverArr);
            if (innerObserverArr2 == innerObserverArr) {
                return false;
            }
            for (InnerObserver innerObserver : innerObserverArr2) {
                innerObserver.getClass();
                DisposableHelper.a(innerObserver);
            }
            return true;
        }

        public final void c() {
            if (getAndIncrement() == 0) {
                d();
            }
        }

        /* JADX WARN: Code duplicated, block: B:104:0x00c7 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:67:0x00c6 A[PHI: r4
          0x00c6: PHI (r4v6 int) = (r4v4 int), (r4v7 int) binds: [B:57:0x00ac, B:66:0x00c4] A[DONT_GENERATE, DONT_INLINE]] */
        public final void d() {
            int size;
            boolean z;
            Observer observer = this.f70490b;
            int iAddAndGet = 1;
            while (!a()) {
                SimplePlainQueue simplePlainQueue = this.g;
                int i2 = 0;
                if (simplePlainQueue != null) {
                    while (!a()) {
                        Object objPoll = simplePlainQueue.poll();
                        if (objPoll != null) {
                            observer.onNext(objPoll);
                            i2++;
                        }
                    }
                    return;
                }
                if (i2 == 0) {
                    boolean z2 = this.f70494h;
                    SimplePlainQueue simplePlainQueue2 = this.g;
                    InnerObserver[] innerObserverArr = (InnerObserver[]) this.f70497k.get();
                    int length = innerObserverArr.length;
                    if (this.f70492e != Integer.MAX_VALUE) {
                        synchronized (this) {
                            size = this.o.size();
                        }
                    } else {
                        size = 0;
                    }
                    if (z2 && ((simplePlainQueue2 == null || simplePlainQueue2.isEmpty()) && length == 0 && size == 0)) {
                        this.f70495i.d(this.f70490b);
                        return;
                    }
                    if (length != 0) {
                        int iMin = Math.min(length - 1, this.n);
                        for (int i3 = 0; i3 < length; i3++) {
                            if (a()) {
                                return;
                            }
                            InnerObserver innerObserver = innerObserverArr[iMin];
                            SimpleQueue simpleQueue = innerObserver.d;
                            if (simpleQueue != null) {
                                do {
                                    try {
                                        Object objPoll2 = simpleQueue.poll();
                                        if (objPoll2 == null) {
                                            z = innerObserver.f70488c;
                                            SimpleQueue simpleQueue2 = innerObserver.d;
                                            if (z && (simpleQueue2 == null || simpleQueue2.isEmpty())) {
                                                e(innerObserver);
                                                i2++;
                                            }
                                            iMin++;
                                            if (iMin == length) {
                                                iMin = 0;
                                            }
                                        } else {
                                            observer.onNext(objPoll2);
                                        }
                                    } catch (Throwable th) {
                                        Exceptions.a(th);
                                        DisposableHelper.a(innerObserver);
                                        this.f70495i.a(th);
                                        if (a()) {
                                            return;
                                        }
                                        e(innerObserver);
                                        i2++;
                                        iMin++;
                                        if (iMin == length) {
                                        }
                                    }
                                } while (!a());
                                return;
                            }
                            z = innerObserver.f70488c;
                            SimpleQueue simpleQueue3 = innerObserver.d;
                            if (z) {
                                e(innerObserver);
                                i2++;
                            }
                            iMin++;
                            if (iMin == length) {
                                iMin = 0;
                            }
                        }
                        this.n = iMin;
                    }
                    if (i2 == 0) {
                        iAddAndGet = addAndGet(-iAddAndGet);
                        if (iAddAndGet == 0) {
                            return;
                        }
                    } else if (this.f70492e != Integer.MAX_VALUE) {
                        h(i2);
                    }
                } else if (this.f70492e != Integer.MAX_VALUE) {
                    h(i2);
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70496j = true;
            if (b()) {
                this.f70495i.b();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void e(InnerObserver innerObserver) {
            InnerObserver[] innerObserverArr;
            while (true) {
                AtomicReference atomicReference = this.f70497k;
                InnerObserver[] innerObserverArr2 = (InnerObserver[]) atomicReference.get();
                int length = innerObserverArr2.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        i2 = -1;
                        break;
                    } else if (innerObserverArr2[i2] == innerObserver) {
                        break;
                    } else {
                        i2++;
                    }
                }
                if (i2 < 0) {
                    return;
                }
                if (length == 1) {
                    innerObserverArr = q;
                } else {
                    InnerObserver[] innerObserverArr3 = new InnerObserver[length - 1];
                    System.arraycopy(innerObserverArr2, 0, innerObserverArr3, 0, i2);
                    System.arraycopy(innerObserverArr2, i2 + 1, innerObserverArr3, i2, (length - i2) - 1);
                    innerObserverArr = innerObserverArr3;
                }
                while (!atomicReference.compareAndSet(innerObserverArr2, innerObserverArr)) {
                    if (atomicReference.get() != innerObserverArr2) {
                    }
                }
                return;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void g(ObservableSource observableSource) {
            boolean z;
            do {
                z = false;
                if (observableSource instanceof Supplier) {
                    try {
                        Object obj = ((Supplier) observableSource).get();
                        if (obj != null) {
                            if (get() == 0 && compareAndSet(0, 1)) {
                                this.f70490b.onNext(obj);
                                if (decrementAndGet() != 0) {
                                }
                            } else {
                                SimplePlainQueue spscLinkedArrayQueue = this.g;
                                if (spscLinkedArrayQueue == null) {
                                    spscLinkedArrayQueue = this.f70492e == Integer.MAX_VALUE ? new SpscLinkedArrayQueue(this.f70493f) : new SpscArrayQueue(this.f70492e);
                                    this.g = spscLinkedArrayQueue;
                                }
                                spscLinkedArrayQueue.offer(obj);
                                if (getAndIncrement() != 0) {
                                    return;
                                }
                            }
                            d();
                        }
                    } catch (Throwable th) {
                        Exceptions.a(th);
                        this.f70495i.a(th);
                        c();
                    }
                    if (this.f70492e == Integer.MAX_VALUE) {
                        return;
                    }
                    synchronized (this) {
                        try {
                            observableSource = (ObservableSource) this.o.poll();
                            if (observableSource == null) {
                                this.p--;
                                z = true;
                            }
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                } else {
                    this.m++;
                    InnerObserver innerObserver = new InnerObserver(this);
                    AtomicReference atomicReference = this.f70497k;
                    while (true) {
                        InnerObserver[] innerObserverArr = (InnerObserver[]) atomicReference.get();
                        if (innerObserverArr == r) {
                            DisposableHelper.a(innerObserver);
                            return;
                        }
                        int length = innerObserverArr.length;
                        InnerObserver[] innerObserverArr2 = new InnerObserver[length + 1];
                        System.arraycopy(innerObserverArr, 0, innerObserverArr2, 0, length);
                        innerObserverArr2[length] = innerObserver;
                        do {
                            if (atomicReference.compareAndSet(innerObserverArr, innerObserverArr2)) {
                                observableSource.subscribe(innerObserver);
                                return;
                            }
                        } while (atomicReference.get() == innerObserverArr);
                    }
                }
            } while (!z);
            c();
        }

        public final void h(int i2) {
            while (true) {
                int i3 = i2 - 1;
                if (i2 == 0) {
                    return;
                }
                synchronized (this) {
                    try {
                        ObservableSource observableSource = (ObservableSource) this.o.poll();
                        if (observableSource == null) {
                            this.p--;
                        } else {
                            g(observableSource);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                i2 = i3;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70496j;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.f70494h) {
                return;
            }
            this.f70494h = true;
            c();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70494h) {
                RxJavaPlugins.b(th);
            } else if (this.f70495i.a(th)) {
                this.f70494h = true;
                c();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70494h) {
                return;
            }
            try {
                Object objApply = this.f70491c.apply(obj);
                Objects.requireNonNull(objApply, "The mapper returned a null ObservableSource");
                ObservableSource observableSource = (ObservableSource) objApply;
                if (this.f70492e != Integer.MAX_VALUE) {
                    synchronized (this) {
                        try {
                            int i2 = this.p;
                            if (i2 == this.f70492e) {
                                this.o.offer(observableSource);
                                return;
                            }
                            this.p = i2 + 1;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                g(observableSource);
            } catch (Throwable th2) {
                Exceptions.a(th2);
                this.l.dispose();
                onError(th2);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.l, disposable)) {
                this.l = disposable;
                this.f70490b.onSubscribe(this);
            }
        }
    }

    public ObservableFlatMap(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<? extends U>> function, boolean z, int i2, int i3) {
        super(observableSource);
        this.f70484c = function;
        this.d = z;
        this.f70485e = i2;
        this.f70486f = i3;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        Function function = this.f70484c;
        ObservableSource observableSource = this.f70226b;
        if (ObservableScalarXMap.b(observableSource, observer, function)) {
            return;
        }
        observableSource.subscribe(new MergeObserver(this.f70485e, this.f70486f, observer, this.f70484c, this.d));
    }
}
