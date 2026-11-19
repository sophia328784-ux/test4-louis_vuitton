package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.common.util.DefaultClock;

/* JADX INFO: loaded from: classes2.dex */
final class zzob {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzoc f31935a;

    public zzob(zzoc zzocVar) {
        this.f31935a = zzocVar;
    }

    public final void a() {
        long jElapsedRealtime;
        zzoc zzocVar = this.f31935a;
        zzocVar.g();
        zzic zzicVar = zzocVar.f31850a;
        zzhh zzhhVar = zzicVar.f31841e;
        zzic.k(zzhhVar);
        DefaultClock defaultClock = zzicVar.f31846k;
        defaultClock.getClass();
        if (zzhhVar.p(System.currentTimeMillis())) {
            zzhh zzhhVar2 = zzicVar.f31841e;
            zzic.k(zzhhVar2);
            zzhhVar2.l.b(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                zzgu zzguVar = zzicVar.f31842f;
                zzic.m(zzguVar);
                zzguVar.n.a("Detected application was in foreground");
                defaultClock.getClass();
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (zzicVar.d.r(null, zzfy.e1)) {
                    defaultClock.getClass();
                    jElapsedRealtime = SystemClock.elapsedRealtime();
                } else {
                    jElapsedRealtime = 0;
                }
                c(jCurrentTimeMillis, jElapsedRealtime);
            }
        }
    }

    public final void b(long j2, long j3) {
        zzoc zzocVar = this.f31935a;
        zzocVar.g();
        zzocVar.k();
        zzic zzicVar = zzocVar.f31850a;
        zzhh zzhhVar = zzicVar.f31841e;
        zzic.k(zzhhVar);
        if (zzhhVar.p(j2)) {
            zzic.k(zzhhVar);
            zzhhVar.l.b(true);
            zzicVar.r().l();
        }
        zzic.k(zzhhVar);
        zzhhVar.p.b(j2);
        if (zzhhVar.l.a()) {
            c(j2, j3);
        }
    }

    public final void c(long j2, long j3) {
        zzoc zzocVar = this.f31935a;
        zzocVar.g();
        zzic zzicVar = zzocVar.f31850a;
        if (zzicVar.f()) {
            zzhh zzhhVar = zzicVar.f31841e;
            zzic.k(zzhhVar);
            zzhhVar.p.b(j2);
            zzicVar.f31846k.getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            zzgu zzguVar = zzicVar.f31842f;
            zzic.m(zzguVar);
            zzguVar.n.b(Long.valueOf(jElapsedRealtime), "Session started, time");
            long j4 = j2 / 1000;
            Long lValueOf = Long.valueOf(j4);
            zzlj zzljVar = zzicVar.m;
            zzic.l(zzljVar);
            zzljVar.r(j2, lValueOf, "auto", "_sid");
            zzic.k(zzhhVar);
            zzhhVar.q.b(j4);
            zzhhVar.l.b(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", j4);
            zzic.l(zzljVar);
            zzljVar.o("auto", "_s", bundle, j2, j3);
            String strA = zzhhVar.v.a();
            if (TextUtils.isEmpty(strA)) {
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("_ffr", strA);
            zzic.l(zzljVar);
            zzljVar.o("auto", "_ssr", bundle2, j2, j3);
        }
    }
}
