package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.SequentialDisposable;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.operators.SimplePlainQueue;
import io.reactivex.rxjava3.subjects.UnicastSubject;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableWindowTimed<T> extends AbstractObservableWithUpstream<T, Observable<T>> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f71020c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TimeUnit f71021e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Scheduler f71022f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f71023h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f71024i;

    public static abstract class AbstractWindowObserver<T> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 5724293814035355511L;
        final int bufferSize;
        volatile boolean done;
        final Observer<? super Observable<T>> downstream;
        long emitted;
        Throwable error;
        final long timespan;
        final TimeUnit unit;
        Disposable upstream;
        volatile boolean upstreamCancelled;
        final SimplePlainQueue<Object> queue = new MpscLinkedQueue();
        final AtomicBoolean downstreamCancelled = new AtomicBoolean();
        final AtomicInteger windowCount = new AtomicInteger(1);

        public AbstractWindowObserver(Observer observer, long j2, TimeUnit timeUnit, int i2) {
            this.downstream = observer;
            this.timespan = j2;
            this.unit = timeUnit;
            this.bufferSize = i2;
        }

        public abstract void cleanupResources();

        public abstract void createFirstWindow();

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            if (this.downstreamCancelled.compareAndSet(false, true)) {
                windowDone();
            }
        }

        public abstract void drain();

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.downstreamCancelled.get();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            this.done = true;
            drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            this.error = th;
            this.done = true;
            drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(T t) {
            this.queue.offer(t);
            drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
                createFirstWindow();
            }
        }

        public final void windowDone() {
            if (this.windowCount.decrementAndGet() == 0) {
                cleanupResources();
                this.upstream.dispose();
                this.upstreamCancelled = true;
                drain();
            }
        }
    }

    public static final class WindowExactBoundedObserver<T> extends AbstractWindowObserver<T> implements Runnable {
        private static final long serialVersionUID = -6130475889925953722L;
        long count;
        final long maxSize;
        final boolean restartTimerOnMaxSize;
        final Scheduler scheduler;
        final SequentialDisposable timer;
        UnicastSubject<T> window;
        final Scheduler.Worker worker;

        public static final class WindowBoundaryRunnable implements Runnable {
            final long index;
            final WindowExactBoundedObserver<?> parent;

            public WindowBoundaryRunnable(WindowExactBoundedObserver<?> windowExactBoundedObserver, long j2) {
                this.parent = windowExactBoundedObserver;
                this.index = j2;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.parent.boundary(this);
            }
        }

        public WindowExactBoundedObserver(Observer<? super Observable<T>> observer, long j2, TimeUnit timeUnit, Scheduler scheduler, int i2, long j3, boolean z) {
            super(observer, j2, timeUnit, i2);
            this.scheduler = scheduler;
            this.maxSize = j3;
            this.restartTimerOnMaxSize = z;
            if (z) {
                this.worker = scheduler.b();
            } else {
                this.worker = null;
            }
            this.timer = new SequentialDisposable();
        }

        public void boundary(WindowBoundaryRunnable windowBoundaryRunnable) {
            this.queue.offer(windowBoundaryRunnable);
            drain();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed.AbstractWindowObserver
        public void cleanupResources() {
            SequentialDisposable sequentialDisposable = this.timer;
            sequentialDisposable.getClass();
            DisposableHelper.a(sequentialDisposable);
            Scheduler.Worker worker = this.worker;
            if (worker != null) {
                worker.dispose();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed.AbstractWindowObserver
        public void createFirstWindow() {
            if (this.downstreamCancelled.get()) {
                return;
            }
            this.emitted = 1L;
            this.windowCount.getAndIncrement();
            UnicastSubject<T> unicastSubjectD = UnicastSubject.d(this, this.bufferSize);
            this.window = unicastSubjectD;
            ObservableWindowSubscribeIntercept observableWindowSubscribeIntercept = new ObservableWindowSubscribeIntercept(unicastSubjectD);
            this.downstream.onNext(observableWindowSubscribeIntercept);
            WindowBoundaryRunnable windowBoundaryRunnable = new WindowBoundaryRunnable(this, 1L);
            boolean z = this.restartTimerOnMaxSize;
            SequentialDisposable sequentialDisposable = this.timer;
            if (z) {
                Scheduler.Worker worker = this.worker;
                long j2 = this.timespan;
                Disposable disposableSchedulePeriodically = worker.schedulePeriodically(windowBoundaryRunnable, j2, j2, this.unit);
                sequentialDisposable.getClass();
                DisposableHelper.c(sequentialDisposable, disposableSchedulePeriodically);
            } else {
                Scheduler scheduler = this.scheduler;
                long j3 = this.timespan;
                Disposable disposableE = scheduler.e(windowBoundaryRunnable, j3, j3, this.unit);
                sequentialDisposable.getClass();
                DisposableHelper.c(sequentialDisposable, disposableE);
            }
            if (observableWindowSubscribeIntercept.c()) {
                this.window.onComplete();
            }
        }

        public UnicastSubject<T> createNewWindow(UnicastSubject<T> unicastSubject) {
            if (unicastSubject != null) {
                unicastSubject.onComplete();
                unicastSubject = null;
            }
            if (this.downstreamCancelled.get()) {
                cleanupResources();
                return unicastSubject;
            }
            long j2 = this.emitted + 1;
            this.emitted = j2;
            this.windowCount.getAndIncrement();
            UnicastSubject<T> unicastSubjectD = UnicastSubject.d(this, this.bufferSize);
            this.window = unicastSubjectD;
            ObservableWindowSubscribeIntercept observableWindowSubscribeIntercept = new ObservableWindowSubscribeIntercept(unicastSubjectD);
            this.downstream.onNext(observableWindowSubscribeIntercept);
            if (this.restartTimerOnMaxSize) {
                SequentialDisposable sequentialDisposable = this.timer;
                Scheduler.Worker worker = this.worker;
                WindowBoundaryRunnable windowBoundaryRunnable = new WindowBoundaryRunnable(this, j2);
                long j3 = this.timespan;
                Disposable disposableSchedulePeriodically = worker.schedulePeriodically(windowBoundaryRunnable, j3, j3, this.unit);
                sequentialDisposable.getClass();
                DisposableHelper.d(sequentialDisposable, disposableSchedulePeriodically);
            }
            if (observableWindowSubscribeIntercept.c()) {
                unicastSubjectD.onComplete();
            }
            return unicastSubjectD;
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed.AbstractWindowObserver
        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            SimplePlainQueue<Object> simplePlainQueue = this.queue;
            Observer<? super Observable<T>> observer = this.downstream;
            UnicastSubject<T> unicastSubjectCreateNewWindow = this.window;
            int iAddAndGet = 1;
            while (true) {
                if (this.upstreamCancelled) {
                    simplePlainQueue.clear();
                    unicastSubjectCreateNewWindow = null;
                    this.window = null;
                } else {
                    boolean z = this.done;
                    Object objPoll = simplePlainQueue.poll();
                    boolean z2 = objPoll == null;
                    if (z && z2) {
                        Throwable th = this.error;
                        if (th != null) {
                            if (unicastSubjectCreateNewWindow != null) {
                                unicastSubjectCreateNewWindow.onError(th);
                            }
                            observer.onError(th);
                        } else {
                            if (unicastSubjectCreateNewWindow != null) {
                                unicastSubjectCreateNewWindow.onComplete();
                            }
                            observer.onComplete();
                        }
                        cleanupResources();
                        this.upstreamCancelled = true;
                    } else if (!z2) {
                        if (objPoll instanceof WindowBoundaryRunnable) {
                            if (((WindowBoundaryRunnable) objPoll).index == this.emitted || !this.restartTimerOnMaxSize) {
                                this.count = 0L;
                                unicastSubjectCreateNewWindow = createNewWindow(unicastSubjectCreateNewWindow);
                            }
                        } else if (unicastSubjectCreateNewWindow != null) {
                            unicastSubjectCreateNewWindow.onNext(objPoll);
                            long j2 = this.count + 1;
                            if (j2 == this.maxSize) {
                                this.count = 0L;
                                unicastSubjectCreateNewWindow = createNewWindow(unicastSubjectCreateNewWindow);
                            } else {
                                this.count = j2;
                            }
                        }
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            windowDone();
        }
    }

    public static final class WindowExactUnboundedObserver<T> extends AbstractWindowObserver<T> implements Runnable {
        static final Object NEXT_WINDOW = new Object();
        private static final long serialVersionUID = 1155822639622580836L;
        final Scheduler scheduler;
        final SequentialDisposable timer;
        UnicastSubject<T> window;
        final Runnable windowRunnable;

        public final class WindowRunnable implements Runnable {
            public WindowRunnable() {
            }

            @Override // java.lang.Runnable
            public void run() {
                WindowExactUnboundedObserver.this.windowDone();
            }
        }

        public WindowExactUnboundedObserver(Observer<? super Observable<T>> observer, long j2, TimeUnit timeUnit, Scheduler scheduler, int i2) {
            super(observer, j2, timeUnit, i2);
            this.scheduler = scheduler;
            this.timer = new SequentialDisposable();
            this.windowRunnable = new WindowRunnable();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed.AbstractWindowObserver
        public void cleanupResources() {
            SequentialDisposable sequentialDisposable = this.timer;
            sequentialDisposable.getClass();
            DisposableHelper.a(sequentialDisposable);
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed.AbstractWindowObserver
        public void createFirstWindow() {
            if (this.downstreamCancelled.get()) {
                return;
            }
            this.windowCount.getAndIncrement();
            UnicastSubject<T> unicastSubjectD = UnicastSubject.d(this.windowRunnable, this.bufferSize);
            this.window = unicastSubjectD;
            this.emitted = 1L;
            ObservableWindowSubscribeIntercept observableWindowSubscribeIntercept = new ObservableWindowSubscribeIntercept(unicastSubjectD);
            this.downstream.onNext(observableWindowSubscribeIntercept);
            SequentialDisposable sequentialDisposable = this.timer;
            Scheduler scheduler = this.scheduler;
            long j2 = this.timespan;
            Disposable disposableE = scheduler.e(this, j2, j2, this.unit);
            sequentialDisposable.getClass();
            DisposableHelper.c(sequentialDisposable, disposableE);
            if (observableWindowSubscribeIntercept.c()) {
                this.window.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed.AbstractWindowObserver
        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            SimplePlainQueue<Object> simplePlainQueue = this.queue;
            Observer<? super Observable<T>> observer = this.downstream;
            UnicastSubject<T> unicastSubjectD = this.window;
            int iAddAndGet = 1;
            while (true) {
                if (this.upstreamCancelled) {
                    simplePlainQueue.clear();
                    this.window = null;
                    unicastSubjectD = null;
                } else {
                    boolean z = this.done;
                    Object objPoll = simplePlainQueue.poll();
                    boolean z2 = objPoll == null;
                    if (z && z2) {
                        Throwable th = this.error;
                        if (th != null) {
                            if (unicastSubjectD != null) {
                                unicastSubjectD.onError(th);
                            }
                            observer.onError(th);
                        } else {
                            if (unicastSubjectD != null) {
                                unicastSubjectD.onComplete();
                            }
                            observer.onComplete();
                        }
                        cleanupResources();
                        this.upstreamCancelled = true;
                    } else if (!z2) {
                        if (objPoll == NEXT_WINDOW) {
                            if (unicastSubjectD != null) {
                                unicastSubjectD.onComplete();
                                this.window = null;
                                unicastSubjectD = null;
                            }
                            if (this.downstreamCancelled.get()) {
                                SequentialDisposable sequentialDisposable = this.timer;
                                sequentialDisposable.getClass();
                                DisposableHelper.a(sequentialDisposable);
                            } else {
                                this.emitted++;
                                this.windowCount.getAndIncrement();
                                unicastSubjectD = UnicastSubject.d(this.windowRunnable, this.bufferSize);
                                this.window = unicastSubjectD;
                                ObservableWindowSubscribeIntercept observableWindowSubscribeIntercept = new ObservableWindowSubscribeIntercept(unicastSubjectD);
                                observer.onNext(observableWindowSubscribeIntercept);
                                if (observableWindowSubscribeIntercept.c()) {
                                    unicastSubjectD.onComplete();
                                }
                            }
                        } else if (unicastSubjectD != null) {
                            unicastSubjectD.onNext(objPoll);
                        }
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.queue.offer(NEXT_WINDOW);
            drain();
        }
    }

    public static final class WindowSkipObserver<T> extends AbstractWindowObserver<T> implements Runnable {
        private static final long serialVersionUID = -7852870764194095894L;
        final long timeskip;
        final List<UnicastSubject<T>> windows;
        final Scheduler.Worker worker;
        static final Object WINDOW_OPEN = new Object();
        static final Object WINDOW_CLOSE = new Object();

        public static final class WindowBoundaryRunnable implements Runnable {
            final boolean isOpen;
            final WindowSkipObserver<?> parent;

            public WindowBoundaryRunnable(WindowSkipObserver<?> windowSkipObserver, boolean z) {
                this.parent = windowSkipObserver;
                this.isOpen = z;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.parent.boundary(this.isOpen);
            }
        }

        public WindowSkipObserver(Observer<? super Observable<T>> observer, long j2, long j3, TimeUnit timeUnit, Scheduler.Worker worker, int i2) {
            super(observer, j2, timeUnit, i2);
            this.timeskip = j3;
            this.worker = worker;
            this.windows = new LinkedList();
        }

        public void boundary(boolean z) {
            this.queue.offer(z ? WINDOW_OPEN : WINDOW_CLOSE);
            drain();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed.AbstractWindowObserver
        public void cleanupResources() {
            this.worker.dispose();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed.AbstractWindowObserver
        public void createFirstWindow() {
            if (this.downstreamCancelled.get()) {
                return;
            }
            this.emitted = 1L;
            this.windowCount.getAndIncrement();
            UnicastSubject<T> unicastSubjectD = UnicastSubject.d(this, this.bufferSize);
            this.windows.add(unicastSubjectD);
            ObservableWindowSubscribeIntercept observableWindowSubscribeIntercept = new ObservableWindowSubscribeIntercept(unicastSubjectD);
            this.downstream.onNext(observableWindowSubscribeIntercept);
            this.worker.schedule(new WindowBoundaryRunnable(this, false), this.timespan, this.unit);
            Scheduler.Worker worker = this.worker;
            WindowBoundaryRunnable windowBoundaryRunnable = new WindowBoundaryRunnable(this, true);
            long j2 = this.timeskip;
            worker.schedulePeriodically(windowBoundaryRunnable, j2, j2, this.unit);
            if (observableWindowSubscribeIntercept.c()) {
                unicastSubjectD.onComplete();
                this.windows.remove(unicastSubjectD);
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableWindowTimed.AbstractWindowObserver
        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            SimplePlainQueue<Object> simplePlainQueue = this.queue;
            Observer<? super Observable<T>> observer = this.downstream;
            List<UnicastSubject<T>> list = this.windows;
            int iAddAndGet = 1;
            while (true) {
                if (this.upstreamCancelled) {
                    simplePlainQueue.clear();
                    list.clear();
                } else {
                    boolean z = this.done;
                    Object objPoll = simplePlainQueue.poll();
                    boolean z2 = objPoll == null;
                    if (z && z2) {
                        Throwable th = this.error;
                        if (th != null) {
                            Iterator<UnicastSubject<T>> it = list.iterator();
                            while (it.hasNext()) {
                                it.next().onError(th);
                            }
                            observer.onError(th);
                        } else {
                            Iterator<UnicastSubject<T>> it2 = list.iterator();
                            while (it2.hasNext()) {
                                it2.next().onComplete();
                            }
                            observer.onComplete();
                        }
                        cleanupResources();
                        this.upstreamCancelled = true;
                    } else if (!z2) {
                        if (objPoll == WINDOW_OPEN) {
                            if (!this.downstreamCancelled.get()) {
                                this.emitted++;
                                this.windowCount.getAndIncrement();
                                UnicastSubject<T> unicastSubjectD = UnicastSubject.d(this, this.bufferSize);
                                list.add(unicastSubjectD);
                                ObservableWindowSubscribeIntercept observableWindowSubscribeIntercept = new ObservableWindowSubscribeIntercept(unicastSubjectD);
                                observer.onNext(observableWindowSubscribeIntercept);
                                this.worker.schedule(new WindowBoundaryRunnable(this, false), this.timespan, this.unit);
                                if (observableWindowSubscribeIntercept.c()) {
                                    unicastSubjectD.onComplete();
                                }
                            }
                        } else if (objPoll != WINDOW_CLOSE) {
                            Iterator<UnicastSubject<T>> it3 = list.iterator();
                            while (it3.hasNext()) {
                                it3.next().onNext(objPoll);
                            }
                        } else if (!list.isEmpty()) {
                            list.remove(0).onComplete();
                        }
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            windowDone();
        }
    }

    public ObservableWindowTimed(Observable<T> observable, long j2, long j3, TimeUnit timeUnit, Scheduler scheduler, long j4, int i2, boolean z) {
        super(observable);
        this.f71020c = j2;
        this.d = j3;
        this.f71021e = timeUnit;
        this.f71022f = scheduler;
        this.g = j4;
        this.f71023h = i2;
        this.f71024i = z;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        long j2 = this.f71020c;
        long j3 = this.d;
        ObservableSource observableSource = this.f70226b;
        if (j2 != j3) {
            observableSource.subscribe(new WindowSkipObserver(observer, this.f71020c, this.d, this.f71021e, this.f71022f.b(), this.f71023h));
        } else if (this.g == Long.MAX_VALUE) {
            observableSource.subscribe(new WindowExactUnboundedObserver(observer, this.f71020c, this.f71021e, this.f71022f, this.f71023h));
        } else {
            observableSource.subscribe(new WindowExactBoundedObserver(observer, this.f71020c, this.f71021e, this.f71022f, this.f71023h, this.g, this.f71024i));
        }
    }
}
