package com.google.android.gms.measurement.internal;

import android.os.SystemClock;
import com.google.android.gms.common.util.DefaultClock;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zznu implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzoc zzb;

    public zznu(zzoc zzocVar, long j2) {
        this.zza = j2;
        Objects.requireNonNull(zzocVar);
        this.zzb = zzocVar;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0055  */
    @Override // java.lang.Runnable
    public final void run() {
        long jElapsedRealtime;
        zzoc zzocVar = this.zzb;
        long j2 = this.zza;
        zzoa zzoaVar = zzocVar.f31938f;
        zzocVar.g();
        zzocVar.k();
        zzic zzicVar = zzocVar.f31850a;
        zzgu zzguVar = zzicVar.f31842f;
        zzic.m(zzguVar);
        zzguVar.n.b(Long.valueOf(j2), "Activity resumed, time");
        zzal zzalVar = zzicVar.d;
        if (zzalVar.r(null, zzfy.S0)) {
            if (zzalVar.v() || zzocVar.d) {
                zzoaVar.d.g();
                zzoaVar.f31934c.c();
                zzoaVar.f31932a = j2;
                zzoaVar.f31933b = j2;
            }
        } else if (zzalVar.v()) {
            zzoaVar.d.g();
            zzoaVar.f31934c.c();
            zzoaVar.f31932a = j2;
            zzoaVar.f31933b = j2;
        } else {
            zzhh zzhhVar = zzicVar.f31841e;
            zzic.k(zzhhVar);
            if (zzhhVar.s.a()) {
                zzoaVar.d.g();
                zzoaVar.f31934c.c();
                zzoaVar.f31932a = j2;
                zzoaVar.f31933b = j2;
            }
        }
        zzny zznyVar = zzocVar.g;
        zzoc zzocVar2 = zznyVar.f31930b;
        zzocVar2.g();
        zznx zznxVar = zznyVar.f31929a;
        if (zznxVar != null) {
            zzocVar2.f31936c.removeCallbacks(zznxVar);
        }
        zzhh zzhhVar2 = zzocVar2.f31850a.f31841e;
        zzic.k(zzhhVar2);
        zzhhVar2.s.b(false);
        zzocVar2.g();
        zzocVar2.d = false;
        zzob zzobVar = zzocVar.f31937e;
        zzoc zzocVar3 = zzobVar.f31935a;
        zzocVar3.g();
        zzic zzicVar2 = zzocVar3.f31850a;
        boolean zF = zzicVar2.f();
        DefaultClock defaultClock = zzicVar2.f31846k;
        if (zF) {
            defaultClock.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (zzicVar2.d.r(null, zzfy.e1)) {
                defaultClock.getClass();
                jElapsedRealtime = SystemClock.elapsedRealtime();
            } else {
                jElapsedRealtime = 0;
            }
            zzobVar.b(jCurrentTimeMillis, jElapsedRealtime);
        }
    }
}
