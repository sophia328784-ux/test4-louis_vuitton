package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zziu implements Runnable {
    final /* synthetic */ zzpl zza;
    final /* synthetic */ zzr zzb;
    final /* synthetic */ zzjd zzc;

    public zziu(zzjd zzjdVar, zzpl zzplVar, zzr zzrVar) {
        this.zza = zzplVar;
        this.zzb = zzrVar;
        Objects.requireNonNull(zzjdVar);
        this.zzc = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpg zzpgVar = this.zzc.f31847a;
        zzpgVar.W();
        zzpl zzplVar = this.zza;
        Object objW1 = zzplVar.W1();
        zzr zzrVar = this.zzb;
        if (objW1 == null) {
            zzpgVar.Y(zzplVar.f32000c, zzrVar);
        } else {
            zzpgVar.X(zzplVar, zzrVar);
        }
    }
}
