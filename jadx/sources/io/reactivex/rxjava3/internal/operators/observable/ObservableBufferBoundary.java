package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableBufferBoundary<T, U extends Collection<? super T>, Open, Close> extends AbstractObservableWithUpstream<T, U> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Supplier f70284c;
    public final ObservableSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function f70285e;

    public static final class BufferBoundaryObserver<T, C extends Collection<? super T>, Open, Close> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -8466418554264089604L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70286b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Supplier f70287c;
        public final ObservableSource d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Function f70288e;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public volatile boolean f70291i;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public volatile boolean f70293k;
        public long l;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final SpscLinkedArrayQueue f70292j = new SpscLinkedArrayQueue(Observable.bufferSize());

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final CompositeDisposable f70289f = new CompositeDisposable();
        public final AtomicReference g = new AtomicReference();
        public LinkedHashMap m = new LinkedHashMap();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final AtomicThrowable f70290h = new AtomicThrowable();

        public static final class BufferOpenObserver<Open> extends AtomicReference<Disposable> implements Observer<Open>, Disposable {
            private static final long serialVersionUID = -8498650778633225126L;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final BufferBoundaryObserver f70294b;

            public BufferOpenObserver(BufferBoundaryObserver bufferBoundaryObserver) {
                this.f70294b = bufferBoundaryObserver;
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public final void dispose() {
                DisposableHelper.a(this);
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public final boolean isDisposed() {
                return get() == DisposableHelper.DISPOSED;
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onComplete() {
                lazySet(DisposableHelper.DISPOSED);
                BufferBoundaryObserver bufferBoundaryObserver = this.f70294b;
                bufferBoundaryObserver.f70289f.c(this);
                if (bufferBoundaryObserver.f70289f.g() == 0) {
                    DisposableHelper.a(bufferBoundaryObserver.g);
                    bufferBoundaryObserver.f70291i = true;
                    bufferBoundaryObserver.b();
                }
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onError(Throwable th) {
                lazySet(DisposableHelper.DISPOSED);
                BufferBoundaryObserver bufferBoundaryObserver = this.f70294b;
                DisposableHelper.a(bufferBoundaryObserver.g);
                bufferBoundaryObserver.f70289f.c(this);
                bufferBoundaryObserver.onError(th);
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onNext(Object obj) {
                BufferBoundaryObserver bufferBoundaryObserver = this.f70294b;
                bufferBoundaryObserver.getClass();
                try {
                    Object obj2 = bufferBoundaryObserver.f70287c.get();
                    Objects.requireNonNull(obj2, "The bufferSupplier returned a null Collection");
                    Collection collection = (Collection) obj2;
                    Object objApply = bufferBoundaryObserver.f70288e.apply(obj);
                    Objects.requireNonNull(objApply, "The bufferClose returned a null ObservableSource");
                    ObservableSource observableSource = (ObservableSource) objApply;
                    long j2 = bufferBoundaryObserver.l;
                    bufferBoundaryObserver.l = 1 + j2;
                    synchronized (bufferBoundaryObserver) {
                        try {
                            LinkedHashMap linkedHashMap = bufferBoundaryObserver.m;
                            if (linkedHashMap == null) {
                                return;
                            }
                            linkedHashMap.put(Long.valueOf(j2), collection);
                            BufferCloseObserver bufferCloseObserver = new BufferCloseObserver(bufferBoundaryObserver, j2);
                            bufferBoundaryObserver.f70289f.b(bufferCloseObserver);
                            observableSource.subscribe(bufferCloseObserver);
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    Exceptions.a(th2);
                    DisposableHelper.a(bufferBoundaryObserver.g);
                    bufferBoundaryObserver.onError(th2);
                }
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onSubscribe(Disposable disposable) {
                DisposableHelper.e(this, disposable);
            }
        }

        public BufferBoundaryObserver(Observer observer, ObservableSource observableSource, Function function, Supplier supplier) {
            this.f70286b = observer;
            this.f70287c = supplier;
            this.d = observableSource;
            this.f70288e = function;
        }

        public final void a(BufferCloseObserver bufferCloseObserver, long j2) {
            boolean z;
            this.f70289f.c(bufferCloseObserver);
            if (this.f70289f.g() == 0) {
                DisposableHelper.a(this.g);
                z = true;
            } else {
                z = false;
            }
            synchronized (this) {
                try {
                    LinkedHashMap linkedHashMap = this.m;
                    if (linkedHashMap == null) {
                        return;
                    }
                    this.f70292j.offer(linkedHashMap.remove(Long.valueOf(j2)));
                    if (z) {
                        this.f70291i = true;
                    }
                    b();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            Observer observer = this.f70286b;
            SpscLinkedArrayQueue spscLinkedArrayQueue = this.f70292j;
            int iAddAndGet = 1;
            while (!this.f70293k) {
                boolean z = this.f70291i;
                if (z && this.f70290h.get() != null) {
                    spscLinkedArrayQueue.clear();
                    this.f70290h.d(observer);
                    return;
                }
                Collection collection = (Collection) spscLinkedArrayQueue.poll();
                boolean z2 = collection == null;
                if (z && z2) {
                    observer.onComplete();
                    return;
                } else if (z2) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    observer.onNext(collection);
                }
            }
            spscLinkedArrayQueue.clear();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (DisposableHelper.a(this.g)) {
                this.f70293k = true;
                this.f70289f.dispose();
                synchronized (this) {
                    this.m = null;
                }
                if (getAndIncrement() != 0) {
                    this.f70292j.clear();
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return DisposableHelper.b((Disposable) this.g.get());
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70289f.dispose();
            synchronized (this) {
                try {
                    LinkedHashMap linkedHashMap = this.m;
                    if (linkedHashMap == null) {
                        return;
                    }
                    Iterator it = linkedHashMap.values().iterator();
                    while (it.hasNext()) {
                        this.f70292j.offer((Collection) it.next());
                    }
                    this.m = null;
                    this.f70291i = true;
                    b();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70290h.a(th)) {
                this.f70289f.dispose();
                synchronized (this) {
                    this.m = null;
                }
                this.f70291i = true;
                b();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            synchronized (this) {
                try {
                    LinkedHashMap linkedHashMap = this.m;
                    if (linkedHashMap == null) {
                        return;
                    }
                    Iterator it = linkedHashMap.values().iterator();
                    while (it.hasNext()) {
                        ((Collection) it.next()).add(obj);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.e(this.g, disposable)) {
                BufferOpenObserver bufferOpenObserver = new BufferOpenObserver(this);
                this.f70289f.b(bufferOpenObserver);
                this.d.subscribe(bufferOpenObserver);
            }
        }
    }

    public static final class BufferCloseObserver<T, C extends Collection<? super T>> extends AtomicReference<Disposable> implements Observer<Object>, Disposable {
        private static final long serialVersionUID = -8498650778633225126L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final BufferBoundaryObserver f70295b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f70296c;

        public BufferCloseObserver(BufferBoundaryObserver bufferBoundaryObserver, long j2) {
            this.f70295b = bufferBoundaryObserver;
            this.f70296c = j2;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            DisposableHelper.a(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            Disposable disposable = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable != disposableHelper) {
                lazySet(disposableHelper);
                this.f70295b.a(this, this.f70296c);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            Disposable disposable = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable == disposableHelper) {
                RxJavaPlugins.b(th);
                return;
            }
            lazySet(disposableHelper);
            BufferBoundaryObserver bufferBoundaryObserver = this.f70295b;
            DisposableHelper.a(bufferBoundaryObserver.g);
            bufferBoundaryObserver.f70289f.c(this);
            bufferBoundaryObserver.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            Disposable disposable = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable != disposableHelper) {
                lazySet(disposableHelper);
                disposable.dispose();
                this.f70295b.a(this, this.f70296c);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this, disposable);
        }
    }

    public ObservableBufferBoundary(ObservableSource<T> observableSource, ObservableSource<? extends Open> observableSource2, Function<? super Open, ? extends ObservableSource<? extends Close>> function, Supplier<U> supplier) {
        super(observableSource);
        this.d = observableSource2;
        this.f70285e = function;
        this.f70284c = supplier;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        BufferBoundaryObserver bufferBoundaryObserver = new BufferBoundaryObserver(observer, this.d, this.f70285e, this.f70284c);
        observer.onSubscribe(bufferBoundaryObserver);
        this.f70226b.subscribe(bufferBoundaryObserver);
    }
}
