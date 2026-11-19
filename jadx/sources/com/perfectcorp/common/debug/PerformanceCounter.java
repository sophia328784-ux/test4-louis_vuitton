package com.perfectcorp.common.debug;

import android.util.LogPrinter;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PerformanceCounter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final PerformanceCounter f39180b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Tracer f39181c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Reporter f39182a;

    /* JADX INFO: renamed from: com.perfectcorp.common.debug.PerformanceCounter$1, reason: invalid class name */
    class AnonymousClass1 extends PerformanceCounter {
        @Override // com.perfectcorp.common.debug.PerformanceCounter
        public final Tracer a() {
            return PerformanceCounter.f39181c;
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.common.debug.PerformanceCounter$2, reason: invalid class name */
    class AnonymousClass2 implements Tracer {
        @Override // com.perfectcorp.common.debug.PerformanceCounter.Tracer
        public final long J0() {
            return 0L;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
        }
    }

    public static class PrinterReporter implements Reporter {
    }

    public interface Reporter {
    }

    public interface Tracer extends AutoCloseable {
        long J0();
    }

    static {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        new LogPrinter(3, null);
        f39180b = anonymousClass1;
        f39181c = new AnonymousClass2();
    }

    public abstract Tracer a();
}
