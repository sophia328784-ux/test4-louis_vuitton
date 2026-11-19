package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.MaybeObserver;
import io.reactivex.rxjava3.core.MaybeSource;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
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
public final class ObservableFlatMapMaybe<T, R> extends AbstractObservableWithUpstream<T, R> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70513c;
    public final boolean d;

    public static final class FlatMapMaybeObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 8600231336733376951L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70514b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f70515c;
        public final Function g;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Disposable f70519i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public volatile boolean f70520j;
        public final CompositeDisposable d = new CompositeDisposable();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AtomicThrowable f70517f = new AtomicThrowable();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicInteger f70516e = new AtomicInteger(1);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final AtomicReference f70518h = new AtomicReference();

        public final class InnerObserver extends AtomicReference<Disposable> implements MaybeObserver<R>, Disposable {
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

            @Override // io.reactivex.rxjava3.core.MaybeObserver
            public final void onComplete() {
                FlatMapMaybeObserver flatMapMaybeObserver = FlatMapMaybeObserver.this;
                AtomicInteger atomicInteger = flatMapMaybeObserver.f70516e;
                flatMapMaybeObserver.d.c(this);
                if (flatMapMaybeObserver.get() == 0) {
                    if (flatMapMaybeObserver.compareAndSet(0, 1)) {
                        boolean z = atomicInteger.decrementAndGet() == 0;
                        SpscLinkedArrayQueue spscLinkedArrayQueue = (SpscLinkedArrayQueue) flatMapMaybeObserver.f70518h.get();
                        if (z && (spscLinkedArrayQueue == null || spscLinkedArrayQueue.isEmpty())) {
                            flatMapMaybeObserver.f70517f.d(flatMapMaybeObserver.f70514b);
                            return;
                        } else {
                            if (flatMapMaybeObserver.decrementAndGet() == 0) {
                                return;
                            }
                            flatMapMaybeObserver.a();
                            return;
                        }
                    }
                }
                atomicInteger.decrementAndGet();
                if (flatMapMaybeObserver.getAndIncrement() == 0) {
                    flatMapMaybeObserver.a();
                }
            }

            @Override // io.reactivex.rxjava3.core.MaybeObserver
            public final void onError(Throwable th) {
                FlatMapMaybeObserver flatMapMaybeObserver = FlatMapMaybeObserver.this;
                CompositeDisposable compositeDisposable = flatMapMaybeObserver.d;
                compositeDisposable.c(this);
                if (flatMapMaybeObserver.f70517f.a(th)) {
                    if (!flatMapMaybeObserver.f70515c) {
                        flatMapMaybeObserver.f70519i.dispose();
                        compositeDisposable.dispose();
                    }
                    flatMapMaybeObserver.f70516e.decrementAndGet();
                    if (flatMapMaybeObserver.getAndIncrement() == 0) {
                        flatMapMaybeObserver.a();
                    }
                }
            }

            @Override // io.reactivex.rxjava3.core.MaybeObserver
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
            @Override // io.reactivex.rxjava3.core.MaybeObserver
            public final void onSuccess(Object obj) {
                AtomicReference atomicReference;
                SpscLinkedArrayQueue spscLinkedArrayQueue;
                SpscLinkedArrayQueue spscLinkedArrayQueue2;
                FlatMapMaybeObserver flatMapMaybeObserver = FlatMapMaybeObserver.this;
                flatMapMaybeObserver.d.c(this);
                if (flatMapMaybeObserver.get() == 0) {
                    if (flatMapMaybeObserver.compareAndSet(0, 1)) {
                        flatMapMaybeObserver.f70514b.onNext(obj);
                        boolean z = flatMapMaybeObserver.f70516e.decrementAndGet() == 0;
                        SpscLinkedArrayQueue spscLinkedArrayQueue3 = (SpscLinkedArrayQueue) flatMapMaybeObserver.f70518h.get();
                        if (z && (spscLinkedArrayQueue3 == null || spscLinkedArrayQueue3.isEmpty())) {
                            flatMapMaybeObserver.f70517f.d(flatMapMaybeObserver.f70514b);
                            return;
                        } else if (flatMapMaybeObserver.decrementAndGet() == 0) {
                            return;
                        }
                    } else {
                        atomicReference = flatMapMaybeObserver.f70518h;
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
                        flatMapMaybeObserver.f70516e.decrementAndGet();
                        if (flatMapMaybeObserver.getAndIncrement() != 0) {
                            return;
                        }
                    }
                } else {
                    atomicReference = flatMapMaybeObserver.f70518h;
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
                        flatMapMaybeObserver.f70516e.decrementAndGet();
                        if (flatMapMaybeObserver.getAndIncrement() != 0) {
                            return;
                        }
                    }
                }
                flatMapMaybeObserver.a();
            }
        }

        public FlatMapMaybeObserver(Observer observer, Function function, boolean z) {
            this.f70514b = observer;
            this.g = function;
            this.f70515c = z;
        }

        public final void a() {
            Observer observer = this.f70514b;
            AtomicInteger atomicInteger = this.f70516e;
            AtomicReference atomicReference = this.f70518h;
            int iAddAndGet = 1;
            while (!this.f70520j) {
                if (!this.f70515c && this.f70517f.get() != null) {
                    SpscLinkedArrayQueue spscLinkedArrayQueue = (SpscLinkedArrayQueue) this.f70518h.get();
                    if (spscLinkedArrayQueue != null) {
                        spscLinkedArrayQueue.clear();
                    }
                    this.f70517f.d(observer);
                    return;
                }
                boolean z = atomicInteger.get() == 0;
                SpscLinkedArrayQueue spscLinkedArrayQueue2 = (SpscLinkedArrayQueue) atomicReference.get();
                Object objPoll = spscLinkedArrayQueue2 != null ? spscLinkedArrayQueue2.poll() : null;
                boolean z2 = objPoll == null;
                if (z && z2) {
                    this.f70517f.d(observer);
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
            SpscLinkedArrayQueue spscLinkedArrayQueue3 = (SpscLinkedArrayQueue) this.f70518h.get();
            if (spscLinkedArrayQueue3 != null) {
                spscLinkedArrayQueue3.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70520j = true;
            this.f70519i.dispose();
            this.d.dispose();
            this.f70517f.b();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70520j;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.f70516e.decrementAndGet();
            if (getAndIncrement() == 0) {
                a();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.f70516e.decrementAndGet();
            if (this.f70517f.a(th)) {
                if (!this.f70515c) {
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
                Objects.requireNonNull(objApply, "The mapper returned a null MaybeSource");
                MaybeSource maybeSource = (MaybeSource) objApply;
                this.f70516e.getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (this.f70520j || !this.d.b(innerObserver)) {
                    return;
                }
                maybeSource.a(innerObserver);
            } catch (Throwable th) {
                Exceptions.a(th);
                this.f70519i.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70519i, disposable)) {
                this.f70519i = disposable;
                this.f70514b.onSubscribe(this);
            }
        }
    }

    public ObservableFlatMapMaybe(ObservableSource<T> observableSource, Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z) {
        super(observableSource);
        this.f70513c = function;
        this.d = z;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new FlatMapMaybeObserver(observer, this.f70513c, this.d));
    }
}
