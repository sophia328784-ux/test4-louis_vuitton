package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzkd implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ Object zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ zzlj zze;

    public zzkd(zzlj zzljVar, String str, String str2, Object obj, long j2) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = obj;
        this.zzd = j2;
        Objects.requireNonNull(zzljVar);
        this.zze = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlj zzljVar = this.zze;
        String str = this.zza;
        String str2 = this.zzb;
        zzljVar.r(this.zzd, this.zzc, str, str2);
    }
}
