package com.google.android.gms.cloudmessaging;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.util.concurrent.NamedThreadFactory;
import com.google.android.gms.tasks.Task;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public final class zzv {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static zzv f28941e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f28942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f28943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public zzp f28944c = new zzp(this);
    public int d = 1;

    public zzv(Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f28943b = scheduledExecutorService;
        this.f28942a = context.getApplicationContext();
    }

    public static synchronized zzv a(Context context) {
        try {
            if (f28941e == null) {
                f28941e = new zzv(context, Executors.unconfigurableScheduledExecutorService(Executors.newScheduledThreadPool(1, new NamedThreadFactory("MessengerIpcClient"))));
            }
        } catch (Throwable th) {
            throw th;
        }
        return f28941e;
    }

    public final Task b(int i2, Bundle bundle) {
        int i3;
        synchronized (this) {
            i3 = this.d;
            this.d = i3 + 1;
        }
        return c(new zzr(i3, i2, bundle));
    }

    public final synchronized Task c(zzs zzsVar) {
        try {
            if (Log.isLoggable("MessengerIpcClient", 3)) {
                "Queueing ".concat(zzsVar.toString());
            }
            if (!this.f28944c.a(zzsVar)) {
                zzp zzpVar = new zzp(this);
                this.f28944c = zzpVar;
                zzpVar.a(zzsVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return zzsVar.f28939b.f32085a;
    }
}
