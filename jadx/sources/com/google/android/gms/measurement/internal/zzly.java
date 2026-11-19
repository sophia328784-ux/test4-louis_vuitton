package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzly implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzmb zzb;

    public zzly(zzmb zzmbVar, long j2) {
        this.zza = j2;
        Objects.requireNonNull(zzmbVar);
        this.zzb = zzmbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzmb zzmbVar = this.zzb;
        zzd zzdVar = zzmbVar.f31850a.n;
        zzic.j(zzdVar);
        zzdVar.j(this.zza);
        zzmbVar.f31901e = null;
    }
}
