package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.observers.SerializedObserver;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableDebounceTimed<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f70411c;
    public final TimeUnit d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Scheduler f70412e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Consumer f70413f;

    public static final class DebounceEmitter<T> extends AtomicReference<Disposable> implements Runnable, Disposable {
        private static final long serialVersionUID = 6812032969491025141L;
        final long idx;
        final AtomicBoolean once = new AtomicBoolean();
        final DebounceTimedObserver<T> parent;
        final T value;

        public DebounceEmitter(T t, long j2, DebounceTimedObserver<T> debounceTimedObserver) {
            this.value = t;
            this.idx = j2;
            this.parent = debounceTimedObserver;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public void dispose() {
            DisposableHelper.a(this);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.once.compareAndSet(false, true)) {
                DebounceTimedObserver<T> debounceTimedObserver = this.parent;
                long j2 = this.idx;
                T t = this.value;
                if (j2 == debounceTimedObserver.f70419i) {
                    debounceTimedObserver.f70414b.onNext(t);
                    dispose();
                }
            }
        }

        public void setResource(Disposable disposable) {
            DisposableHelper.c(this, disposable);
        }
    }

    public static final class DebounceTimedObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SerializedObserver f70414b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f70415c;
        public final TimeUnit d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Scheduler.Worker f70416e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Consumer f70417f;
        public Disposable g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public DebounceEmitter f70418h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public volatile long f70419i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f70420j;

        public DebounceTimedObserver(SerializedObserver serializedObserver, long j2, TimeUnit timeUnit, Scheduler.Worker worker, Consumer consumer) {
            this.f70414b = serializedObserver;
            this.f70415c = j2;
            this.d = timeUnit;
            this.f70416e = worker;
            this.f70417f = consumer;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.g.dispose();
            this.f70416e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70416e.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.f70420j) {
                return;
            }
            this.f70420j = true;
            DebounceEmitter debounceEmitter = this.f70418h;
            if (debounceEmitter != null) {
                debounceEmitter.dispose();
            }
            if (debounceEmitter != null) {
                debounceEmitter.run();
            }
            this.f70414b.onComplete();
            this.f70416e.dispose();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70420j) {
                RxJavaPlugins.b(th);
                return;
            }
            DebounceEmitter debounceEmitter = this.f70418h;
            if (debounceEmitter != null) {
                debounceEmitter.dispose();
            }
            this.f70420j = true;
            this.f70414b.onError(th);
            this.f70416e.dispose();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70420j) {
                return;
            }
            long j2 = this.f70419i + 1;
            this.f70419i = j2;
            DebounceEmitter debounceEmitter = this.f70418h;
            if (debounceEmitter != null) {
                debounceEmitter.dispose();
            }
            Consumer consumer = this.f70417f;
            if (consumer != null && debounceEmitter != null) {
                try {
                    consumer.accept(this.f70418h.value);
                } catch (Throwable th) {
                    Exceptions.a(th);
                    this.g.dispose();
                    this.f70414b.onError(th);
                    this.f70420j = true;
                }
            }
            DebounceEmitter debounceEmitter2 = new DebounceEmitter(obj, j2, this);
            this.f70418h = debounceEmitter2;
            debounceEmitter2.setResource(this.f70416e.schedule(debounceEmitter2, this.f70415c, this.d));
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.g, disposable)) {
                this.g = disposable;
                this.f70414b.onSubscribe(this);
            }
        }
    }

    public ObservableDebounceTimed(ObservableSource<T> observableSource, long j2, TimeUnit timeUnit, Scheduler scheduler, Consumer<? super T> consumer) {
        super(observableSource);
        this.f70411c = j2;
        this.d = timeUnit;
        this.f70412e = scheduler;
        this.f70413f = consumer;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new DebounceTimedObserver(new SerializedObserver(observer), this.f70411c, this.d, this.f70412e.b(), this.f70413f));
    }
}
