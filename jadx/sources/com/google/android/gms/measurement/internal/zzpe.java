package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.DefaultClock;

/* JADX INFO: loaded from: classes2.dex */
final class zzpe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzpg f31976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f31977b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f31978c = a();

    public zzpe(zzpg zzpgVar) {
        this.f31976a = zzpgVar;
    }

    public final long a() {
        zzpg zzpgVar = this.f31976a;
        Preconditions.h(zzpgVar);
        long jLongValue = ((Long) zzfy.v.a(null)).longValue();
        long jLongValue2 = ((Long) zzfy.w.a(null)).longValue();
        for (int i2 = 1; i2 < this.f31977b; i2++) {
            jLongValue += jLongValue;
            if (jLongValue >= jLongValue2) {
                break;
            }
        }
        ((DefaultClock) zzpgVar.e()).getClass();
        return Math.min(jLongValue, jLongValue2) + System.currentTimeMillis();
    }
}
