package com.google.android.gms.measurement.internal;

import android.os.SystemClock;
import android.text.TextUtils;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzkh implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzlj zzb;

    public zzkh(zzlj zzljVar, long j2) {
        this.zza = j2;
        Objects.requireNonNull(zzljVar);
        this.zzb = zzljVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzlj zzljVar = this.zzb;
        zzljVar.g();
        zzljVar.h();
        zzic zzicVar = zzljVar.f31850a;
        zzgu zzguVar = zzicVar.f31842f;
        zzic.m(zzguVar);
        zzguVar.m.a("Resetting analytics data (FE)");
        zzoc zzocVar = zzicVar.f31843h;
        zzic.l(zzocVar);
        zzocVar.g();
        zzoa zzoaVar = zzocVar.f31938f;
        zzoaVar.f31934c.c();
        zzoaVar.d.f31850a.f31846k.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        zzoaVar.f31932a = jElapsedRealtime;
        zzoaVar.f31933b = jElapsedRealtime;
        zzicVar.r().l();
        boolean z = !zzicVar.f();
        zzhh zzhhVar = zzicVar.f31841e;
        zzic.k(zzhhVar);
        zzhhVar.f31810f.b(this.zza);
        zzic zzicVar2 = zzhhVar.f31850a;
        zzhh zzhhVar2 = zzicVar2.f31841e;
        zzic.k(zzhhVar2);
        if (!TextUtils.isEmpty(zzhhVar2.v.a())) {
            zzhhVar.v.b(null);
        }
        zzhhVar.p.b(0L);
        zzhhVar.q.b(0L);
        if (!zzicVar2.d.u()) {
            zzhhVar.o(z);
        }
        zzhhVar.w.b(null);
        zzhhVar.x.b(0L);
        zzhhVar.y.b(null);
        zznl zznlVarP = zzicVar.p();
        zznlVarP.g();
        zznlVarP.h();
        zzr zzrVarW = zznlVarP.w(false);
        zznlVarP.s();
        zznlVarP.f31850a.o().k();
        zznlVarP.u(new zzmh(zznlVarP, zzrVarW));
        zzic.l(zzocVar);
        zzocVar.f31937e.a();
        zzljVar.r = z;
        zzicVar.p().k(new AtomicReference());
    }
}
