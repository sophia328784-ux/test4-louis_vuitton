package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
final class zzil implements Callable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzjd zzd;

    public zzil(zzjd zzjdVar, String str, String str2, String str3) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        Objects.requireNonNull(zzjdVar);
        this.zzd = zzjdVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws Exception {
        zzjd zzjdVar = this.zzd;
        zzjdVar.f31847a.W();
        zzaw zzawVar = zzjdVar.f31847a.f31982c;
        zzpg.U(zzawVar);
        return zzawVar.i0(this.zza, this.zzb, this.zzc);
    }
}
