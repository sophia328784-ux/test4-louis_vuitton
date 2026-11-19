package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.queue.MpscLinkedQueue;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import io.reactivex.rxjava3.operators.SimplePlainQueue;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import io.reactivex.rxjava3.subjects.UnicastSubject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableWindowBoundarySelector<T, B, V> extends AbstractObservableWithUpstream<T, Observable<T>> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ObservableSource f71011c;
    public final Function d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f71012e;

    public static final class WindowBoundaryMainObserver<T, B, V> extends AtomicInteger implements Observer<T>, Disposable, Runnable {
        private static final long serialVersionUID = 8646217640096099753L;
        final int bufferSize;
        final Function<? super B, ? extends ObservableSource<V>> closingIndicator;
        final Observer<? super Observable<T>> downstream;
        long emitted;
        final ObservableSource<B> open;
        volatile boolean openDone;
        Disposable upstream;
        volatile boolean upstreamCanceled;
        volatile boolean upstreamDone;
        final SimplePlainQueue<Object> queue = new MpscLinkedQueue();
        final CompositeDisposable resources = new CompositeDisposable();
        final List<UnicastSubject<T>> windows = new ArrayList();
        final AtomicLong windowCount = new AtomicLong(1);
        final AtomicBoolean downstreamDisposed = new AtomicBoolean();
        final AtomicThrowable error = new AtomicThrowable();
        final WindowStartObserver<B> startObserver = new WindowStartObserver<>(this);
        final AtomicLong requested = new AtomicLong();

        public static final class WindowEndObserverIntercept<T, V> extends Observable<T> implements Observer<V>, Disposable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final WindowBoundaryMainObserver f71013b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final UnicastSubject f71014c;
            public final AtomicReference d = new AtomicReference();

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final AtomicBoolean f71015e = new AtomicBoolean();

            public WindowEndObserverIntercept(WindowBoundaryMainObserver windowBoundaryMainObserver, UnicastSubject unicastSubject) {
                this.f71013b = windowBoundaryMainObserver;
                this.f71014c = unicastSubject;
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public final void dispose() {
                DisposableHelper.a(this.d);
            }

            @Override // io.reactivex.rxjava3.disposables.Disposable
            public final boolean isDisposed() {
                return this.d.get() == DisposableHelper.DISPOSED;
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onComplete() {
                this.f71013b.close(this);
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onError(Throwable th) {
                if (isDisposed()) {
                    RxJavaPlugins.b(th);
                } else {
                    this.f71013b.closeError(th);
                }
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onNext(Object obj) {
                if (DisposableHelper.a(this.d)) {
                    this.f71013b.close(this);
                }
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onSubscribe(Disposable disposable) {
                DisposableHelper.e(this.d, disposable);
            }

            @Override // io.reactivex.rxjava3.core.Observable
            public final void subscribeActual(Observer observer) {
                this.f71014c.subscribe(observer);
                this.f71015e.set(true);
            }
        }

        public static final class WindowStartItem<B> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Object f71016a;

            public WindowStartItem(Object obj) {
                this.f71016a = obj;
            }
        }

        public static final class WindowStartObserver<B> extends AtomicReference<Disposable> implements Observer<B> {
            private static final long serialVersionUID = -3326496781427702834L;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final WindowBoundaryMainObserver f71017b;

            public WindowStartObserver(WindowBoundaryMainObserver windowBoundaryMainObserver) {
                this.f71017b = windowBoundaryMainObserver;
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onComplete() {
                this.f71017b.openComplete();
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onError(Throwable th) {
                this.f71017b.openError(th);
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onNext(Object obj) {
                this.f71017b.open(obj);
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onSubscribe(Disposable disposable) {
                DisposableHelper.e(this, disposable);
            }
        }

        public WindowBoundaryMainObserver(Observer<? super Observable<T>> observer, ObservableSource<B> observableSource, Function<? super B, ? extends ObservableSource<V>> function, int i2) {
            this.downstream = observer;
            this.open = observableSource;
            this.closingIndicator = function;
            this.bufferSize = i2;
        }

        public void close(WindowEndObserverIntercept<T, V> windowEndObserverIntercept) {
            this.queue.offer(windowEndObserverIntercept);
            drain();
        }

        public void closeError(Throwable th) {
            this.upstream.dispose();
            WindowStartObserver<B> windowStartObserver = this.startObserver;
            windowStartObserver.getClass();
            DisposableHelper.a(windowStartObserver);
            this.resources.dispose();
            if (this.error.a(th)) {
                this.upstreamDone = true;
                drain();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            if (this.downstreamDisposed.compareAndSet(false, true)) {
                if (this.windowCount.decrementAndGet() != 0) {
                    WindowStartObserver<B> windowStartObserver = this.startObserver;
                    windowStartObserver.getClass();
                    DisposableHelper.a(windowStartObserver);
                    return;
                }
                this.upstream.dispose();
                WindowStartObserver<B> windowStartObserver2 = this.startObserver;
                windowStartObserver2.getClass();
                DisposableHelper.a(windowStartObserver2);
                this.resources.dispose();
                this.error.b();
                this.upstreamCanceled = true;
                drain();
            }
        }

        public void drain() {
            if (getAndIncrement() != 0) {
                return;
            }
            Observer<? super Observable<T>> observer = this.downstream;
            SimplePlainQueue<Object> simplePlainQueue = this.queue;
            List<UnicastSubject<T>> list = this.windows;
            int iAddAndGet = 1;
            while (true) {
                if (this.upstreamCanceled) {
                    simplePlainQueue.clear();
                    list.clear();
                } else {
                    boolean z = this.upstreamDone;
                    Object objPoll = simplePlainQueue.poll();
                    boolean z2 = objPoll == null;
                    if (z && (z2 || this.error.get() != null)) {
                        terminateDownstream(observer);
                        this.upstreamCanceled = true;
                    } else if (z2) {
                        if (this.openDone && list.size() == 0) {
                            this.upstream.dispose();
                            WindowStartObserver<B> windowStartObserver = this.startObserver;
                            windowStartObserver.getClass();
                            DisposableHelper.a(windowStartObserver);
                            this.resources.dispose();
                            terminateDownstream(observer);
                            this.upstreamCanceled = true;
                        }
                    } else if (objPoll instanceof WindowStartItem) {
                        if (!this.downstreamDisposed.get()) {
                            try {
                                Object objApply = this.closingIndicator.apply(((WindowStartItem) objPoll).f71016a);
                                Objects.requireNonNull(objApply, "The closingIndicator returned a null ObservableSource");
                                ObservableSource observableSource = (ObservableSource) objApply;
                                this.windowCount.getAndIncrement();
                                UnicastSubject<T> unicastSubjectD = UnicastSubject.d(this, this.bufferSize);
                                WindowEndObserverIntercept windowEndObserverIntercept = new WindowEndObserverIntercept(this, unicastSubjectD);
                                observer.onNext(windowEndObserverIntercept);
                                AtomicBoolean atomicBoolean = windowEndObserverIntercept.f71015e;
                                if (atomicBoolean.get() || !atomicBoolean.compareAndSet(false, true)) {
                                    list.add(unicastSubjectD);
                                    this.resources.b(windowEndObserverIntercept);
                                    observableSource.subscribe(windowEndObserverIntercept);
                                } else {
                                    unicastSubjectD.onComplete();
                                }
                            } catch (Throwable th) {
                                Exceptions.a(th);
                                this.upstream.dispose();
                                WindowStartObserver<B> windowStartObserver2 = this.startObserver;
                                windowStartObserver2.getClass();
                                DisposableHelper.a(windowStartObserver2);
                                this.resources.dispose();
                                Exceptions.a(th);
                                this.error.a(th);
                                this.upstreamDone = true;
                            }
                        }
                    } else if (objPoll instanceof WindowEndObserverIntercept) {
                        UnicastSubject unicastSubject = ((WindowEndObserverIntercept) objPoll).f71014c;
                        list.remove(unicastSubject);
                        this.resources.c((Disposable) objPoll);
                        unicastSubject.onComplete();
                    } else {
                        Iterator<UnicastSubject<T>> it = list.iterator();
                        while (it.hasNext()) {
                            it.next().onNext(objPoll);
                        }
                    }
                }
                iAddAndGet = addAndGet(-iAddAndGet);
                if (iAddAndGet == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return this.downstreamDisposed.get();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onComplete() {
            WindowStartObserver<B> windowStartObserver = this.startObserver;
            windowStartObserver.getClass();
            DisposableHelper.a(windowStartObserver);
            this.resources.dispose();
            this.upstreamDone = true;
            drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onError(Throwable th) {
            WindowStartObserver<B> windowStartObserver = this.startObserver;
            windowStartObserver.getClass();
            DisposableHelper.a(windowStartObserver);
            this.resources.dispose();
            if (this.error.a(th)) {
                this.upstreamDone = true;
                drain();
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onNext(T t) {
            this.queue.offer(t);
            drain();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.upstream, disposable)) {
                this.upstream = disposable;
                this.downstream.onSubscribe(this);
                this.open.subscribe(this.startObserver);
            }
        }

        public void open(B b2) {
            this.queue.offer(new WindowStartItem(b2));
            drain();
        }

        public void openComplete() {
            this.openDone = true;
            drain();
        }

        public void openError(Throwable th) {
            this.upstream.dispose();
            this.resources.dispose();
            if (this.error.a(th)) {
                this.upstreamDone = true;
                drain();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.windowCount.decrementAndGet() == 0) {
                this.upstream.dispose();
                WindowStartObserver<B> windowStartObserver = this.startObserver;
                windowStartObserver.getClass();
                DisposableHelper.a(windowStartObserver);
                this.resources.dispose();
                this.error.b();
                this.upstreamCanceled = true;
                drain();
            }
        }

        public void terminateDownstream(Observer<?> observer) {
            AtomicThrowable atomicThrowable = this.error;
            atomicThrowable.getClass();
            Throwable thC = ExceptionHelper.c(atomicThrowable);
            if (thC == null) {
                Iterator<UnicastSubject<T>> it = this.windows.iterator();
                while (it.hasNext()) {
                    it.next().onComplete();
                }
                observer.onComplete();
                return;
            }
            if (thC != ExceptionHelper.f71119a) {
                Iterator<UnicastSubject<T>> it2 = this.windows.iterator();
                while (it2.hasNext()) {
                    it2.next().onError(thC);
                }
                observer.onError(thC);
            }
        }
    }

    public ObservableWindowBoundarySelector(ObservableSource<T> observableSource, ObservableSource<B> observableSource2, Function<? super B, ? extends ObservableSource<V>> function, int i2) {
        super(observableSource);
        this.f71011c = observableSource2;
        this.d = function;
        this.f71012e = i2;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new WindowBoundaryMainObserver(observer, this.f71011c, this.d, this.f71012e));
    }
}
