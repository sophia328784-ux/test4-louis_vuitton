package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.SystemClock;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzoa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f31932a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f31933b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zznz f31934c;
    public final /* synthetic */ zzoc d;

    public zzoa(zzoc zzocVar) {
        Objects.requireNonNull(zzocVar);
        this.d = zzocVar;
        zzic zzicVar = zzocVar.f31850a;
        this.f31934c = new zznz(this, zzicVar);
        zzicVar.f31846k.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.f31932a = jElapsedRealtime;
        this.f31933b = jElapsedRealtime;
    }

    public final boolean a(boolean z, boolean z2, long j2) {
        zzoc zzocVar = this.d;
        zzocVar.g();
        zzocVar.h();
        zzic zzicVar = zzocVar.f31850a;
        boolean zF = zzicVar.f();
        zzgu zzguVar = zzicVar.f31842f;
        if (zF) {
            zzhh zzhhVar = zzicVar.f31841e;
            zzic.k(zzhhVar);
            zzhe zzheVar = zzhhVar.p;
            zzicVar.f31846k.getClass();
            zzheVar.b(System.currentTimeMillis());
        }
        long j3 = j2 - this.f31932a;
        if (!z && j3 < 1000) {
            zzic.m(zzguVar);
            zzguVar.n.b(Long.valueOf(j3), "Screen exposed for less than 1000 ms. Event not sent. time");
            return false;
        }
        if (!z2) {
            j3 = j2 - this.f31933b;
            this.f31933b = j2;
        }
        zzic.m(zzguVar);
        zzguVar.n.b(Long.valueOf(j3), "Recording user engagement, ms");
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j3);
        boolean z3 = !zzicVar.d.v();
        zzmb zzmbVar = zzicVar.l;
        zzic.l(zzmbVar);
        zzpp.c0(zzmbVar.k(z3), bundle, true);
        if (!z2) {
            zzlj zzljVar = zzicVar.m;
            zzic.l(zzljVar);
            zzljVar.n("auto", "_e", bundle);
        }
        this.f31932a = j2;
        zznz zznzVar = this.f31934c;
        zznzVar.c();
        zznzVar.b(((Long) zzfy.p0.a(null)).longValue());
        return true;
    }
}
