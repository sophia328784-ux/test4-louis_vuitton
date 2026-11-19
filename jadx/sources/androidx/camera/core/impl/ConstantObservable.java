package androidx.camera.core.impl;

import androidx.camera.core.impl.utils.futures.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.r6;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class ConstantObservable<T> implements Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ConstantObservable f2281b = new ConstantObservable(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ListenableFuture f2282a;

    public ConstantObservable(Object obj) {
        this.f2282a = Futures.g(obj);
    }

    @Override // androidx.camera.core.impl.Observable
    public final ListenableFuture a() {
        return this.f2282a;
    }

    @Override // androidx.camera.core.impl.Observable
    public final void b(Executor executor, Observable.Observer observer) {
        this.f2282a.addListener(new r6(this, observer, 19), executor);
    }

    @Override // androidx.camera.core.impl.Observable
    public final void d(Observable.Observer observer) {
    }
}
