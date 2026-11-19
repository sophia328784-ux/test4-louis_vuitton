package com.dynatrace.android.agent;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceStartTimeProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f27303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f27304b;

    public DeviceStartTimeProvider(long j2, long j3, long j4) {
        this.f27303a = j2 - j3;
        this.f27304b = TimeUnit.MILLISECONDS.toNanos(j2) - j4;
    }
}
