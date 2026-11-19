package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzm implements Runnable {
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcs zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ AppMeasurementDynamiteService zzd;

    public zzm(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.zzcs zzcsVar, String str, String str2) {
        this.zza = zzcsVar;
        this.zzb = str;
        this.zzc = str2;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.zzd = appMeasurementDynamiteService;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVarP = this.zzd.f31529a.p();
        com.google.android.gms.internal.measurement.zzcs zzcsVar = this.zza;
        String str = this.zzb;
        String str2 = this.zzc;
        zznlVarP.g();
        zznlVarP.h();
        zznlVarP.u(new zzmw(zznlVarP, str, str2, zznlVarP.w(false), zzcsVar));
    }
}
