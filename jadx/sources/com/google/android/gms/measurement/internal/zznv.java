package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zznv implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzoc zzb;

    public zznv(zzoc zzocVar, long j2) {
        this.zza = j2;
        Objects.requireNonNull(zzocVar);
        this.zzb = zzocVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzoc zzocVar = this.zzb;
        long j2 = this.zza;
        zzocVar.g();
        zzocVar.k();
        zzic zzicVar = zzocVar.f31850a;
        zzgu zzguVar = zzicVar.f31842f;
        zzic.m(zzguVar);
        zzguVar.n.b(Long.valueOf(j2), "Activity paused, time");
        zzny zznyVar = zzocVar.g;
        zzoc zzocVar2 = zznyVar.f31930b;
        zzocVar2.f31850a.f31846k.getClass();
        zznx zznxVar = new zznx(zznyVar, System.currentTimeMillis(), j2);
        zznyVar.f31929a = zznxVar;
        zzocVar2.f31936c.postDelayed(zznxVar, 2000L);
        if (zzicVar.d.v()) {
            zzocVar.f31938f.f31934c.c();
        }
    }
}
