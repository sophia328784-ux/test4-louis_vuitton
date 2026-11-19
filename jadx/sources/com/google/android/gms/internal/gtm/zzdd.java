package com.google.android.gms.internal.gtm;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzdd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ScheduledExecutorService f30049a = Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, new zzdc()));
}
