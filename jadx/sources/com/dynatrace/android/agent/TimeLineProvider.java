package com.dynatrace.android.agent;

import android.os.SystemClock;

/* JADX INFO: loaded from: classes2.dex */
public class TimeLineProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final DeviceStartTimeProvider f27310b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final TimeLineProvider f27311c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DeviceStartTimeProvider f27312a;

    static {
        DeviceStartTimeProvider deviceStartTimeProvider = new DeviceStartTimeProvider(System.currentTimeMillis(), SystemClock.elapsedRealtime(), SystemClock.elapsedRealtimeNanos());
        f27310b = deviceStartTimeProvider;
        f27311c = new TimeLineProvider(deviceStartTimeProvider);
    }

    public TimeLineProvider(DeviceStartTimeProvider deviceStartTimeProvider) {
        this.f27312a = deviceStartTimeProvider;
    }

    public final long a() {
        return SystemClock.elapsedRealtime() + this.f27312a.f27303a;
    }
}
