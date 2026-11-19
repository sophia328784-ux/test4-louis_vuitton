package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;

/* JADX INFO: loaded from: classes2.dex */
final class zzna implements Runnable {
    final /* synthetic */ zzgb zza;
    final /* synthetic */ zznf zzb;

    public zzna(zznf zznfVar, zzgb zzgbVar) {
        this.zza = zzgbVar;
        Objects.requireNonNull(zznfVar);
        this.zzb = zznfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznf zznfVar = this.zzb;
        synchronized (zznfVar) {
            try {
                zznfVar.f31912b = false;
                zznl zznlVar = zznfVar.d;
                if (!zznlVar.x()) {
                    zzgu zzguVar = zznlVar.f31850a.f31842f;
                    zzic.m(zzguVar);
                    zzguVar.m.a("Connected to remote service");
                    zzgb zzgbVar = this.zza;
                    zznlVar.g();
                    Preconditions.h(zzgbVar);
                    zznlVar.d = zzgbVar;
                    zznlVar.t();
                    zznlVar.v();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        zznl zznlVar2 = this.zzb.d;
        ScheduledExecutorService scheduledExecutorService = zznlVar2.g;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
            zznlVar2.g = null;
        }
    }
}
