package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzka implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzlj zzb;

    public zzka(zzlj zzljVar, long j2) {
        this.zza = j2;
        Objects.requireNonNull(zzljVar);
        this.zzb = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzic zzicVar = this.zzb.f31850a;
        zzhh zzhhVar = zzicVar.f31841e;
        zzic.k(zzhhVar);
        zzhe zzheVar = zzhhVar.f31814k;
        long j2 = this.zza;
        zzheVar.b(j2);
        zzgu zzguVar = zzicVar.f31842f;
        zzic.m(zzguVar);
        zzguVar.m.b(Long.valueOf(j2), "Session timeout duration set");
    }
}
