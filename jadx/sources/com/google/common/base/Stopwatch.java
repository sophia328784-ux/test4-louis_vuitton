package com.google.common.base;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.a61;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public final class Stopwatch {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Ticker f33497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f33498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f33499c;
    public long d;

    /* JADX INFO: renamed from: com.google.common.base.Stopwatch$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f33500a;

        static {
            int[] iArr = new int[TimeUnit.values().length];
            f33500a = iArr;
            try {
                iArr[TimeUnit.NANOSECONDS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f33500a[TimeUnit.MICROSECONDS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f33500a[TimeUnit.MILLISECONDS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f33500a[TimeUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f33500a[TimeUnit.MINUTES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f33500a[TimeUnit.HOURS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f33500a[TimeUnit.DAYS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public Stopwatch(Ticker ticker) {
        Preconditions.m(ticker, "ticker");
        this.f33497a = ticker;
    }

    public final void a() {
        Preconditions.p("This stopwatch is already running.", !this.f33498b);
        this.f33498b = true;
        this.d = this.f33497a.a();
    }

    public final String toString() {
        TimeUnit timeUnit;
        String str;
        long jA = this.f33498b ? (this.f33497a.a() - this.d) + this.f33499c : this.f33499c;
        long j2 = jA / 86400000000000L;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        if (j2 > 0) {
            timeUnit = TimeUnit.DAYS;
        } else if (jA / 3600000000000L > 0) {
            timeUnit = TimeUnit.HOURS;
        } else if (jA / 60000000000L > 0) {
            timeUnit = TimeUnit.MINUTES;
        } else if (jA / 1000000000 > 0) {
            timeUnit = TimeUnit.SECONDS;
        } else if (jA / 1000000 > 0) {
            timeUnit = TimeUnit.MILLISECONDS;
        } else {
            timeUnit = jA / 1000 > 0 ? TimeUnit.MICROSECONDS : timeUnit2;
        }
        double dConvert = jA / timeUnit2.convert(1L, timeUnit);
        StringBuilder sb = new StringBuilder();
        sb.append(String.format(Locale.ROOT, "%.4g", Double.valueOf(dConvert)));
        sb.append(" ");
        switch (AnonymousClass1.f33500a[timeUnit.ordinal()]) {
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

    public Stopwatch() {
        this.f33497a = Ticker.f33507a;
    }
}
