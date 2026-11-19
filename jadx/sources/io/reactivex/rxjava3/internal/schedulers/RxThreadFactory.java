package io.reactivex.rxjava3.internal.schedulers;

import defpackage.n00;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
public final class RxThreadFactory extends AtomicLong implements ThreadFactory {
    private static final long serialVersionUID = -7789753024099756196L;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f71100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f71101c;
    public final boolean d;

    public static final class RxCustomThread extends Thread implements NonBlockingThread {
        public RxCustomThread(Runnable runnable, String str) {
            super(runnable, str);
        }
    }

    public RxThreadFactory(String str, int i2, boolean z) {
        this.f71100b = str;
        this.f71101c = i2;
        this.d = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.f71100b + '-' + incrementAndGet();
        Thread rxCustomThread = this.d ? new RxCustomThread(runnable, str) : new Thread(runnable, str);
        rxCustomThread.setPriority(this.f71101c);
        rxCustomThread.setDaemon(true);
        return rxCustomThread;
    }

    @Override // java.util.concurrent.atomic.AtomicLong
    public final String toString() {
        return n00.r(this.f71100b, "]", new StringBuilder("RxThreadFactory["));
    }

    public RxThreadFactory(String str, int i2) {
        this(str, i2, false);
    }

    public RxThreadFactory(String str) {
        this(str, 5, false);
    }
}
