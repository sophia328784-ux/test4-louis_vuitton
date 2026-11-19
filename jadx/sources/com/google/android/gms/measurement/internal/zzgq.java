package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.SystemClock;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.TelemetryLoggingOptions;
import com.google.android.gms.common.internal.service.zat;
import com.google.android.gms.tasks.OnFailureListener;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
public final class zzgq {
    public static zzgq d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzic f31760a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zat f31761b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicLong f31762c = new AtomicLong(-1);

    public zzgq(Context context, zzic zzicVar) {
        TelemetryLoggingOptions telemetryLoggingOptions = TelemetryLoggingOptions.f29211c;
        TelemetryLoggingOptions.Builder builder = new TelemetryLoggingOptions.Builder();
        builder.f29213a = "measurement:api";
        this.f31761b = new zat(context, new TelemetryLoggingOptions(builder.f29213a));
        this.f31760a = zzicVar;
    }

    public final synchronized void a(long j2, long j3, int i2, int i3) {
        this.f31760a.f31846k.getClass();
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        AtomicLong atomicLong = this.f31762c;
        if (atomicLong.get() != -1 && jElapsedRealtime - atomicLong.get() <= 1800000) {
            return;
        }
        this.f31761b.j(new TelemetryData(0, Arrays.asList(new MethodInvocation(36301, i2, 0, j2, j3, null, null, 0, i3)))).c(new OnFailureListener() { // from class: com.google.android.gms.measurement.internal.zzgp
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final /* synthetic */ void onFailure(Exception exc) {
                this.f31758b.f31762c.set(jElapsedRealtime);
            }
        });
    }
}
