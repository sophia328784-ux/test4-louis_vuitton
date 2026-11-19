package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzmw implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzr zzc;
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcs zzd;
    final /* synthetic */ zznl zze;

    public zzmw(zznl zznlVar, String str, String str2, zzr zzrVar, com.google.android.gms.internal.measurement.zzcs zzcsVar) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzrVar;
        this.zzd = zzcsVar;
        Objects.requireNonNull(zznlVar);
        this.zze = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.internal.measurement.zzcs zzcsVar;
        zzpp zzppVar;
        ArrayList arrayList = new ArrayList();
        try {
            try {
                zznl zznlVar = this.zze;
                zzgb zzgbVar = zznlVar.d;
                if (zzgbVar == null) {
                    zzic zzicVar = zznlVar.f31850a;
                    zzgu zzguVar = zzicVar.f31842f;
                    zzic.m(zzguVar);
                    zzguVar.f31769f.c("Failed to get conditional properties; not connected to service", this.zza, this.zzb);
                    zzppVar = zzicVar.f31844i;
                    zzic.k(zzppVar);
                    zzcsVar = this.zzd;
                } else {
                    zzr zzrVar = this.zzc;
                    Preconditions.h(zzrVar);
                    arrayList = zzpp.a0(zzgbVar.t2(this.zza, this.zzb, zzrVar));
                    zznlVar.t();
                    zznl zznlVar2 = this.zze;
                    zzcsVar = this.zzd;
                    zzppVar = zznlVar2.f31850a.f31844i;
                    zzic.k(zzppVar);
                }
            } catch (RemoteException e2) {
                zzgu zzguVar2 = this.zze.f31850a.f31842f;
                zzic.m(zzguVar2);
                zzguVar2.f31769f.d("Failed to get conditional properties; remote exception", this.zza, this.zzb, e2);
            }
            zzppVar.Z(zzcsVar, arrayList);
        } catch (Throwable th) {
            zznl zznlVar3 = this.zze;
            com.google.android.gms.internal.measurement.zzcs zzcsVar2 = this.zzd;
            zzpp zzppVar2 = zznlVar3.f31850a.f31844i;
            zzic.k(zzppVar2);
            zzppVar2.Z(zzcsVar2, arrayList);
            throw th;
        }
    }
}
