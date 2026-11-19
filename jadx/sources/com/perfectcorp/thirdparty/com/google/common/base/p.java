package com.perfectcorp.thirdparty.com.google.common.base;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.a61;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f42106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f42107b;

    public final void a() {
        Preconditions.h("This stopwatch is already running.", !this.f42106a);
        this.f42106a = true;
        int i2 = g.f42098a;
        this.f42107b = System.nanoTime();
    }

    public final long b() {
        if (!this.f42106a) {
            return 0L;
        }
        int i2 = g.f42098a;
        return System.nanoTime() - this.f42107b;
    }

    public final String toString() {
        TimeUnit timeUnit;
        String str;
        long jB = b();
        long j2 = jB / 86400000000000L;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (j2 > 0) {
            timeUnit = TimeUnit.DAYS;
        } else if (jB / 3600000000000L > 0) {
            timeUnit = TimeUnit.HOURS;
        } else if (jB / 60000000000L > 0) {
            timeUnit = TimeUnit.MINUTES;
        } else if (jB / 1000000000 > 0) {
            timeUnit = TimeUnit.SECONDS;
        } else if (jB / 1000000 > 0) {
            timeUnit = TimeUnit.MILLISECONDS;
        } else {
            timeUnit = jB / 1000 > 0 ? TimeUnit.MICROSECONDS : timeUnit2;
        }
        double dConvert = jB / timeUnit2.convert(1L, timeUnit);
        StringBuilder sb = new StringBuilder();
        int i2 = g.f42098a;
        sb.append(String.format(Locale.ROOT, "%.4g", Double.valueOf(dConvert)));
        sb.append(" ");
        switch (q.f42108a[timeUnit.ordinal()]) {
            case 1:
                str = "ns";
                break;
            case 2:
                str = "μs";
                break;
            case 3:
                str = NBSSpanMetricUnit.Millisecond;
                break;
            case 4:
                str = NBSSpanMetricUnit.Second;
                break;
            case 5:
                str = "min";
                break;
            case 6:
                str = NBSSpanMetricUnit.Hour;
                break;
            case 7:
                str = NBSSpanMetricUnit.Day;
                break;
            default:
                a61.h();
                return null;
        }
        sb.append(str);
        return sb.toString();
    }
}
