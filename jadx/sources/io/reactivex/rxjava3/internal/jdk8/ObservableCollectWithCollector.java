package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.stream.Collector;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableCollectWithCollector<T, A, R> extends Observable<R> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Observable f70069b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Collector f70070c;

    public static final class CollectorObserver<T, A, R> extends DeferredScalarDisposable<R> implements Observer<T> {
        private static final long serialVersionUID = -229544830565448758L;
        public final BiConsumer d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Function f70071e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Disposable f70072f;
        public boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Object f70073h;

        public CollectorObserver(Observer observer, Object obj, BiConsumer biConsumer, Function function) {
            super(observer);
            this.f70073h = obj;
            this.d = biConsumer;
            this.f70071e = function;
        }

        @Override // io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable, io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            super.dispose();
            this.f70072f.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.g) {
                return;
            }
            this.g = true;
            this.f70072f = DisposableHelper.DISPOSED;
            Object obj = this.f70073h;
            this.f70073h = null;
            try {
                Object objApply = this.f70071e.apply(obj);
                Objects.requireNonNull(objApply, "The finisher returned a null value");
                a(objApply);
            } catch (Throwable th) {
                Exceptions.a(th);
                this.f70115b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.g) {
                RxJavaPlugins.b(th);
                return;
            }
            this.g = true;
            this.f70072f = DisposableHelper.DISPOSED;
            this.f70073h = null;
            this.f70115b.onError(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.g) {
                return;
            }
            try {
                this.d.accept(this.f70073h, obj);
            } catch (Throwable th) {
                Exceptions.a(th);
                this.f70072f.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.f70072f, disposable)) {
                this.f70072f = disposable;
                this.f70115b.onSubscribe(this);
            }
        }
    }

    public ObservableCollectWithCollector(Observable<T> observable, Collector<? super T, A, R> collector) {
        this.f70069b = observable;
        this.f70070c = collector;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        Collector collector = this.f70070c;
        try {
            this.f70069b.subscribe(new CollectorObserver(observer, collector.supplier().get(), collector.accumulator(), collector.finisher()));
        } catch (Throwable th) {
            Exceptions.a(th);
            EmptyDisposable.b(th, observer);
        }
    }
}
