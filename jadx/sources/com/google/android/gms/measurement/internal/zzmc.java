package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzmc implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzr zzc;
    final /* synthetic */ boolean zzd;
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcs zze;
    final /* synthetic */ zznl zzf;

    public zzmc(zznl zznlVar, String str, String str2, zzr zzrVar, boolean z, com.google.android.gms.internal.measurement.zzcs zzcsVar) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzrVar;
        this.zzd = z;
        this.zze = zzcsVar;
        Objects.requireNonNull(zznlVar);
        this.zzf = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        Bundle bundle;
        RemoteException e2;
        Bundle bundle2 = new Bundle();
        try {
            try {
                zznl zznlVar = this.zzf;
                zzgb zzgbVar = zznlVar.d;
                zzic zzicVar = zznlVar.f31850a;
                if (zzgbVar == null) {
                    zzgu zzguVar = zzicVar.f31842f;
                    zzic.m(zzguVar);
                    zzguVar.f31769f.c("Failed to get user properties; not connected to service", this.zza, this.zzb);
                    zzpp zzppVar = zzicVar.f31844i;
                    zzic.k(zzppVar);
                    zzppVar.Y(this.zze, bundle2);
                    return;
                }
                zzr zzrVar = this.zzc;
                Preconditions.h(zzrVar);
                List<zzpl> listR2 = zzgbVar.r2(this.zza, this.zzb, this.zzd, zzrVar);
                bundle = new Bundle();
                if (listR2 != null) {
                    for (zzpl zzplVar : listR2) {
                        String str = zzplVar.f32002f;
                        String str2 = zzplVar.f32000c;
                        if (str != null) {
                            bundle.putString(str2, str);
                        } else {
                            Long l = zzplVar.f32001e;
                            if (l != null) {
                                bundle.putLong(str2, l.longValue());
                            } else {
                                Double d = zzplVar.f32003h;
                                if (d != null) {
                                    bundle.putDouble(str2, d.doubleValue());
                                }
                            }
                        }
                    }
                }
                try {
                    zznlVar.t();
                    com.google.android.gms.internal.measurement.zzcs zzcsVar = this.zze;
                    zzpp zzppVar2 = zzicVar.f31844i;
                    zzic.k(zzppVar2);
                    zzppVar2.Y(zzcsVar, bundle);
                } catch (RemoteException e3) {
                    e2 = e3;
                    zzgu zzguVar2 = this.zzf.f31850a.f31842f;
                    zzic.m(zzguVar2);
                    zzguVar2.f31769f.c("Failed to get user properties; remote exception", this.zza, e2);
                    zznl zznlVar2 = this.zzf;
                    com.google.android.gms.internal.measurement.zzcs zzcsVar2 = this.zze;
                    zzpp zzppVar3 = zznlVar2.f31850a.f31844i;
                    zzic.k(zzppVar3);
                    zzppVar3.Y(zzcsVar2, bundle);
                }
            } catch (Throwable th) {
                th = th;
                bundle2 = bundle;
                zznl zznlVar3 = this.zzf;
                com.google.android.gms.internal.measurement.zzcs zzcsVar3 = this.zze;
                zzpp zzppVar4 = zznlVar3.f31850a.f31844i;
                zzic.k(zzppVar4);
                zzppVar4.Y(zzcsVar3, bundle2);
                throw th;
            }
        } catch (RemoteException e4) {
            bundle = bundle2;
            e2 = e4;
        } catch (Throwable th2) {
            th = th2;
            zznl zznlVar4 = this.zzf;
            com.google.android.gms.internal.measurement.zzcs zzcsVar4 = this.zze;
            zzpp zzppVar5 = zznlVar4.f31850a.f31844i;
            zzic.k(zzppVar5);
            zzppVar5.Y(zzcsVar4, bundle2);
            throw th;
        }
    }
}
