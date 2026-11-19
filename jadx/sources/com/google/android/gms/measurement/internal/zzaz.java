package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzaz {
    public static volatile com.google.android.gms.internal.measurement.zzcl d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzjg f31578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Runnable f31579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile long f31580c;

    public zzaz(zzjg zzjgVar) {
        Preconditions.h(zzjgVar);
        this.f31578a = zzjgVar;
        this.f31579b = new zzay(this, zzjgVar);
    }

    public abstract void a();

    public final void b(long j2) {
        c();
        if (j2 >= 0) {
            zzjg zzjgVar = this.f31578a;
            this.f31580c = zzjgVar.e().a();
            if (d().postDelayed(this.f31579b, j2)) {
                return;
            }
            zzjgVar.b().f31769f.b(Long.valueOf(j2), "Failed to schedule delayed post. time");
        }
    }

    public final void c() {
        this.f31580c = 0L;
        d().removeCallbacks(this.f31579b);
    }

    public final Handler d() {
        com.google.android.gms.internal.measurement.zzcl zzclVar;
        if (d != null) {
            return d;
        }
        synchronized (zzaz.class) {
            try {
                if (d == null) {
                    d = new com.google.android.gms.internal.measurement.zzcl(this.f31578a.d().getMainLooper());
                }
                zzclVar = d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzclVar;
    }
}
