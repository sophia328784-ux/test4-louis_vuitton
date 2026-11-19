package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.SystemClock;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzpa implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ Bundle zzc;
    final /* synthetic */ zzpb zzd;

    public zzpa(zzpb zzpbVar, String str, String str2, Bundle bundle) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = bundle;
        Objects.requireNonNull(zzpbVar);
        this.zzd = zzpbVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        long jElapsedRealtime;
        zzpg zzpgVar = this.zzd.f31969a;
        zzpp zzppVarL0 = zzpgVar.l0();
        ((DefaultClock) zzpgVar.e()).getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (zzpgVar.f0().r(null, zzfy.e1)) {
            ((DefaultClock) zzpgVar.e()).getClass();
            jElapsedRealtime = SystemClock.elapsedRealtime();
        } else {
            jElapsedRealtime = 0;
        }
        long j2 = jElapsedRealtime;
        Bundle bundle = this.zzc;
        String str = this.zzb;
        String str2 = this.zza;
        zzbh zzbhVarN = zzppVarL0.N(str, bundle, "auto", jCurrentTimeMillis, j2, false);
        Preconditions.h(zzbhVarN);
        zzpgVar.h(zzbhVarN, str2);
    }
}
