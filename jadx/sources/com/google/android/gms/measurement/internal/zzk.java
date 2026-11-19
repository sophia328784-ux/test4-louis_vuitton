package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzk implements Runnable {
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcs zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ boolean zzd;
    final /* synthetic */ AppMeasurementDynamiteService zze;

    public zzk(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcs zzcsVar, String str, String str2, boolean z) {
        this.zza = zzcsVar;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = z;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.zze = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVarP = this.zze.f31529a.p();
        com.google.android.gms.internal.measurement.zzcs zzcsVar = this.zza;
        String str = this.zzb;
        String str2 = this.zzc;
        boolean z = this.zzd;
        zznlVarP.g();
        zznlVarP.h();
        zznlVarP.u(new zzmc(zznlVarP, str, str2, zznlVarP.w(false), z, zzcsVar));
    }
}
