package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
final class zziq implements Callable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ zzjd zzb;

    public zziq(zzjd zzjdVar, zzr zzrVar) {
        this.zza = zzrVar;
        Objects.requireNonNull(zzjdVar);
        this.zzb = zzjdVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() throws Exception {
        zzjd zzjdVar = this.zzb;
        zzjdVar.f31847a.W();
        return new zzao(zzjdVar.f31847a.q0(this.zza.f32016b));
    }
}
