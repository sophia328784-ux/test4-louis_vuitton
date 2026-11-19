package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.observers.SerializedObserver;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableSampleWithObservable<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ObservableSource f70810c;
    public final boolean d;

    public static final class SampleMainEmitLast<T> extends SampleMainObserver<T> {
        private static final long serialVersionUID = -3029755663834015785L;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AtomicInteger f70811f;
        public volatile boolean g;

        public SampleMainEmitLast(SerializedObserver serializedObserver, ObservableSource observableSource) {
            super(serializedObserver, observableSource);
            this.f70811f = new AtomicInteger();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableSampleWithObservable.SampleMainObserver
        public final void a() {
            this.g = true;
            if (this.f70811f.getAndIncrement() == 0) {
                T andSet = getAndSet(null);
                if (andSet != null) {
                    this.f70812b.onNext(andSet);
                }
                this.f70812b.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableSampleWithObservable.SampleMainObserver
        public final void b() {
            if (this.f70811f.getAndIncrement() == 0) {
                do {
                    boolean z = this.g;
                    T andSet = getAndSet(null);
                    if (andSet != null) {
                        this.f70812b.onNext(andSet);
                    }
                    if (z) {
                        this.f70812b.onComplete();
                        return;
                    }
                } while (this.f70811f.decrementAndGet() != 0);
            }
        }
    }

    public static final class SampleMainNoLast<T> extends SampleMainObserver<T> {
        private static final long serialVersionUID = -3029755663834015785L;

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableSampleWithObservable.SampleMainObserver
        public final void a() {
            this.f70812b.onComplete();
        }

        @Override // io.reactivex.rxjava3.internal.operators.observable.ObservableSampleWithObservable.SampleMainObserver
        public final void b() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                this.f70812b.onNext(andSet);
            }
        }
    }

    public static abstract class SampleMainObserver<T> extends AtomicReference<T> implements Observer<T>, Disposable {
        private static final long serialVersionUID = -3517602651313910099L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SerializedObserver f70812b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ObservableSource f70813c;
        public final AtomicReference d = new AtomicReference();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Disposable f70814e;

        public SampleMainObserver(SerializedObserver serializedObserver, ObservableSource observableSource) {
            this.f70812b = serializedObserver;
            this.f70813c = observableSource;
        }

        public abstract void a();

        public abstract void b();

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            DisposableHelper.a(this.d);
            this.f70814e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.d.get() == DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            DisposableHelper.a(this.d);
            a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            DisposableHelper.a(this.d);
            this.f70812b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            lazySet(obj);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70814e, disposable)) {
                this.f70814e = disposable;
                this.f70812b.onSubscribe(this);
                if (this.d.get() == null) {
                    this.f70813c.subscribe(new SamplerObserver(this));
                }
            }
        }
    }

    public static final class SamplerObserver<T> implements Observer<Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SampleMainObserver f70815b;

        public SamplerObserver(SampleMainObserver sampleMainObserver) {
            this.f70815b = sampleMainObserver;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            SampleMainObserver sampleMainObserver = this.f70815b;
            sampleMainObserver.f70814e.dispose();
            sampleMainObserver.a();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            SampleMainObserver sampleMainObserver = this.f70815b;
            sampleMainObserver.f70814e.dispose();
            sampleMainObserver.f70812b.onError(th);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            this.f70815b.b();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this.f70815b.d, disposable);
        }
    }

    public ObservableSampleWithObservable(ObservableSource<T> observableSource, ObservableSource<?> observableSource2, boolean z) {
        super(observableSource);
        this.f70810c = observableSource2;
        this.d = z;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        SerializedObserver serializedObserver = new SerializedObserver(observer);
        ObservableSource observableSource = this.f70810c;
        boolean z = this.d;
        ObservableSource observableSource2 = this.f70226b;
        if (z) {
            observableSource2.subscribe(new SampleMainEmitLast(serializedObserver, observableSource));
        } else {
            observableSource2.subscribe(new SampleMainNoLast(serializedObserver, observableSource));
        }
    }
}
