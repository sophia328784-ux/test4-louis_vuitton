package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
final class zzit implements Callable {
    final /* synthetic */ zzbh zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzjd zzc;

    public zzit(zzjd zzjdVar, zzbh zzbhVar, String str) {
        this.zza = zzbhVar;
        this.zzb = str;
        Objects.requireNonNull(zzjdVar);
        this.zzc = zzjdVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() throws Exception {
        zzjd zzjdVar = this.zzc;
        zzjdVar.f31847a.W();
        zzlp zzlpVar = zzjdVar.f31847a.f31985h;
        zzpg.U(zzlpVar);
        zzlpVar.g();
        throw new IllegalStateException("Unexpected call on client side");
    }
}
