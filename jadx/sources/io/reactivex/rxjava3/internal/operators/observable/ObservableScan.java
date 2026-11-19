package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.BiFunction;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableScan<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BiFunction f70818c;

    public static final class ScanObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70819b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final BiFunction f70820c;
        public Disposable d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Object f70821e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f70822f;

        public ScanObserver(Observer observer, BiFunction biFunction) {
            this.f70819b = observer;
            this.f70820c = biFunction;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.d.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.d.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.f70822f) {
                return;
            }
            this.f70822f = true;
            this.f70819b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70822f) {
                RxJavaPlugins.b(th);
            } else {
                this.f70822f = true;
                this.f70819b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70822f) {
                return;
            }
            Object obj2 = this.f70821e;
            Observer observer = this.f70819b;
            if (obj2 == null) {
                this.f70821e = obj;
                observer.onNext(obj);
                return;
            }
            try {
                Object objApply = this.f70820c.apply(obj2, obj);
                Objects.requireNonNull(objApply, "The value returned by the accumulator is null");
                this.f70821e = objApply;
                observer.onNext(objApply);
            } catch (Throwable th) {
                Exceptions.a(th);
                this.d.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.d, disposable)) {
                this.d = disposable;
                this.f70819b.onSubscribe(this);
            }
        }
    }

    public ObservableScan(ObservableSource<T> observableSource, BiFunction<T, T, T> biFunction) {
        super(observableSource);
        this.f70818c = biFunction;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new ScanObserver(observer, this.f70818c));
    }
}
