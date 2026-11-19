package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.disposables.DisposableContainer;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.observers.LambdaConsumerIntrospection;
import io.reactivex.rxjava3.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
abstract class AbstractDisposableAutoRelease extends AtomicReference<Disposable> implements Disposable, LambdaConsumerIntrospection {
    private static final long serialVersionUID = 8924480688481408726L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicReference f70099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Consumer f70100c;
    public final Action d;

    public AbstractDisposableAutoRelease(DisposableContainer disposableContainer, Consumer consumer, Action action) {
        this.f70100c = consumer;
        this.d = action;
        this.f70099b = new AtomicReference(disposableContainer);
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final void dispose() {
        DisposableHelper.a(this);
        DisposableContainer disposableContainer = (DisposableContainer) this.f70099b.getAndSet(null);
        if (disposableContainer != null) {
            disposableContainer.c(this);
        }
    }

    @Override // io.reactivex.rxjava3.disposables.Disposable
    public final boolean isDisposed() {
        return DisposableHelper.b(get());
    }

    public final void onComplete() {
        Disposable disposable = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (disposable != disposableHelper) {
            lazySet(disposableHelper);
            try {
                this.d.run();
            } catch (Throwable th) {
                Exceptions.a(th);
                RxJavaPlugins.b(th);
            }
        }
        DisposableContainer disposableContainer = (DisposableContainer) this.f70099b.getAndSet(null);
        if (disposableContainer != null) {
            disposableContainer.c(this);
        }
    }

    public final void onError(Throwable th) {
        Disposable disposable = get();
        DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
        if (disposable != disposableHelper) {
            lazySet(disposableHelper);
            try {
                this.f70100c.accept(th);
            } catch (Throwable th2) {
                Exceptions.a(th2);
                RxJavaPlugins.b(new CompositeException(th, th2));
            }
        } else {
            RxJavaPlugins.b(th);
        }
        DisposableContainer disposableContainer = (DisposableContainer) this.f70099b.getAndSet(null);
        if (disposableContainer != null) {
            disposableContainer.c(this);
        }
    }

    public final void onSubscribe(Disposable disposable) {
        DisposableHelper.e(this, disposable);
    }
}
