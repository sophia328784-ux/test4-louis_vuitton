package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzmk implements Runnable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ zznl zzb;

    public zzmk(zznl zznlVar, zzr zzrVar, boolean z) {
        this.zza = zzrVar;
        Objects.requireNonNull(zznlVar);
        this.zzb = zznlVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        zznl zznlVar = this.zzb;
        zzgb zzgbVar = zznlVar.d;
        zzic zzicVar = zznlVar.f31850a;
        if (zzgbVar == null) {
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.f31769f.a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            zzr zzrVar = this.zza;
            Preconditions.h(zzrVar);
            zzal zzalVar = zzicVar.d;
            zzfx zzfxVar = zzfy.W0;
            if (zzalVar.r(null, zzfxVar)) {
                zznlVar.y(zzgbVar, null, zzrVar);
            }
            zzgbVar.d2(zzrVar);
            zzicVar.o().l();
            zzicVar.d.r(null, zzfxVar);
            zznlVar.y(zzgbVar, null, zzrVar);
            zznlVar.t();
        } catch (RemoteException e2) {
            zzgu zzguVar2 = this.zzb.f31850a.f31842f;
            zzic.m(zzguVar2);
            zzguVar2.f31769f.b(e2, "Failed to send app launch to the service");
        }
    }
}
