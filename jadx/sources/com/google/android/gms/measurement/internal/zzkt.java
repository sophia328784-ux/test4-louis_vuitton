package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.RemoteException;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzkt implements Runnable {
    final /* synthetic */ zzba zza;
    final /* synthetic */ zzlj zzb;

    public zzkt(zzlj zzljVar, zzba zzbaVar) {
        this.zza = zzbaVar;
        Objects.requireNonNull(zzljVar);
        this.zzb = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlj zzljVar = this.zzb;
        zzic zzicVar = zzljVar.f31850a;
        zzhh zzhhVar = zzicVar.f31841e;
        zzgu zzguVar = zzicVar.f31842f;
        zzic.k(zzhhVar);
        zzhhVar.g();
        zzhhVar.g();
        zzba zzbaVarB = zzba.b(zzhhVar.k().getString("dma_consent_settings", null));
        zzba zzbaVar = this.zza;
        if (!zzjl.l(zzbaVar.f31582a, zzbaVarB.f31582a)) {
            zzic.m(zzguVar);
            zzguVar.l.b(Integer.valueOf(zzbaVar.f31582a), "Lower precedence consent source ignored, proposed source");
            return;
        }
        SharedPreferences.Editor editorEdit = zzhhVar.k().edit();
        editorEdit.putString("dma_consent_settings", zzbaVar.f31583b);
        editorEdit.apply();
        zzic.m(zzguVar);
        zzguVar.n.b(zzbaVar, "Setting DMA consent(FE)");
        zzic zzicVar2 = zzljVar.f31850a;
        if (zzicVar2.p().q()) {
            final zznl zznlVarP = zzicVar2.p();
            zznlVarP.g();
            zznlVarP.h();
            zznlVarP.u(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzng
                @Override // java.lang.Runnable
                public final void run() {
                    zznl zznlVar = zznlVarP;
                    zzic zzicVar3 = zznlVar.f31850a;
                    zzgb zzgbVar = zznlVar.d;
                    if (zzgbVar == null) {
                        zzgu zzguVar2 = zzicVar3.f31842f;
                        zzic.m(zzguVar2);
                        zzguVar2.f31769f.a("Failed to send Dma consent settings to service");
                        return;
                    }
                    try {
                        zzgbVar.X(zznlVar.w(false));
                        zznlVar.t();
                    } catch (RemoteException e2) {
                        zzgu zzguVar3 = zzicVar3.f31842f;
                        zzic.m(zzguVar3);
                        zzguVar3.f31769f.b(e2, "Failed to send Dma consent settings to the service");
                    }
                }
            });
            return;
        }
        zznl zznlVarP2 = zzicVar2.p();
        zznlVarP2.g();
        zznlVarP2.h();
        if (zznlVarP2.p()) {
            zznlVarP2.u(new zzms(zznlVarP2, zznlVarP2.w(false)));
        }
    }
}
