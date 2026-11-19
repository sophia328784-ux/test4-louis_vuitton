package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
final class zzid implements Callable {
    final /* synthetic */ String zza;
    final /* synthetic */ zzjd zzb;

    public zzid(zzjd zzjdVar, String str) {
        this.zza = str;
        Objects.requireNonNull(zzjdVar);
        this.zzb = zzjdVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws Exception {
        zzjd zzjdVar = this.zzb;
        zzjdVar.f31847a.W();
        zzaw zzawVar = zzjdVar.f31847a.f31982c;
        zzpg.U(zzawVar);
        return zzawVar.d0(this.zza);
    }
}
