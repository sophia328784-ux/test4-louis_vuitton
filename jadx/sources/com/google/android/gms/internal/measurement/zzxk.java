package com.google.android.gms.internal.measurement;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
final class zzxk extends zzyq {
    public static final zzyf d = new zzxj();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicLong f31065c = new AtomicLong(2147483647L);

    @Override // com.google.android.gms.internal.measurement.zzyq
    public final void a() {
        this.f31065c.set(0L);
    }
}
