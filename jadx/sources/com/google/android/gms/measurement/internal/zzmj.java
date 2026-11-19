package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzmj implements Runnable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcs zzb;
    final /* synthetic */ zznl zzc;

    public zzmj(zznl zznlVar, zzr zzrVar, com.google.android.gms.internal.measurement.zzcs zzcsVar) {
        this.zza = zzrVar;
        this.zzb = zzcsVar;
        Objects.requireNonNull(zznlVar);
        this.zzc = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.internal.measurement.zzcs zzcsVar;
        zzpp zzppVar;
        String strB0 = null;
        try {
            try {
                zznl zznlVar = this.zzc;
                zzic zzicVar = zznlVar.f31850a;
                zzhh zzhhVar = zzicVar.f31841e;
                zzgu zzguVar = zzicVar.f31842f;
                zzic.k(zzhhVar);
                if (zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
                    zzgb zzgbVar = zznlVar.d;
                    if (zzgbVar != null) {
                        zzr zzrVar = this.zza;
                        Preconditions.h(zzrVar);
                        strB0 = zzgbVar.B0(zzrVar);
                        if (strB0 != null) {
                            zzlj zzljVar = zzicVar.m;
                            zzic.l(zzljVar);
                            zzljVar.g.set(strB0);
                            zzic.k(zzhhVar);
                            zzhhVar.g.b(strB0);
                        }
                        zznlVar.t();
                        zznl zznlVar2 = this.zzc;
                        zzcsVar = this.zzb;
                        zzppVar = zznlVar2.f31850a.f31844i;
                        zzic.k(zzppVar);
                        zzppVar.T(strB0, zzcsVar);
                    }
                    zzic.m(zzguVar);
                    zzguVar.f31769f.a("Failed to get app instance id");
                } else {
                    zzic.m(zzguVar);
                    zzguVar.f31773k.a("Analytics storage consent denied; will not get app instance id");
                    zzlj zzljVar2 = zzicVar.m;
                    zzic.l(zzljVar2);
                    zzljVar2.g.set(null);
                    zzic.k(zzhhVar);
                    zzhhVar.g.b(null);
                }
                zzppVar = zzicVar.f31844i;
                zzic.k(zzppVar);
                zzcsVar = this.zzb;
            } catch (RemoteException e2) {
                zzgu zzguVar2 = this.zzc.f31850a.f31842f;
                zzic.m(zzguVar2);
                zzguVar2.f31769f.b(e2, "Failed to get app instance id");
            }
            zzppVar.T(strB0, zzcsVar);
        } catch (Throwable th) {
            zznl zznlVar3 = this.zzc;
            com.google.android.gms.internal.measurement.zzcs zzcsVar2 = this.zzb;
            zzpp zzppVar2 = zznlVar3.f31850a.f31844i;
            zzic.k(zzppVar2);
            zzppVar2.T(null, zzcsVar2);
            throw th;
        }
    }
}
