package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzih implements Runnable {
    final /* synthetic */ zzah zza;
    final /* synthetic */ zzr zzb;
    final /* synthetic */ zzjd zzc;

    public zzih(zzjd zzjdVar, zzah zzahVar, zzr zzrVar) {
        this.zza = zzahVar;
        this.zzb = zzrVar;
        Objects.requireNonNull(zzjdVar);
        this.zzc = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzpg zzpgVar = this.zzc.f31847a;
        zzpgVar.W();
        zzah zzahVar = this.zza;
        Object objW1 = zzahVar.d.W1();
        zzr zzrVar = this.zzb;
        if (objW1 == null) {
            zzpgVar.b0(zzahVar, zzrVar);
        } else {
            zzpgVar.a0(zzahVar, zzrVar);
        }
    }
}
