package com.google.android.gms.measurement.internal;

import android.os.SystemClock;
import com.google.android.gms.common.util.DefaultClock;

/* JADX INFO: loaded from: classes2.dex */
final class zzpd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f31974a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f31975b;

    public zzpd(zzpg zzpgVar, String str) {
        this.f31974a = str;
        ((DefaultClock) zzpgVar.e()).getClass();
        this.f31975b = SystemClock.elapsedRealtime();
    }
}
