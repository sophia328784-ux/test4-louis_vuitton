package io.reactivex.rxjava3.internal.observers;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.DisposableContainer;
import io.reactivex.rxjava3.exceptions.Exceptions;
import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;

/* JADX INFO: loaded from: classes4.dex */
public final class DisposableAutoReleaseObserver<T> extends AbstractDisposableAutoRelease implements Observer<T> {
    private static final long serialVersionUID = 8924480688481408726L;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Consumer f70117e;

    public DisposableAutoReleaseObserver(DisposableContainer disposableContainer, Consumer<? super T> consumer, Consumer<? super Throwable> consumer2, Action action) {
        super(disposableContainer, consumer2, action);
        this.f70117e = consumer;
    }

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onNext(Object obj) {
        if (get() != DisposableHelper.DISPOSED) {
            try {
                this.f70117e.accept(obj);
            } catch (Throwable th) {
                Exceptions.a(th);
                get().dispose();
                onError(th);
            }
        }
    }
}
