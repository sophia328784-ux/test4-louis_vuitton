package com.perfectcorp.thirdparty.io.reactivex.internal.schedulers;

import defpackage.n00;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes3.dex */
public final class i extends AtomicLong implements ThreadFactory {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f43116b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f43117c;
    public final boolean d;

    public static final class a extends Thread implements h {
        public a(Runnable runnable, String str) {
            super(runnable, str);
        }
    }

    public i(String str, int i2, boolean z) {
        this.f43116b = str;
        this.f43117c = i2;
        this.d = z;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        String str = this.f43116b + '-' + incrementAndGet();
        Thread aVar = this.d ? new a(runnable, str) : new Thread(runnable, str);
        aVar.setPriority(this.f43117c);
        aVar.setDaemon(true);
        return aVar;
    }

    @Override // java.util.concurrent.atomic.AtomicLong
    public final String toString() {
        return n00.r(this.f43116b, "]", new StringBuilder("RxThreadFactory["));
    }

    public i(String str, int i2) {
        this(str, i2, false);
    }

    public i(String str) {
        this(str, 5, false);
    }
}
