package com.google.android.gms.internal.gtm;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.tagmanager.zzq;
import java.util.ArrayList;
import java.util.Date;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class zzak {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f29939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f29940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f29941c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzbu f29942e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzja f29943f;
    public final ExecutorService g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ScheduledExecutorService f29944h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final zzq f29945i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final DefaultClock f29946j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final zzam f29947k;
    public zzbt l;
    public volatile int m;
    public ArrayList n;
    public ScheduledFuture o;
    public boolean p;

    public zzak(Context context, String str, String str2, String str3, zzbu zzbuVar, zzja zzjaVar, ExecutorService executorService, ScheduledExecutorService scheduledExecutorService, zzq zzqVar, zzam zzamVar) {
        DefaultClock defaultClock = DefaultClock.f29336a;
        this.m = 1;
        this.n = new ArrayList();
        this.o = null;
        this.p = false;
        this.f29939a = context;
        Preconditions.h(str);
        this.f29940b = str;
        this.f29942e = zzbuVar;
        Preconditions.h(zzjaVar);
        this.f29943f = zzjaVar;
        Preconditions.h(executorService);
        this.g = executorService;
        Preconditions.h(scheduledExecutorService);
        this.f29944h = scheduledExecutorService;
        Preconditions.h(zzqVar);
        this.f29945i = zzqVar;
        this.f29946j = defaultClock;
        this.f29947k = zzamVar;
        this.f29941c = str3;
        this.d = str2;
        this.n.add(new zzar("gtm.load", new Bundle(), "gtm", new Date(), false, zzqVar));
        zzao.a(2);
        executorService.execute(new zzaf(this, null));
    }

    public static void a(zzak zzakVar, long j2) {
        ScheduledFuture scheduledFuture = zzakVar.o;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        zzao.a(2);
        zzakVar.o = zzakVar.f29944h.schedule(new zzad(zzakVar), j2, TimeUnit.MILLISECONDS);
    }
}
