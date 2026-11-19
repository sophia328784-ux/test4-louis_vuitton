package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.observers.QueueDrainObserver;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.util.QueueDrainHelper;
import io.reactivex.rxjava3.observers.SerializedObserver;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableBufferTimed<T, U extends Collection<? super T>> extends AbstractObservableWithUpstream<T, U> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f70303c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TimeUnit f70304e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Scheduler f70305f;
    public final Supplier g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f70306h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f70307i;

    public ObservableBufferTimed(ObservableSource<T> observableSource, long j2, long j3, TimeUnit timeUnit, Scheduler scheduler, Supplier<U> supplier, int i2, boolean z) {
        super(observableSource);
        this.f70303c = j2;
        this.d = j3;
        this.f70304e = timeUnit;
        this.f70305f = scheduler;
        this.g = supplier;
        this.f70306h = i2;
        this.f70307i = z;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        long j2 = this.f70303c;
        long j3 = this.d;
        ObservableSource observableSource = this.f70226b;
        if (j2 == j3 && this.f70306h == Integer.MAX_VALUE) {
            observableSource.subscribe(new BufferExactUnboundedObserver(new SerializedObserver(observer), this.g, this.f70303c, this.f70304e, this.f70305f));
            return;
        }
        Scheduler.Worker workerB = this.f70305f.b();
        if (j2 == j3) {
            observableSource.subscribe(new BufferExactBoundedObserver(new SerializedObserver(observer), this.g, this.f70303c, this.f70304e, this.f70306h, this.f70307i, workerB));
            return;
        }
        observableSource.subscribe(new BufferSkipBoundedObserver(new SerializedObserver(observer), this.g, this.f70303c, this.d, this.f70304e, workerB));
    }

    public static final class BufferExactBoundedObserver<T, U extends Collection<? super T>> extends QueueDrainObserver<T, U, U> implements Runnable, Disposable {
        U buffer;
        final Supplier<U> bufferSupplier;
        long consumerIndex;
        final int maxSize;
        long producerIndex;
        final boolean restartTimerOnMaxSize;
        Disposable timer;
        final long timespan;
        final TimeUnit unit;
        Disposable upstream;
        final Scheduler.Worker w;

        public BufferExactBoundedObserver(Observer<? super U> observer, Supplier<U> supplier, long j2, TimeUnit timeUnit, int i2, boolean z, Scheduler.Worker worker) {
            super(observer, new MpscLinkedQueue());
            this.bufferSupplier = supplier;
            this.timespan = j2;
            this.unit = timeUnit;
            this.maxSize = i2;
            this.restartTimerOnMaxSize = z;
            this.w = worker;
        }

        @Override // io.reactivex.rxjava3.internal.observers.QueueDrainObserver, io.reactivex.rxjava3.internal.util.ObservableQueueDrain
        public /* bridge */ /* synthetic */ void accept(Observer observer, Object obj) {
            accept((Observer<? super Collection>) observer, (Collection) obj);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            this.upstream.dispose();
            this.w.dispose();
            synchronized (this) {
                this.buffer = null;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            U u;
            this.w.dispose();
            synchronized (this) {
                u = this.buffer;
                this.buffer = null;
            }
            if (u != null) {
                this.queue.offer(u);
                this.done = true;
                if (enter()) {
                    QueueDrainHelper.b(this.queue, this.downstream, false, this, this);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable th) {
            synchronized (this) {
                this.buffer = null;
            }
            this.downstream.onError(th);
            this.w.dispose();
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x005e */
        /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:43:0x0074
            	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
            	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
            	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
            	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
            */
        @Override // io.reactivex.rxjava3.core.Observer
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onNext(T r8) {
            /*
                r7 = this;
                monitor-enter(r7)
                U extends java.util.Collection<? super T> r0 = r7.buffer     // Catch: java.lang.Throwable -> L6f
                if (r0 != 0) goto Lb
                monitor-exit(r7)     // Catch: java.lang.Throwable -> L7
                return
            L7:
                r0 = move-exception
                r8 = r0
                r1 = r7
                goto L72
            Lb:
                r0.add(r8)     // Catch: java.lang.Throwable -> L6f
                int r8 = r0.size()     // Catch: java.lang.Throwable -> L6f
                int r1 = r7.maxSize     // Catch: java.lang.Throwable -> L6f
                if (r8 >= r1) goto L18
                monitor-exit(r7)     // Catch: java.lang.Throwable -> L7
                return
            L18:
                r8 = 0
                r7.buffer = r8     // Catch: java.lang.Throwable -> L6f
                long r1 = r7.producerIndex     // Catch: java.lang.Throwable -> L6f
                r3 = 1
                long r1 = r1 + r3
                r7.producerIndex = r1     // Catch: java.lang.Throwable -> L6f
                monitor-exit(r7)     // Catch: java.lang.Throwable -> L6f
                boolean r8 = r7.restartTimerOnMaxSize
                if (r8 == 0) goto L2c
                io.reactivex.rxjava3.disposables.Disposable r8 = r7.timer
                r8.dispose()
            L2c:
                r8 = 0
                r7.fastPathOrderedEmit(r0, r8, r7)
                io.reactivex.rxjava3.functions.Supplier<U extends java.util.Collection<? super T>> r8 = r7.bufferSupplier     // Catch: java.lang.Throwable -> L60
                java.lang.Object r8 = r8.get()     // Catch: java.lang.Throwable -> L60
                java.lang.String r0 = "The buffer supplied is null"
                java.util.Objects.requireNonNull(r8, r0)     // Catch: java.lang.Throwable -> L60
                java.util.Collection r8 = (java.util.Collection) r8     // Catch: java.lang.Throwable -> L60
                monitor-enter(r7)
                r7.buffer = r8     // Catch: java.lang.Throwable -> L59
                long r0 = r7.consumerIndex     // Catch: java.lang.Throwable -> L59
                long r0 = r0 + r3
                r7.consumerIndex = r0     // Catch: java.lang.Throwable -> L59
                monitor-exit(r7)     // Catch: java.lang.Throwable -> L59
                boolean r8 = r7.restartTimerOnMaxSize
                if (r8 == 0) goto L58
                io.reactivex.rxjava3.core.Scheduler$Worker r0 = r7.w
                long r2 = r7.timespan
                java.util.concurrent.TimeUnit r6 = r7.unit
                r4 = r2
                r1 = r7
                io.reactivex.rxjava3.disposables.Disposable r7 = r0.schedulePeriodically(r1, r2, r4, r6)
                r1.timer = r7
            L58:
                return
            L59:
                r0 = move-exception
                r1 = r7
            L5b:
                r7 = r0
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L5e
                throw r7
            L5e:
                r0 = move-exception
                goto L5b
            L60:
                r0 = move-exception
                r1 = r7
                r7 = r0
                io.reactivex.rxjava3.exceptions.Exceptions.a(r7)
                io.reactivex.rxjava3.core.Observer<? super V> r8 = r1.downstream
                r8.onError(r7)
                r1.dispose()
                return
            L6f:
                r0 = move-exception
                r1 = r7
            L71:
                r8 = r0
            L72:
                monitor-exit(r1)     // Catch: java.lang.Throwable -> L74
                throw r8
            L74:
                r0 = move-exception
                goto L71
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.rxjava3.internal.operators.observable.ObservableBufferTimed.BufferExactBoundedObserver.onNext(java.lang.Object):void");
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.upstream, disposable)) {
                this.upstream = disposable;
                try {
                    Object obj = this.bufferSupplier.get();
                    Objects.requireNonNull(obj, "The buffer supplied is null");
                    this.buffer = (U) obj;
                    this.downstream.onSubscribe(this);
                    Scheduler.Worker worker = this.w;
                    long j2 = this.timespan;
                    this.timer = worker.schedulePeriodically(this, j2, j2, this.unit);
                } catch (Throwable th) {
                    Exceptions.a(th);
                    disposable.dispose();
                    EmptyDisposable.b(th, this.downstream);
                    this.w.dispose();
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Object obj = this.bufferSupplier.get();
                Objects.requireNonNull(obj, "The bufferSupplier returned a null buffer");
                U u = (U) obj;
                synchronized (this) {
                    U u2 = this.buffer;
                    if (u2 != null && this.producerIndex == this.consumerIndex) {
                        this.buffer = u;
                        fastPathOrderedEmit(u2, false, this);
                    }
                }
            } catch (Throwable th) {
                Exceptions.a(th);
                dispose();
                this.downstream.onError(th);
            }
        }

        public void accept(Observer<? super U> observer, U u) {
            observer.onNext(u);
        }
    }

    public static final class BufferExactUnboundedObserver<T, U extends Collection<? super T>> extends QueueDrainObserver<T, U, U> implements Runnable, Disposable {
        U buffer;
        final Supplier<U> bufferSupplier;
        final Scheduler scheduler;
        final AtomicReference<Disposable> timer;
        final long timespan;
        final TimeUnit unit;
        Disposable upstream;

        public BufferExactUnboundedObserver(Observer<? super U> observer, Supplier<U> supplier, long j2, TimeUnit timeUnit, Scheduler scheduler) {
            super(observer, new MpscLinkedQueue());
            this.timer = new AtomicReference<>();
            this.bufferSupplier = supplier;
            this.timespan = j2;
            this.unit = timeUnit;
            this.scheduler = scheduler;
        }

        @Override // io.reactivex.rxjava3.internal.observers.QueueDrainObserver, io.reactivex.rxjava3.internal.util.ObservableQueueDrain
        public /* bridge */ /* synthetic */ void accept(Observer observer, Object obj) {
            accept((Observer<? super Collection>) observer, (Collection) obj);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            DisposableHelper.a(this.timer);
            this.upstream.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.timer.get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            U u;
            synchronized (this) {
                u = this.buffer;
                this.buffer = null;
            }
            if (u != null) {
                this.queue.offer(u);
                this.done = true;
                if (enter()) {
                    QueueDrainHelper.b(this.queue, this.downstream, false, null, this);
                }
            }
            DisposableHelper.a(this.timer);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable th) {
            synchronized (this) {
                this.buffer = null;
            }
            this.downstream.onError(th);
            DisposableHelper.a(this.timer);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            synchronized (this) {
                try {
                    U u = this.buffer;
                    if (u == null) {
                        return;
                    }
                    u.add(t);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.upstream, disposable)) {
                this.upstream = disposable;
                try {
                    Object obj = this.bufferSupplier.get();
                    Objects.requireNonNull(obj, "The buffer supplied is null");
                    this.buffer = (U) obj;
                    this.downstream.onSubscribe(this);
                    if (DisposableHelper.b(this.timer.get())) {
                        return;
                    }
                    Scheduler scheduler = this.scheduler;
                    long j2 = this.timespan;
                    DisposableHelper.d(this.timer, scheduler.e(this, j2, j2, this.unit));
                } catch (Throwable th) {
                    Exceptions.a(th);
                    dispose();
                    EmptyDisposable.b(th, this.downstream);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            U u;
            try {
                Object obj = this.bufferSupplier.get();
                Objects.requireNonNull(obj, "The bufferSupplier returned a null buffer");
                U u2 = (U) obj;
                synchronized (this) {
                    try {
                        u = this.buffer;
                        if (u != null) {
                            this.buffer = u2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (u == null) {
                    DisposableHelper.a(this.timer);
                } else {
                    fastPathEmit(u, false, this);
                }
            } catch (Throwable th2) {
                Exceptions.a(th2);
                this.downstream.onError(th2);
                dispose();
            }
        }

        public void accept(Observer<? super U> observer, U u) {
            this.downstream.onNext(u);
        }
    }

    public static final class BufferSkipBoundedObserver<T, U extends Collection<? super T>> extends QueueDrainObserver<T, U, U> implements Runnable, Disposable {
        final Supplier<U> bufferSupplier;
        final List<U> buffers;
        final long timeskip;
        final long timespan;
        final TimeUnit unit;
        Disposable upstream;
        final Scheduler.Worker w;

        public final class RemoveFromBuffer implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private final U f70308b;

            public RemoveFromBuffer(U u) {
                this.f70308b = u;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (BufferSkipBoundedObserver.this) {
                    BufferSkipBoundedObserver.this.buffers.remove(this.f70308b);
                }
                BufferSkipBoundedObserver bufferSkipBoundedObserver = BufferSkipBoundedObserver.this;
                bufferSkipBoundedObserver.fastPathOrderedEmit(this.f70308b, false, bufferSkipBoundedObserver.w);
            }
        }

        public final class RemoveFromBufferEmit implements Runnable {
            private final U buffer;

            public RemoveFromBufferEmit(U u) {
                this.buffer = u;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (BufferSkipBoundedObserver.this) {
                    BufferSkipBoundedObserver.this.buffers.remove(this.buffer);
                }
                BufferSkipBoundedObserver bufferSkipBoundedObserver = BufferSkipBoundedObserver.this;
                bufferSkipBoundedObserver.fastPathOrderedEmit(this.buffer, false, bufferSkipBoundedObserver.w);
            }
        }

        public BufferSkipBoundedObserver(Observer<? super U> observer, Supplier<U> supplier, long j2, long j3, TimeUnit timeUnit, Scheduler.Worker worker) {
            super(observer, new MpscLinkedQueue());
            this.bufferSupplier = supplier;
            this.timespan = j2;
            this.timeskip = j3;
            this.unit = timeUnit;
            this.w = worker;
            this.buffers = new LinkedList();
        }

        @Override // io.reactivex.rxjava3.internal.observers.QueueDrainObserver, io.reactivex.rxjava3.internal.util.ObservableQueueDrain
        public /* bridge */ /* synthetic */ void accept(Observer observer, Object obj) {
            accept((Observer<? super Collection>) observer, (Collection) obj);
        }

        public void clear() {
            synchronized (this) {
                this.buffers.clear();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            clear();
            this.upstream.dispose();
            this.w.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            ArrayList arrayList;
            synchronized (this) {
                arrayList = new ArrayList(this.buffers);
                this.buffers.clear();
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.queue.offer((Collection) it.next());
            }
            this.done = true;
            if (enter()) {
                QueueDrainHelper.b(this.queue, this.downstream, false, this.w, this);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable th) {
            this.done = true;
            clear();
            this.downstream.onError(th);
            this.w.dispose();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            synchronized (this) {
                try {
                    Iterator<U> it = this.buffers.iterator();
                    while (it.hasNext()) {
                        it.next().add(t);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.upstream, disposable)) {
                this.upstream = disposable;
                try {
                    Object obj = this.bufferSupplier.get();
                    Objects.requireNonNull(obj, "The buffer supplied is null");
                    Collection collection = (Collection) obj;
                    this.buffers.add((U) collection);
                    this.downstream.onSubscribe(this);
                    Scheduler.Worker worker = this.w;
                    long j2 = this.timeskip;
                    worker.schedulePeriodically(this, j2, j2, this.unit);
                    this.w.schedule(new RemoveFromBufferEmit(collection), this.timespan, this.unit);
                } catch (Throwable th) {
                    Exceptions.a(th);
                    disposable.dispose();
                    EmptyDisposable.b(th, this.downstream);
                    this.w.dispose();
                }
            }
        }

        /* JADX WARN: Type inference incomplete: some casts might be missing */
        @Override // java.lang.Runnable
        public void run() {
            if (this.cancelled) {
                return;
            }
            try {
                Object obj = this.bufferSupplier.get();
                Objects.requireNonNull(obj, "The bufferSupplier returned a null buffer");
                Collection collection = (Collection) obj;
                synchronized (this) {
                    try {
                        if (this.cancelled) {
                            return;
                        }
                        this.buffers.add((U) collection);
                        this.w.schedule(new RemoveFromBuffer(collection), this.timespan, this.unit);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                Exceptions.a(th2);
                this.downstream.onError(th2);
                dispose();
            }
        }

        public void accept(Observer<? super U> observer, U u) {
            observer.onNext(u);
        }
    }
}
