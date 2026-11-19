package com.google.android.gms.internal.gtm;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;

/* JADX INFO: loaded from: classes2.dex */
public final class zzjr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f30136a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ScheduledFuture f30137b;

    public zzjr() {
        ScheduledExecutorService scheduledExecutorServiceUnconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1));
        this.f30137b = null;
        this.f30136a = scheduledExecutorServiceUnconfigurableScheduledExecutorService;
    }
}
