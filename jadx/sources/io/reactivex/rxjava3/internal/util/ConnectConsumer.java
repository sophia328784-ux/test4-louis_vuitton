package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.disposables.Disposable;
import io.reactivex.rxjava3.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final class ConnectConsumer implements Consumer<Disposable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Disposable f71118b;

    @Override // io.reactivex.rxjava3.functions.Consumer
    public final void accept(Object obj) {
        this.f71118b = (Disposable) obj;
    }
}
