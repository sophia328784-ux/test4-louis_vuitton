package com.google.android.gms.measurement.internal;

import android.content.Context;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zznx implements Runnable {
    final long zza;
    final long zzb;
    final /* synthetic */ zzny zzc;

    public zznx(zzny zznyVar, long j2, long j3) {
        Objects.requireNonNull(zznyVar);
        this.zzc = zznyVar;
        this.zza = j2;
        this.zzb = j3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzhz zzhzVar = this.zzc.f31930b.f31850a.g;
        zzic.m(zzhzVar);
        zzhzVar.p(new Runnable() { // from class: com.google.android.gms.measurement.internal.zznw
            /* JADX WARN: Code duplicated, block: B:10:0x007c  */
            @Override // java.lang.Runnable
            public final void run() {
                zznx zznxVar = this.zza;
                zzoc zzocVar = zznxVar.zzc.f31930b;
                zzocVar.g();
                zzic zzicVar = zzocVar.f31850a;
                zzgu zzguVar = zzicVar.f31842f;
                Context context = zzicVar.f31838a;
                zzic.m(zzguVar);
                zzguVar.m.a("Application going to the background");
                zzhh zzhhVar = zzicVar.f31841e;
                zzic.k(zzhhVar);
                zzhhVar.s.b(true);
                zzocVar.g();
                zzocVar.d = true;
                zzal zzalVar = zzicVar.d;
                if (!zzalVar.v()) {
                    long j2 = zznxVar.zzb;
                    zzoa zzoaVar = zzocVar.f31938f;
                    zzoaVar.a(false, false, j2);
                    zzoaVar.f31934c.c();
                }
                long j3 = zznxVar.zza;
                zzic.m(zzguVar);
                zzguVar.l.b(Long.valueOf(j3), "Application backgrounded at: timestamp_millis");
                zzlj zzljVar = zzicVar.m;
                zzic.l(zzljVar);
                zzljVar.g();
                zzic zzicVar2 = zzljVar.f31850a;
                zzljVar.h();
                zznl zznlVarP = zzicVar2.p();
                zznlVarP.g();
                zznlVarP.h();
                if (zznlVarP.n()) {
                    zzpp zzppVar = zznlVarP.f31850a.f31844i;
                    zzic.k(zzppVar);
                    if (zzppVar.R() >= 242600) {
                        zznl zznlVarP2 = zzicVar2.p();
                        zznlVarP2.g();
                        zznlVarP2.h();
                        zznlVarP2.u(new zzml(zznlVarP2, zznlVarP2.w(true)));
                    }
                } else {
                    zznl zznlVarP3 = zzicVar2.p();
                    zznlVarP3.g();
                    zznlVarP3.h();
                    zznlVarP3.u(new zzml(zznlVarP3, zznlVarP3.w(true)));
                }
                if (zzalVar.r(null, zzfy.N0)) {
                    zzpp zzppVar2 = zzicVar.f31844i;
                    zzic.k(zzppVar2);
                    long jO = zzppVar2.L(context.getPackageName(), zzalVar.f31553c) ? 1000L : zzalVar.o(context.getPackageName(), zzfy.E);
                    zzic.m(zzguVar);
                    zzguVar.n.b(Long.valueOf(jO), "[sgtm] Scheduling batch upload with minimum latency in millis");
                    zzic.j(zzicVar.u);
                    zzicVar.u.k(jO);
                }
            }
        });
    }
}
