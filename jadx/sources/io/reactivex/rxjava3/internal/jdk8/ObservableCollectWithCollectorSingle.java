package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.core.SingleObserver;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.fuseable.FuseToObservable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.stream.Collector;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableCollectWithCollectorSingle<T, A, R> extends Single<R> implements FuseToObservable<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Observable f70074b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Collector f70075c;

    public static final class CollectorSingleObserver<T, A, R> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SingleObserver f70076b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BiConsumer f70077c;
        public final Function d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Disposable f70078e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f70079f;
        public Object g;

        public CollectorSingleObserver(SingleObserver singleObserver, Object obj, BiConsumer biConsumer, Function function) {
            this.f70076b = singleObserver;
            this.g = obj;
            this.f70077c = biConsumer;
            this.d = function;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70078e.dispose();
            this.f70078e = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70078e == DisposableHelper.DISPOSED;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            SingleObserver singleObserver = this.f70076b;
            if (this.f70079f) {
                return;
            }
            this.f70079f = true;
            this.f70078e = DisposableHelper.DISPOSED;
            Object obj = this.g;
            this.g = null;
            try {
                Object objApply = this.d.apply(obj);
                Objects.requireNonNull(objApply, "The finisher returned a null value");
                singleObserver.onSuccess(objApply);
            } catch (Throwable th) {
                Exceptions.a(th);
                singleObserver.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70079f) {
                RxJavaPlugins.b(th);
                return;
            }
            this.f70079f = true;
            this.f70078e = DisposableHelper.DISPOSED;
            this.g = null;
            this.f70076b.onError(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70079f) {
                return;
            }
            try {
                this.f70077c.accept(this.g, obj);
            } catch (Throwable th) {
                Exceptions.a(th);
                this.f70078e.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70078e, disposable)) {
                this.f70078e = disposable;
                this.f70076b.onSubscribe(this);
            }
        }
    }

    public ObservableCollectWithCollectorSingle(Observable<T> observable, Collector<? super T, A, R> collector) {
        this.f70074b = observable;
        this.f70075c = collector;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.FuseToObservable
    public final Observable b() {
        return new ObservableCollectWithCollector(this.f70074b, this.f70075c);
    }

    @Override // io.reactivex.rxjava3.core.Single
    public final void e(SingleObserver singleObserver) {
        Collector collector = this.f70075c;
        try {
            this.f70074b.subscribe(new CollectorSingleObserver(singleObserver, collector.supplier().get(), collector.accumulator(), collector.finisher()));
        } catch (Throwable th) {
            Exceptions.a(th);
            singleObserver.onSubscribe(EmptyDisposable.INSTANCE);
            singleObserver.onError(th);
        }
    }
}
