package com.google.android.gms.internal.measurement;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
final class zzyt extends zzyq {
    public static final zzyf d = new zzyr();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ThreadLocal f31099e = new zzys();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicInteger f31100c = new AtomicInteger();

    @Override // com.google.android.gms.internal.measurement.zzyq
    public final void a() {
        this.f31100c.decrementAndGet();
    }
}
