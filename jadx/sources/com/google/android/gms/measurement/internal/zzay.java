package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzay implements Runnable {
    final /* synthetic */ zzjg zza;
    final /* synthetic */ zzaz zzb;

    public zzay(zzaz zzazVar, zzjg zzjgVar) {
        this.zza = zzjgVar;
        Objects.requireNonNull(zzazVar);
        this.zzb = zzazVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjg zzjgVar = this.zza;
        zzjgVar.a();
        if (zzae.a()) {
            zzjgVar.c().p(this);
            return;
        }
        zzaz zzazVar = this.zzb;
        boolean z = zzazVar.f31580c != 0;
        zzazVar.f31580c = 0L;
        if (z) {
            zzazVar.a();
        }
    }
}
