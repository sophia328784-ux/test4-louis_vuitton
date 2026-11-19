package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzmt implements Runnable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzbh zzc;
    final /* synthetic */ zznl zzd;

    public zzmt(zznl zznlVar, boolean z, zzr zzrVar, boolean z2, zzbh zzbhVar, String str) {
        this.zza = zzrVar;
        this.zzb = z2;
        this.zzc = zzbhVar;
        Objects.requireNonNull(zznlVar);
        this.zzd = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        zznl zznlVar = this.zzd;
        zzgb zzgbVar = zznlVar.d;
        if (zzgbVar == null) {
            zzgu zzguVar = zznlVar.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Discarding data. Failed to send event to service");
        } else {
            zzr zzrVar = this.zza;
            Preconditions.h(zzrVar);
            zznlVar.y(zzgbVar, this.zzb ? null : this.zzc, zzrVar);
            zznlVar.t();
        }
    }
}
