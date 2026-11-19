package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableCombineLatest<T, R> extends Observable<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ObservableSource[] f70333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Iterable f70334c;
    public final Function d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f70335e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f70336f;

    public static final class CombinerObserver<T, R> extends AtomicReference<Disposable> implements Observer<T> {
        private static final long serialVersionUID = -4823716997131257941L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final LatestCoordinator f70337b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f70338c;

        public CombinerObserver(LatestCoordinator latestCoordinator, int i2) {
            this.f70337b = latestCoordinator;
            this.f70338c = i2;
        }

        /* JADX WARN: Code duplicated, block: B:17:0x001f A[Catch: all -> 0x000b, TryCatch #0 {all -> 0x000b, blocks: (B:4:0x0005, B:6:0x0009, B:10:0x000d, B:15:0x0017, B:18:0x0021, B:17:0x001f), top: B:25:0x0005 }] */
        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            LatestCoordinator latestCoordinator = this.f70337b;
            int i2 = this.f70338c;
            synchronized (latestCoordinator) {
                try {
                    Object[] objArr = latestCoordinator.f70341e;
                    if (objArr == null) {
                        return;
                    }
                    boolean z = objArr[i2] == null;
                    if (z) {
                        latestCoordinator.f70344i = true;
                    } else {
                        int i3 = latestCoordinator.l + 1;
                        latestCoordinator.l = i3;
                        if (i3 == objArr.length) {
                            latestCoordinator.f70344i = true;
                        }
                    }
                    if (z) {
                        latestCoordinator.a();
                    }
                    latestCoordinator.c();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:20:0x002b A[Catch: all -> 0x0018, TryCatch #0 {all -> 0x0018, blocks: (B:7:0x0012, B:9:0x0016, B:13:0x001a, B:18:0x0023, B:21:0x002d, B:20:0x002b), top: B:29:0x0012 }] */
        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            LatestCoordinator latestCoordinator = this.f70337b;
            int i2 = this.f70338c;
            if (latestCoordinator.f70345j.a(th)) {
                boolean z = true;
                if (latestCoordinator.g) {
                    synchronized (latestCoordinator) {
                        try {
                            Object[] objArr = latestCoordinator.f70341e;
                            if (objArr == null) {
                                return;
                            }
                            boolean z2 = objArr[i2] == null;
                            if (z2) {
                                latestCoordinator.f70344i = true;
                            } else {
                                int i3 = latestCoordinator.l + 1;
                                latestCoordinator.l = i3;
                                if (i3 == objArr.length) {
                                    latestCoordinator.f70344i = true;
                                }
                            }
                            z = z2;
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
                if (z) {
                    latestCoordinator.a();
                }
                latestCoordinator.c();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            boolean z;
            LatestCoordinator latestCoordinator = this.f70337b;
            int i2 = this.f70338c;
            synchronized (latestCoordinator) {
                try {
                    Object[] objArr = latestCoordinator.f70341e;
                    if (objArr == null) {
                        return;
                    }
                    Object obj2 = objArr[i2];
                    int i3 = latestCoordinator.f70346k;
                    if (obj2 == null) {
                        i3++;
                        latestCoordinator.f70346k = i3;
                    }
                    objArr[i2] = obj;
                    if (i3 == objArr.length) {
                        latestCoordinator.f70342f.offer(objArr.clone());
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        latestCoordinator.c();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this, disposable);
        }
    }

    public static final class LatestCoordinator<T, R> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 8567835998786448817L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70339b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70340c;
        public final CombinerObserver[] d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Object[] f70341e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final SpscLinkedArrayQueue f70342f;
        public final boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public volatile boolean f70343h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public volatile boolean f70344i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final AtomicThrowable f70345j = new AtomicThrowable();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f70346k;
        public int l;

        public LatestCoordinator(int i2, int i3, Observer observer, Function function, boolean z) {
            this.f70339b = observer;
            this.f70340c = function;
            this.g = z;
            this.f70341e = new Object[i2];
            CombinerObserver[] combinerObserverArr = new CombinerObserver[i2];
            for (int i4 = 0; i4 < i2; i4++) {
                combinerObserverArr[i4] = new CombinerObserver(this, i4);
            }
            this.d = combinerObserverArr;
            this.f70342f = new SpscLinkedArrayQueue(i3);
        }

        public final void a() {
            for (CombinerObserver combinerObserver : this.d) {
                combinerObserver.getClass();
                DisposableHelper.a(combinerObserver);
            }
        }

        public final void b(SpscLinkedArrayQueue spscLinkedArrayQueue) {
            synchronized (this) {
                this.f70341e = null;
            }
            spscLinkedArrayQueue.clear();
        }

        public final void c() {
            if (getAndIncrement() != 0) {
                return;
            }
            SpscLinkedArrayQueue spscLinkedArrayQueue = this.f70342f;
            Observer observer = this.f70339b;
            boolean z = this.g;
            int iAddAndGet = 1;
            while (!this.f70343h) {
                if (!z && this.f70345j.get() != null) {
                    a();
                    b(spscLinkedArrayQueue);
                    this.f70345j.d(observer);
                    return;
                }
                boolean z2 = this.f70344i;
                Object[] objArr = (Object[]) spscLinkedArrayQueue.poll();
                boolean z3 = objArr == null;
                if (z2 && z3) {
                    b(spscLinkedArrayQueue);
                    this.f70345j.d(observer);
                    return;
                }
                if (z3) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    try {
                        Object objApply = this.f70340c.apply(objArr);
                        Objects.requireNonNull(objApply, "The combiner returned a null value");
                        observer.onNext(objApply);
                    } catch (Throwable th) {
                        Exceptions.a(th);
                        this.f70345j.a(th);
                        a();
                        b(spscLinkedArrayQueue);
                        this.f70345j.d(observer);
                        return;
                    }
                }
            }
            b(spscLinkedArrayQueue);
            this.f70345j.b();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (this.f70343h) {
                return;
            }
            this.f70343h = true;
            a();
            c();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70343h;
        }
    }

    public ObservableCombineLatest(ObservableSource<? extends T>[] observableSourceArr, Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function, int i2, boolean z) {
        this.f70333b = observableSourceArr;
        this.f70334c = iterable;
        this.d = function;
        this.f70335e = i2;
        this.f70336f = z;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        int length;
        ObservableSource[] observableSourceArr = this.f70333b;
        if (observableSourceArr == null) {
            observableSourceArr = new ObservableSource[8];
            try {
                length = 0;
                for (ObservableSource observableSource : this.f70334c) {
                    if (length == observableSourceArr.length) {
                        ObservableSource[] observableSourceArr2 = new ObservableSource[(length >> 2) + length];
                        System.arraycopy(observableSourceArr, 0, observableSourceArr2, 0, length);
                        observableSourceArr = observableSourceArr2;
                    }
                    int i2 = length + 1;
                    Objects.requireNonNull(observableSource, "The Iterator returned a null ObservableSource");
                    observableSourceArr[length] = observableSource;
                    length = i2;
                }
            } catch (Throwable th) {
                Exceptions.a(th);
                EmptyDisposable.b(th, observer);
                return;
            }
        } else {
            length = observableSourceArr.length;
        }
        if (length == 0) {
            EmptyDisposable.a(observer);
            return;
        }
        LatestCoordinator latestCoordinator = new LatestCoordinator(length, this.f70335e, observer, this.d, this.f70336f);
        CombinerObserver[] combinerObserverArr = latestCoordinator.d;
        int length2 = combinerObserverArr.length;
        latestCoordinator.f70339b.onSubscribe(latestCoordinator);
        for (int i3 = 0; i3 < length2 && !latestCoordinator.f70344i && !latestCoordinator.f70343h; i3++) {
            observableSourceArr[i3].subscribe(combinerObserverArr[i3]);
        }
    }
}
