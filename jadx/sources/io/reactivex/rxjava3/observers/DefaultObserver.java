package io.reactivex.rxjava3.observers;

import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.EndConsumerHelper;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DefaultObserver<T> implements Observer<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Disposable f71133b;

    @Override // io.reactivex.rxjava3.core.Observer
    public final void onSubscribe(Disposable disposable) {
        Disposable disposable2 = this.f71133b;
        Class<?> cls = getClass();
        Objects.requireNonNull(disposable, "next is null");
        if (disposable2 == null) {
            this.f71133b = disposable;
            return;
        }
        disposable.dispose();
        if (disposable2 != DisposableHelper.DISPOSED) {
            EndConsumerHelper.a(cls);
        }
    }
}
