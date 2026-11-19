package com.google.android.gms.common.util;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public class DefaultClock implements Clock {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DefaultClock f29336a = new DefaultClock();

    @Override // com.google.android.gms.common.util.Clock
    public final long a() {
        return System.currentTimeMillis();
    }

    @Override // com.google.android.gms.common.util.Clock
    public final long b() {
        return SystemClock.elapsedRealtime();
    }
}
