package io.reactivex.rxjava3.internal.util;

import io.reactivex.rxjava3.functions.Action;
import io.reactivex.rxjava3.functions.Consumer;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public final class BlockingIgnoringReceiver extends CountDownLatch implements Consumer<Throwable>, Action {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Throwable f71117b;

    public BlockingIgnoringReceiver() {
        super(1);
    }

    @Override // io.reactivex.rxjava3.functions.Consumer
    public final void accept(Object obj) {
        this.f71117b = (Throwable) obj;
        countDown();
    }

    @Override // io.reactivex.rxjava3.functions.Action
    public final void run() {
        countDown();
    }
}
