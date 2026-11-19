package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzmy implements Runnable {
    final /* synthetic */ zzgb zza;
    final /* synthetic */ zznf zzb;

    public zzmy(zznf zznfVar, zzgb zzgbVar) {
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
                    zzguVar.n.a("Connected to service");
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
    }
}
