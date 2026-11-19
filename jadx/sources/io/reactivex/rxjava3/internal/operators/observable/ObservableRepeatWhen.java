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
import io.reactivex.rxjava3.internal.util.HalfSerializer;
import io.reactivex.rxjava3.subjects.PublishSubject;
import io.reactivex.rxjava3.subjects.Subject;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableRepeatWhen<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70750c;

    public static final class RepeatWhenObserver<T> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 802743776666017014L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70751b;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Subject f70753e;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final ObservableSource f70755h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public volatile boolean f70756i;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AtomicInteger f70752c = new AtomicInteger();
        public final AtomicThrowable d = new AtomicThrowable();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final InnerRepeatObserver f70754f = new InnerRepeatObserver();
        public final AtomicReference g = new AtomicReference();

        public final class InnerRepeatObserver extends AtomicReference<Disposable> implements Observer<Object> {
            private static final long serialVersionUID = 3254781284376480842L;

            public InnerRepeatObserver() {
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onComplete() {
                RepeatWhenObserver repeatWhenObserver = RepeatWhenObserver.this;
                DisposableHelper.a(repeatWhenObserver.g);
                HalfSerializer.a(repeatWhenObserver.f70751b, repeatWhenObserver, repeatWhenObserver.d);
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onError(Throwable th) {
                RepeatWhenObserver repeatWhenObserver = RepeatWhenObserver.this;
                DisposableHelper.a(repeatWhenObserver.g);
                HalfSerializer.b(repeatWhenObserver.f70751b, th, repeatWhenObserver, repeatWhenObserver.d);
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onNext(Object obj) {
                RepeatWhenObserver.this.a();
            }

            @Override // io.reactivex.rxjava3.core.Observer
            public final void onSubscribe(Disposable disposable) {
                DisposableHelper.e(this, disposable);
            }
        }

        public RepeatWhenObserver(Observer observer, Subject subject, ObservableSource observableSource) {
            this.f70751b = observer;
            this.f70753e = subject;
            this.f70755h = observableSource;
        }

        public final void a() {
            if (this.f70752c.getAndIncrement() == 0) {
                while (!isDisposed()) {
                    if (!this.f70756i) {
                        this.f70756i = true;
                        this.f70755h.subscribe(this);
                    }
                    if (this.f70752c.decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            DisposableHelper.a(this.g);
            DisposableHelper.a(this.f70754f);
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return DisposableHelper.b((Disposable) this.g.get());
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            DisposableHelper.c(this.g, null);
            this.f70756i = false;
            this.f70753e.onNext(0);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            DisposableHelper.a(this.f70754f);
            HalfSerializer.b(this.f70751b, th, this, this.d);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            HalfSerializer.c(this.f70751b, obj, this, this.d);
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            DisposableHelper.e(this.g, disposable);
        }
    }

    public ObservableRepeatWhen(ObservableSource<T> observableSource, Function<? super Observable<Object>, ? extends ObservableSource<?>> function) {
        super(observableSource);
        this.f70750c = function;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        Subject subjectC = new PublishSubject().c();
        try {
            Object objApply = this.f70750c.apply(subjectC);
            Objects.requireNonNull(objApply, "The handler returned a null ObservableSource");
            ObservableSource observableSource = (ObservableSource) objApply;
            RepeatWhenObserver repeatWhenObserver = new RepeatWhenObserver(observer, subjectC, this.f70226b);
            observer.onSubscribe(repeatWhenObserver);
            observableSource.subscribe(repeatWhenObserver.f70754f);
            repeatWhenObserver.a();
        } catch (Throwable th) {
            Exceptions.a(th);
            EmptyDisposable.b(th, observer);
        }
    }
}
