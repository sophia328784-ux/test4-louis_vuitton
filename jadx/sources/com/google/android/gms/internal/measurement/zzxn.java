package com.google.android.gms.internal.measurement;

import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
final class zzxn extends zzyq {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicLong f31066c = new AtomicLong(-1);

    static {
        new zzxl();
    }

    @Override // com.google.android.gms.internal.measurement.zzyq
    public final void a() {
        AtomicLong atomicLong = this.f31066c;
        atomicLong.set(Math.max(-atomicLong.get(), 0L));
    }
}
