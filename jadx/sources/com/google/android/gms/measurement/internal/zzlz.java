package com.google.android.gms.measurement.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzlz implements Runnable {
    final /* synthetic */ zzlu zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ zzmb zzc;

    public zzlz(zzmb zzmbVar, zzlu zzluVar, long j2) {
        this.zza = zzluVar;
        this.zzb = j2;
        Objects.requireNonNull(zzmbVar);
        this.zzc = zzmbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzmb zzmbVar = this.zzc;
        zzmbVar.p(this.zza, false, this.zzb);
        zzmbVar.f31901e = null;
        zznl zznlVarP = zzmbVar.f31850a.p();
        zznlVarP.g();
        zznlVarP.h();
        zznlVarP.u(new zzmn(zznlVarP, null));
    }
}
