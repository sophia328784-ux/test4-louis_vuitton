package com.google.android.gms.internal.measurement;

import android.os.SystemClock;
import com.google.common.base.Ticker;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzxh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Ticker f31063a;

    static {
        Ticker zzxgVar;
        try {
            SystemClock.elapsedRealtimeNanos();
            zzxgVar = new zzxf();
        } catch (Throwable unused) {
            SystemClock.elapsedRealtime();
            zzxgVar = new zzxg();
        }
        f31063a = zzxgVar;
    }
}
