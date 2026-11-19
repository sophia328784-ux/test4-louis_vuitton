package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzmp implements Runnable {
    final /* synthetic */ zzbh zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcs zzc;
    final /* synthetic */ zznl zzd;

    public zzmp(zznl zznlVar, zzbh zzbhVar, String str, com.google.android.gms.internal.measurement.zzcs zzcsVar) {
        this.zza = zzbhVar;
        this.zzb = str;
        this.zzc = zzcsVar;
        Objects.requireNonNull(zznlVar);
        this.zzd = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.internal.measurement.zzcs zzcsVar;
        zzpp zzppVar;
        byte[] bArrK = null;
        try {
            try {
                zznl zznlVar = this.zzd;
                zzgb zzgbVar = zznlVar.d;
                if (zzgbVar == null) {
                    zzic zzicVar = zznlVar.f31850a;
                    zzgu zzguVar = zzicVar.f31842f;
                    zzic.m(zzguVar);
                    zzguVar.f31769f.a("Discarding data. Failed to send event to service to bundle");
                    zzppVar = zzicVar.f31844i;
                    zzic.k(zzppVar);
                    zzcsVar = this.zzc;
                } else {
                    bArrK = zzgbVar.K(this.zza, this.zzb);
                    zznlVar.t();
                    zznl zznlVar2 = this.zzd;
                    zzcsVar = this.zzc;
                    zzppVar = zznlVar2.f31850a.f31844i;
                    zzic.k(zzppVar);
                }
            } catch (RemoteException e2) {
                zzgu zzguVar2 = this.zzd.f31850a.f31842f;
                zzic.m(zzguVar2);
                zzguVar2.f31769f.b(e2, "Failed to send event to the service to bundle");
            }
            zzppVar.W(zzcsVar, bArrK);
        } catch (Throwable th) {
            zznl zznlVar3 = this.zzd;
            com.google.android.gms.internal.measurement.zzcs zzcsVar2 = this.zzc;
            zzpp zzppVar2 = zznlVar3.f31850a.f31844i;
            zzic.k(zzppVar2);
            zzppVar2.W(zzcsVar2, null);
            throw th;
        }
    }
}
