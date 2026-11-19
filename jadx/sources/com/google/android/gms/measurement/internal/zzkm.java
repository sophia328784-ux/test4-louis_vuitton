package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzkm implements Runnable {
    final /* synthetic */ com.google.android.gms.internal.measurement.zzcs zza;
    final /* synthetic */ zzlj zzb;

    public zzkm(zzlj zzljVar, com.google.android.gms.internal.measurement.zzcs zzcsVar) {
        this.zza = zzcsVar;
        Objects.requireNonNull(zzljVar);
        this.zzb = zzljVar;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0054  */
    /* JADX WARN: Code duplicated, block: B:20:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    public final void run() {
        Long lValueOf;
        zzlj zzljVar = this.zzb;
        zzoc zzocVar = zzljVar.f31850a.f31843h;
        zzic.l(zzocVar);
        zzic zzicVar = zzocVar.f31850a;
        zzhh zzhhVar = zzicVar.f31841e;
        zzic.k(zzhhVar);
        if (zzhhVar.n().i(zzjk.ANALYTICS_STORAGE)) {
            zzic.k(zzhhVar);
            zzhe zzheVar = zzhhVar.q;
            zzicVar.f31846k.getClass();
            if (!zzhhVar.p(System.currentTimeMillis()) && zzheVar.a() != 0) {
                lValueOf = Long.valueOf(zzheVar.a());
            }
            if (lValueOf == null) {
                zzic zzicVar2 = zzljVar.f31850a;
                com.google.android.gms.internal.measurement.zzcs zzcsVar = this.zza;
                zzpp zzppVar = zzicVar2.f31844i;
                zzic.k(zzppVar);
                zzppVar.U(zzcsVar, lValueOf.longValue());
            }
            try {
                this.zza.V1(null);
                return;
            } catch (RemoteException e2) {
                zzgu zzguVar = this.zzb.f31850a.f31842f;
                zzic.m(zzguVar);
                zzguVar.f31769f.b(e2, "getSessionId failed with exception");
                return;
            }
        }
        zzgu zzguVar2 = zzicVar.f31842f;
        zzic.m(zzguVar2);
        zzguVar2.f31773k.a("Analytics storage consent denied; will not get session id");
        lValueOf = null;
        if (lValueOf == null) {
            this.zza.V1(null);
            return;
        }
        zzic zzicVar3 = zzljVar.f31850a;
        com.google.android.gms.internal.measurement.zzcs zzcsVar2 = this.zza;
        zzpp zzppVar2 = zzicVar3.f31844i;
        zzic.k(zzppVar2);
        zzppVar2.U(zzcsVar2, lValueOf.longValue());
    }
}
