package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzj implements Runnable {
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcs zza;
    final /* synthetic */ zzbh zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ AppMeasurementDynamiteService zzd;

    public zzj(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcs zzcsVar, zzbh zzbhVar, String str) {
        this.zza = zzcsVar;
        this.zzb = zzbhVar;
        this.zzc = str;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.zzd = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVarP = this.zzd.f31529a.p();
        com.google.android.gms.internal.measurement.zzcs zzcsVar = this.zza;
        zzbh zzbhVar = this.zzb;
        String str = this.zzc;
        zznlVarP.g();
        zznlVarP.h();
        zzic zzicVar = zznlVarP.f31850a;
        zzpp zzppVar = zzicVar.f31844i;
        zzic.k(zzppVar);
        if (GoogleApiAvailabilityLight.f28964b.b(zzppVar.f31850a.f31838a, 12451000) == 0) {
            zznlVarP.u(new zzmp(zznlVarP, zzbhVar, str, zzcsVar));
            return;
        }
        zzgu zzguVar = zzicVar.f31842f;
        zzic.m(zzguVar);
        zzguVar.f31771i.a("Not bundling data. Service unavailable or out of date");
        zzpp zzppVar2 = zzicVar.f31844i;
        zzic.k(zzppVar2);
        zzppVar2.W(zzcsVar, new byte[0]);
    }
}
