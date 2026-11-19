package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzig implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ zzjd zze;

    public zzig(zzjd zzjdVar, String str, String str2, String str3, long j2) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = j2;
        Objects.requireNonNull(zzjdVar);
        this.zze = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str = this.zza;
        if (str == null) {
            zzjd zzjdVar = this.zze;
            String str2 = this.zzb;
            zzpg zzpgVar = zzjdVar.f31847a;
            zzpgVar.c().g();
            String str3 = zzpgVar.G;
            if (str3 == null || str3.equals(str2)) {
                zzpgVar.G = str2;
                zzpgVar.F = null;
                return;
            }
            return;
        }
        zzlu zzluVar = new zzlu(this.zzc, str, this.zzd);
        zzjd zzjdVar2 = this.zze;
        String str4 = this.zzb;
        zzpg zzpgVar2 = zzjdVar2.f31847a;
        zzpgVar2.c().g();
        String str5 = zzpgVar2.G;
        if (str5 != null) {
            str5.equals(str4);
        }
        zzpgVar2.G = str4;
        zzpgVar2.F = zzluVar;
    }
}
