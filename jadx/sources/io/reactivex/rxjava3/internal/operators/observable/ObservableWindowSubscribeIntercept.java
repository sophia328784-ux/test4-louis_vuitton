package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import io.reactivex.rxjava3.subjects.UnicastSubject;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
final class ObservableWindowSubscribeIntercept<T> extends Observable<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UnicastSubject f71018b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f71019c = new AtomicBoolean();

    public ObservableWindowSubscribeIntercept(UnicastSubject unicastSubject) {
        this.f71018b = unicastSubject;
    }

    public final boolean c() {
        AtomicBoolean atomicBoolean = this.f71019c;
        return !atomicBoolean.get() && atomicBoolean.compareAndSet(false, true);
    }

    @Override // io.reactivex.rxjava3.core.Observable
    public final void subscribeActual(Observer observer) {
        this.f71018b.subscribe(observer);
        this.f71019c.set(true);
    }
}
