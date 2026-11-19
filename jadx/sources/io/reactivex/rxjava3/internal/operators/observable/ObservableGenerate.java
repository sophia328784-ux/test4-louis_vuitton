package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Emitter;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.functions.Supplier;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableGenerate<T, S> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f70557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BiFunction f70558c;
    public final Consumer d;

    public static final class GeneratorDisposable<T, S> implements Emitter<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70559b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BiFunction f70560c;
        public final Consumer d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Object f70561e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public volatile boolean f70562f;
        public boolean g;

        public GeneratorDisposable(Observer observer, BiFunction biFunction, Consumer consumer, Object obj) {
            this.f70559b = observer;
            this.f70560c = biFunction;
            this.d = consumer;
            this.f70561e = obj;
        }

        public final void a(Object obj) {
            try {
                this.d.accept(obj);
            } catch (Throwable th) {
                Exceptions.a(th);
                RxJavaPlugins.b(th);
            }
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.f70562f = true;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.f70562f;
        }
    }

    public ObservableGenerate(Supplier<S> supplier, BiFunction<S, Emitter<T>, S> biFunction, Consumer<? super S> consumer) {
        this.f70557b = supplier;
        this.f70558c = biFunction;
        this.d = consumer;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        try {
            Object obj = this.f70557b.get();
            BiFunction biFunction = this.f70558c;
            GeneratorDisposable generatorDisposable = new GeneratorDisposable(observer, biFunction, this.d, obj);
            observer.onSubscribe(generatorDisposable);
            Object objApply = generatorDisposable.f70561e;
            if (generatorDisposable.f70562f) {
                generatorDisposable.f70561e = null;
                generatorDisposable.a(objApply);
                return;
            }
            while (!generatorDisposable.f70562f) {
                try {
                    objApply = biFunction.apply(objApply, generatorDisposable);
                    if (generatorDisposable.g) {
                        generatorDisposable.f70562f = true;
                        generatorDisposable.f70561e = null;
                        generatorDisposable.a(objApply);
                        return;
                    }
                } catch (Throwable th) {
                    Exceptions.a(th);
                    generatorDisposable.f70561e = null;
                    generatorDisposable.f70562f = true;
                    if (generatorDisposable.g) {
                        RxJavaPlugins.b(th);
                    } else {
                        generatorDisposable.g = true;
                        generatorDisposable.f70559b.onError(th);
                    }
                    generatorDisposable.a(objApply);
                    return;
                }
            }
            generatorDisposable.f70561e = null;
            generatorDisposable.a(objApply);
        } catch (Throwable th2) {
            Exceptions.a(th2);
            EmptyDisposable.b(th2, observer);
        }
    }
}
