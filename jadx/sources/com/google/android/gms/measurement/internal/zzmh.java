package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzmh implements Runnable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ zznl zzb;

    public zzmh(zznl zznlVar, zzr zzrVar) {
        this.zza = zzrVar;
        Objects.requireNonNull(zznlVar);
        this.zzb = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVar = this.zzb;
        zzgb zzgbVar = zznlVar.d;
        if (zzgbVar == null) {
            zzgu zzguVar = zznlVar.f31850a.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            zzr zzrVar = this.zza;
            Preconditions.h(zzrVar);
            zzgbVar.g1(zzrVar);
        } catch (RemoteException e2) {
            zzgu zzguVar2 = this.zzb.f31850a.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31769f.b(e2, "Failed to reset data on the service: remote exception");
        }
        this.zzb.t();
    }
}
