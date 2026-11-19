package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzmo implements Runnable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ zzbf zzc;
    final /* synthetic */ Bundle zzd;
    final /* synthetic */ zznl zze;

    public zzmo(zznl zznlVar, boolean z, zzr zzrVar, boolean z2, zzbf zzbfVar, Bundle bundle) {
        this.zza = zzrVar;
        this.zzb = z2;
        this.zzc = zzbfVar;
        this.zzd = bundle;
        Objects.requireNonNull(zznlVar);
        this.zze = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        zznl zznlVar = this.zze;
        zzgb zzgbVar = zznlVar.d;
        zzic zzicVar = zznlVar.f31850a;
        if (zzgbVar == null) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Failed to send default event parameters to service");
            return;
        }
        boolean zR = zzicVar.d.r(null, zzfy.W0);
        zzr zzrVar = this.zza;
        if (zR) {
            Preconditions.h(zzrVar);
            zznlVar.y(zzgbVar, this.zzb ? null : this.zzc, zzrVar);
            return;
        }
        try {
            Preconditions.h(zzrVar);
            zzgbVar.S1(this.zzd, zzrVar);
            zznlVar.t();
        } catch (RemoteException e2) {
            zzgu zzguVar2 = this.zze.f31850a.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31769f.b(e2, "Failed to send default event parameters to service");
        }
    }
}
