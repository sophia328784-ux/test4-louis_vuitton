package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzif implements Runnable {
    final /* synthetic */ zzr zza;
    final /* synthetic */ zzjd zzb;

    public zzif(zzjd zzjdVar, zzr zzrVar) {
        this.zza = zzrVar;
        Objects.requireNonNull(zzjdVar);
        this.zzb = zzjdVar;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        zzjd zzjdVar = this.zzb;
        zzjdVar.f31847a.W();
        zzpg zzpgVar = zzjdVar.f31847a;
        zzr zzrVar = this.zza;
        zzpgVar.c().g();
        zzpgVar.m0();
        Preconditions.h(zzrVar);
        String str = zzrVar.f32016b;
        Preconditions.e(str);
        int i2 = 0;
        if (zzpgVar.f0().r(null, zzfy.y0)) {
            ((DefaultClock) zzpgVar.e()).getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            int iP = zzpgVar.f0().p(null, zzfy.h0);
            zzpgVar.f0();
            long jLongValue = jCurrentTimeMillis - ((Long) zzfy.f31735e.a(null)).longValue();
            while (i2 < iP && zzpgVar.I(jLongValue, null)) {
                i2++;
            }
        } else {
            zzpgVar.f0();
            long jIntValue = ((Integer) zzfy.l.a(null)).intValue();
            while (i2 < jIntValue && zzpgVar.I(0L, str)) {
                i2++;
            }
        }
        if (zzpgVar.f0().r(null, zzfy.z0)) {
            zzpgVar.c().g();
            zzpgVar.H();
        }
        zzou zzouVar = zzpgVar.f31987j;
        com.google.android.gms.internal.measurement.zzin zzinVarA = com.google.android.gms.internal.measurement.zzin.a(zzrVar.F);
        zzouVar.g();
        if (zzinVarA != com.google.android.gms.internal.measurement.zzin.CLIENT_UPLOAD_ELIGIBLE || zzou.j(str)) {
            return;
        }
        zzht zzhtVar = zzouVar.f31948b.f31980a;
        zzpg.U(zzhtVar);
        com.google.android.gms.internal.measurement.zzgl zzglVarS = zzhtVar.s(str);
        if (zzglVarS == null || !zzglVarS.O() || zzglVarS.P().B().isEmpty()) {
            return;
        }
        zzpgVar.b().n.b(str, "[sgtm] Going background, trigger client side upload. appId");
        ((DefaultClock) zzpgVar.e()).getClass();
        zzpgVar.r(System.currentTimeMillis(), str);
    }
}
