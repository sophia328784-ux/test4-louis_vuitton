package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.stream.Stream;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableFlatMapStream<T, R> extends Observable<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Observable f70081b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f70082c;

    public static final class FlatMapStreamObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -5127032662980523968L;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70083b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Function f70084c;
        public Disposable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile boolean f70085e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f70086f;

        public FlatMapStreamObserver(Observer observer, Function function) {
            this.f70083b = observer;
            this.f70084c = function;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70085e = true;
            this.d.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70085e;
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.f70086f) {
                return;
            }
            this.f70086f = true;
            this.f70083b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70086f) {
                RxJavaPlugins.b(th);
            } else {
                this.f70086f = true;
                this.f70083b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70086f) {
                return;
            }
            try {
                Object objApply = this.f70084c.apply(obj);
                Objects.requireNonNull(objApply, "The mapper returned a null Stream");
                Stream stream = (Stream) objApply;
                try {
                    for (T t : stream) {
                        if (this.f70085e) {
                            this.f70086f = true;
                            break;
                        }
                        Objects.requireNonNull(t, "The Stream's Iterator.next returned a null value");
                        if (this.f70085e) {
                            this.f70086f = true;
                            break;
                        }
                        this.f70083b.onNext(t);
                        if (this.f70085e) {
                            this.f70086f = true;
                            break;
                        }
                    }
                    stream.close();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        try {
                            stream.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th4) {
                Exceptions.a(th4);
                this.d.dispose();
                onError(th4);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.d, disposable)) {
                this.d = disposable;
                this.f70083b.onSubscribe(this);
            }
        }
    }

    public ObservableFlatMapStream(Observable<T> observable, Function<? super T, ? extends Stream<? extends R>> function) {
        this.f70081b = observable;
        this.f70082c = function;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        Stream stream;
        ObservableSource observableSource = this.f70081b;
        boolean z = observableSource instanceof Supplier;
        Function function = this.f70082c;
        if (!z) {
            observableSource.subscribe(new FlatMapStreamObserver(observer, function));
            return;
        }
        try {
            Object obj = ((Supplier) observableSource).get();
            if (obj != null) {
                Object objApply = function.apply(obj);
                Objects.requireNonNull(objApply, "The mapper returned a null Stream");
                stream = (Stream) objApply;
            } else {
                stream = null;
            }
            if (stream != null) {
                ObservableFromStream.c(observer, stream);
            } else {
                EmptyDisposable.a(observer);
            }
        } catch (Throwable th) {
            Exceptions.a(th);
            EmptyDisposable.b(th, observer);
        }
    }
}
