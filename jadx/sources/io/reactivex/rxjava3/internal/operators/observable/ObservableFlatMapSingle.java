package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.core.SingleSource;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.operators.SpscLinkedArrayQueue;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableFlatMapSingle<T, R> extends AbstractObservableWithUpstream<T, R> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70522c;
    public final boolean d;

    public static final class FlatMapSingleObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 8600231336733376951L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70523b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f70524c;
        public final Function g;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Disposable f70528i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public volatile boolean f70529j;
        public final CompositeDisposable d = new CompositeDisposable();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AtomicThrowable f70526f = new AtomicThrowable();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicInteger f70525e = new AtomicInteger(1);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final AtomicReference f70527h = new AtomicReference();

        public final class InnerObserver extends AtomicReference<Disposable> implements SingleObserver<R>, Disposable {
            private static final long serialVersionUID = -502562646270949838L;

            public InnerObserver() {
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public final void dispose() {
                DisposableHelper.a(this);
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public final boolean isDisposed() {
                return DisposableHelper.b(get());
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onError(Throwable th) {
                FlatMapSingleObserver flatMapSingleObserver = FlatMapSingleObserver.this;
                CompositeDisposable compositeDisposable = flatMapSingleObserver.d;
                compositeDisposable.c(this);
                if (flatMapSingleObserver.f70526f.a(th)) {
                    if (!flatMapSingleObserver.f70524c) {
                        flatMapSingleObserver.f70528i.dispose();
                        compositeDisposable.dispose();
                    }
                    flatMapSingleObserver.f70525e.decrementAndGet();
                    if (flatMapSingleObserver.getAndIncrement() == 0) {
                        flatMapSingleObserver.a();
                    }
                }
            }

            @Override // io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.core.CompletableObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onSubscribe(Disposable disposable) {
                DisposableHelper.e(this, disposable);
            }

            /* JADX WARN: Code duplicated, block: B:19:0x0044  */
            /* JADX WARN: Code duplicated, block: B:22:0x0050  */
            /* JADX WARN: Code duplicated, block: B:26:0x0061  */
            /* JADX WARN: Code duplicated, block: B:34:0x007f A[ORIG_RETURN, RETURN] */
            /* JADX WARN: Code duplicated, block: B:40:0x0070 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:43:0x0067 A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:44:? A[LOOP:0: B:23:0x0059->B:44:?, LOOP_END, SYNTHETIC] */
            @Override // io.reactivex.rxjava3.core.SingleObserver, io.reactivex.rxjava3.core.MaybeObserver
            public final void onSuccess(Object obj) {
                AtomicReference atomicReference;
                SpscLinkedArrayQueue spscLinkedArrayQueue;
                SpscLinkedArrayQueue spscLinkedArrayQueue2;
                FlatMapSingleObserver flatMapSingleObserver = FlatMapSingleObserver.this;
                flatMapSingleObserver.d.c(this);
                if (flatMapSingleObserver.get() == 0) {
                    if (flatMapSingleObserver.compareAndSet(0, 1)) {
                        flatMapSingleObserver.f70523b.onNext(obj);
                        boolean z = flatMapSingleObserver.f70525e.decrementAndGet() == 0;
                        SpscLinkedArrayQueue spscLinkedArrayQueue3 = (SpscLinkedArrayQueue) flatMapSingleObserver.f70527h.get();
                        if (z && (spscLinkedArrayQueue3 == null || spscLinkedArrayQueue3.isEmpty())) {
                            flatMapSingleObserver.f70526f.d(flatMapSingleObserver.f70523b);
                            return;
                        } else if (flatMapSingleObserver.decrementAndGet() == 0) {
                            return;
                        }
                    } else {
                        atomicReference = flatMapSingleObserver.f70527h;
                        spscLinkedArrayQueue = (SpscLinkedArrayQueue) atomicReference.get();
                        if (spscLinkedArrayQueue == null) {
                            spscLinkedArrayQueue = new SpscLinkedArrayQueue(Observable.bufferSize());
                            while (!atomicReference.compareAndSet(null, spscLinkedArrayQueue)) {
                                if (atomicReference.get() != null) {
                                    spscLinkedArrayQueue = (SpscLinkedArrayQueue) atomicReference.get();
                                    break;
                                }
                            }
                        }
                        spscLinkedArrayQueue2 = spscLinkedArrayQueue;
                        synchronized (spscLinkedArrayQueue2) {
                            spscLinkedArrayQueue2.offer(obj);
                        }
                        flatMapSingleObserver.f70525e.decrementAndGet();
                        if (flatMapSingleObserver.getAndIncrement() != 0) {
                            return;
                        }
                    }
                } else {
                    atomicReference = flatMapSingleObserver.f70527h;
                    spscLinkedArrayQueue = (SpscLinkedArrayQueue) atomicReference.get();
                    if (spscLinkedArrayQueue == null) {
                        spscLinkedArrayQueue = new SpscLinkedArrayQueue(Observable.bufferSize());
                        while (!atomicReference.compareAndSet(null, spscLinkedArrayQueue)) {
                            if (atomicReference.get() != null) {
                                spscLinkedArrayQueue = (SpscLinkedArrayQueue) atomicReference.get();
                                break;
                            }
                        }
                    }
                    spscLinkedArrayQueue2 = spscLinkedArrayQueue;
                    synchronized (spscLinkedArrayQueue2) {
                        spscLinkedArrayQueue2.offer(obj);
                        flatMapSingleObserver.f70525e.decrementAndGet();
                        if (flatMapSingleObserver.getAndIncrement() != 0) {
                            return;
                        }
                    }
                }
                flatMapSingleObserver.a();
            }
        }

        public FlatMapSingleObserver(Observer observer, Function function, boolean z) {
            this.f70523b = observer;
            this.g = function;
            this.f70524c = z;
        }

        public final void a() {
            Observer observer = this.f70523b;
            AtomicInteger atomicInteger = this.f70525e;
            AtomicReference atomicReference = this.f70527h;
            int iAddAndGet = 1;
            while (!this.f70529j) {
                if (!this.f70524c && this.f70526f.get() != null) {
                    SpscLinkedArrayQueue spscLinkedArrayQueue = (SpscLinkedArrayQueue) this.f70527h.get();
                    if (spscLinkedArrayQueue != null) {
                        spscLinkedArrayQueue.clear();
                    }
                    this.f70526f.d(observer);
                    return;
                }
                boolean z = atomicInteger.get() == 0;
                SpscLinkedArrayQueue spscLinkedArrayQueue2 = (SpscLinkedArrayQueue) atomicReference.get();
                Object objPoll = spscLinkedArrayQueue2 != null ? spscLinkedArrayQueue2.poll() : null;
                boolean z2 = objPoll == null;
                if (z && z2) {
                    this.f70526f.d(this.f70523b);
                    return;
                } else if (z2) {
                    iAddAndGet = addAndGet(-iAddAndGet);
                    if (iAddAndGet == 0) {
                        return;
                    }
                } else {
                    observer.onNext(objPoll);
                }
            }
            SpscLinkedArrayQueue spscLinkedArrayQueue3 = (SpscLinkedArrayQueue) this.f70527h.get();
            if (spscLinkedArrayQueue3 != null) {
                spscLinkedArrayQueue3.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70529j = true;
            this.f70528i.dispose();
            this.d.dispose();
            this.f70526f.b();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70529j;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70525e.decrementAndGet();
            if (getAndIncrement() == 0) {
                a();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70525e.decrementAndGet();
            if (this.f70526f.a(th)) {
                if (!this.f70524c) {
                    this.d.dispose();
                }
                if (getAndIncrement() == 0) {
                    a();
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            try {
                Object objApply = this.g.apply(obj);
                Objects.requireNonNull(objApply, "The mapper returned a null SingleSource");
                SingleSource singleSource = (SingleSource) objApply;
                this.f70525e.getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (this.f70529j || !this.d.b(innerObserver)) {
                    return;
                }
                singleSource.a(innerObserver);
            } catch (Throwable th) {
                Exceptions.a(th);
                this.f70528i.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70528i, disposable)) {
                this.f70528i = disposable;
                this.f70523b.onSubscribe(this);
            }
        }
    }

    public ObservableFlatMapSingle(ObservableSource<T> observableSource, Function<? super T, ? extends SingleSource<? extends R>> function, boolean z) {
        super(observableSource);
        this.f70522c = function;
        this.d = z;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new FlatMapSingleObserver(observer, this.f70522c, this.d));
    }
}
