package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzlv implements Runnable {
    final /* synthetic */ Bundle zza;
    final /* synthetic */ zzlu zzb;
    final /* synthetic */ zzlu zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ zzmb zze;

    public zzlv(zzmb zzmbVar, Bundle bundle, zzlu zzluVar, zzlu zzluVar2, long j2) {
        this.zza = bundle;
        this.zzb = zzluVar;
        this.zzc = zzluVar2;
        this.zzd = j2;
        Objects.requireNonNull(zzmbVar);
        this.zze = zzmbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Bundle bundle = this.zza;
        bundle.remove("screen_name");
        bundle.remove("screen_class");
        zzmb zzmbVar = this.zze;
        zzpp zzppVar = zzmbVar.f31850a.f31844i;
        zzic.k(zzppVar);
        zzmbVar.m(this.zzb, this.zzc, this.zzd, true, zzppVar.q("screen_view", bundle, null, false));
    }
}
