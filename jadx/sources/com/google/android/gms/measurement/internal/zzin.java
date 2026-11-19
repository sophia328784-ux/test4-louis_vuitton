package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzin implements Runnable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ zzjd zzb;

    public zzin(zzjd zzjdVar, zzr zzrVar) {
        this.zza = zzrVar;
        Objects.requireNonNull(zzjdVar);
        this.zzb = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjd zzjdVar = this.zzb;
        zzjdVar.f31847a.W();
        zzpg zzpgVar = zzjdVar.f31847a;
        zzpgVar.c().g();
        zzpgVar.m0();
        zzr zzrVar = this.zza;
        Preconditions.e(zzrVar.f32016b);
        zzpgVar.d0(zzrVar);
    }
}
