package com.perfectcorp.thirdparty.io.reactivex.internal.schedulers;

import com.perfectcorp.thirdparty.io.reactivex.Scheduler;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes3.dex */
public final class f extends Scheduler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final i f43113b = new i("PfRxNewThreadScheduler", Math.max(1, Math.min(10, Integer.getInteger("pf.rx2.newthread-priority", 5).intValue())));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ThreadFactory f43114a = f43113b;

    @Override // com.perfectcorp.thirdparty.io.reactivex.Scheduler
    public final Scheduler.b a() {
        return new g(this.f43114a);
    }
}
