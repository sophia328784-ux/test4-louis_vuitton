package com.google.android.gms.internal.gtm;

import android.content.Context;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tagmanager.zzq;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public final class zzal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f29948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzja f29949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ExecutorService f29950c;
    public final ScheduledExecutorService d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzq f29951e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final com.google.android.gms.tagmanager.zzh f29952f;

    public zzal(Context context, zzq zzqVar, com.google.android.gms.tagmanager.zzh zzhVar) {
        zzja zzjaVar = new zzja(context);
        ExecutorService executorServiceA = zzdb.a(context);
        ScheduledExecutorService scheduledExecutorService = zzdd.f30049a;
        Preconditions.h(context);
        this.f29948a = context.getApplicationContext();
        Preconditions.h(zzqVar);
        this.f29951e = zzqVar;
        Preconditions.h(zzhVar);
        this.f29952f = zzhVar;
        this.f29949b = zzjaVar;
        Preconditions.h(executorServiceA);
        this.f29950c = executorServiceA;
        Preconditions.h(scheduledExecutorService);
        this.d = scheduledExecutorService;
    }
}
