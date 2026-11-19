package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzmn implements Runnable {
    final /* synthetic */ zzlu zza;
    final /* synthetic */ zznl zzb;

    public zzmn(zznl zznlVar, zzlu zzluVar) {
        this.zza = zzluVar;
        Objects.requireNonNull(zznlVar);
        this.zzb = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zznl zznlVar = this.zzb;
        zzgb zzgbVar = zznlVar.d;
        zzic zzicVar = zznlVar.f31850a;
        if (zzgbVar == null) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Failed to send current screen to service");
            return;
        }
        try {
            zzlu zzluVar = this.zza;
            if (zzluVar == null) {
                zzgbVar.f1(0L, null, null, zzicVar.f31838a.getPackageName());
            } else {
                zzgbVar.f1(zzluVar.f31897c, zzluVar.f31895a, zzluVar.f31896b, zzicVar.f31838a.getPackageName());
            }
            zznlVar.t();
        } catch (RemoteException e2) {
            zzgu zzguVar2 = this.zzb.f31850a.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31769f.b(e2, "Failed to send current screen to the service");
        }
    }
}
