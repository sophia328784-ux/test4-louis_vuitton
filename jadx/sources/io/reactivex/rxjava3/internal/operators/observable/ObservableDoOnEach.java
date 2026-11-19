package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.ObservableSource;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;

/* JADX INFO: loaded from: classes4.dex */
public final class ObservableDoOnEach<T> extends AbstractObservableWithUpstream<T, T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Consumer f70453c;
    public final Consumer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Action f70454e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Action f70455f;

    public static final class DoOnEachObserver<T> implements Observer<T>, Disposable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Observer f70456b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Consumer f70457c;
        public final Consumer d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Action f70458e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Action f70459f;
        public Disposable g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f70460h;

        public DoOnEachObserver(Observer observer, Consumer consumer, Consumer consumer2, Action action, Action action2) {
            this.f70456b = observer;
            this.f70457c = consumer;
            this.d = consumer2;
            this.f70458e = action;
            this.f70459f = action2;
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final void dispose() {
            this.g.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.Disposable
        public final boolean isDisposed() {
            return this.g.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onComplete() {
            if (this.f70460h) {
                return;
            }
            try {
                this.f70458e.run();
                this.f70460h = true;
                this.f70456b.onComplete();
                try {
                    this.f70459f.run();
                } catch (Throwable th) {
                    Exceptions.a(th);
                    RxJavaPlugins.b(th);
                }
            } catch (Throwable th2) {
                Exceptions.a(th2);
                onError(th2);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onError(Throwable th) {
            if (this.f70460h) {
                RxJavaPlugins.b(th);
                return;
            }
            this.f70460h = true;
            try {
                this.d.accept(th);
            } catch (Throwable th2) {
                Exceptions.a(th2);
                th = new CompositeException(th, th2);
            }
            this.f70456b.onError(th);
            try {
                this.f70459f.run();
            } catch (Throwable th3) {
                Exceptions.a(th3);
                RxJavaPlugins.b(th3);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onNext(Object obj) {
            if (this.f70460h) {
                return;
            }
            try {
                this.f70457c.accept(obj);
                this.f70456b.onNext(obj);
            } catch (Throwable th) {
                Exceptions.a(th);
                this.g.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.Observer
        public final void onSubscribe(Disposable disposable) {
            if (DisposableHelper.g(this.g, disposable)) {
                this.g = disposable;
                this.f70456b.onSubscribe(this);
            }
        }
    }

    public ObservableDoOnEach(ObservableSource<T> observableSource, Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action, Action action2) {
        super(observableSource);
        this.f70453c = consumer;
        this.d = consumer2;
        this.f70454e = action;
        this.f70455f = action2;
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f70226b.subscribe(new DoOnEachObserver(observer, this.f70453c, this.d, this.f70454e, this.f70455f));
    }
}
