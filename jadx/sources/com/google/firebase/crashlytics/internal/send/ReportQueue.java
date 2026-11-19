package com.google.firebase.crashlytics.internal.send;

import android.os.SystemClock;
import com.google.android.datatransport.Event;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.Transport;
import com.google.android.datatransport.TransportScheduleCallback;
import com.google.android.datatransport.runtime.ForcedSender;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CrashlyticsReportWithSessionId;
import com.google.firebase.crashlytics.internal.common.OnDemandCounter;
import com.google.firebase.crashlytics.internal.common.Utils;
import com.google.firebase.crashlytics.internal.settings.Settings;
import java.util.Locale;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
final class ReportQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double f35018a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final double f35019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f35020c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f35021e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayBlockingQueue f35022f;
    public final ThreadPoolExecutor g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Transport f35023h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final OnDemandCounter f35024i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f35025j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f35026k;

    public final class ReportRunnable implements Runnable {
        private final CrashlyticsReportWithSessionId reportWithSessionId;
        private final TaskCompletionSource<CrashlyticsReportWithSessionId> tcs;

        private ReportRunnable(CrashlyticsReportWithSessionId crashlyticsReportWithSessionId, TaskCompletionSource<CrashlyticsReportWithSessionId> taskCompletionSource) {
            this.reportWithSessionId = crashlyticsReportWithSessionId;
            this.tcs = taskCompletionSource;
        }

        @Override // java.lang.Runnable
        public void run() {
            ReportQueue.this.b(this.reportWithSessionId, this.tcs);
            ReportQueue.this.f35024i.f34569b.set(0);
            ReportQueue reportQueue = ReportQueue.this;
            double dMin = Math.min(3600000.0d, Math.pow(reportQueue.f35019b, reportQueue.a()) * (60000.0d / reportQueue.f35018a));
            Logger logger = Logger.f34483b;
            String.format(Locale.US, "%.2f", Double.valueOf(dMin / 1000.0d));
            this.reportWithSessionId.getClass();
            logger.a(3);
            try {
                Thread.sleep((long) dMin);
            } catch (InterruptedException unused) {
            }
        }
    }

    public ReportQueue(Transport transport, Settings settings, OnDemandCounter onDemandCounter) {
        double d = settings.d;
        double d2 = settings.f35039e;
        long j2 = ((long) settings.f35040f) * 1000;
        this.f35018a = d;
        this.f35019b = d2;
        this.f35020c = j2;
        this.f35023h = transport;
        this.f35024i = onDemandCounter;
        this.d = SystemClock.elapsedRealtime();
        int i2 = (int) d;
        this.f35021e = i2;
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(i2);
        this.f35022f = arrayBlockingQueue;
        this.g = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, arrayBlockingQueue);
        this.f35025j = 0;
        this.f35026k = 0L;
    }

    public final int a() {
        if (this.f35026k == 0) {
            this.f35026k = System.currentTimeMillis();
        }
        int iCurrentTimeMillis = (int) ((System.currentTimeMillis() - this.f35026k) / this.f35020c);
        int size = this.f35022f.size();
        int i2 = this.f35025j;
        int iMin = size == this.f35021e ? Math.min(100, i2 + iCurrentTimeMillis) : Math.max(0, i2 - iCurrentTimeMillis);
        if (this.f35025j != iMin) {
            this.f35025j = iMin;
            this.f35026k = System.currentTimeMillis();
        }
        return iMin;
    }

    public final void b(final CrashlyticsReportWithSessionId crashlyticsReportWithSessionId, final TaskCompletionSource taskCompletionSource) {
        Logger logger = Logger.f34483b;
        crashlyticsReportWithSessionId.getClass();
        logger.a(3);
        final boolean z = SystemClock.elapsedRealtime() - this.d < 2000;
        this.f35023h.a(Event.h(crashlyticsReportWithSessionId.a()), new TransportScheduleCallback() { // from class: com.google.firebase.crashlytics.internal.send.a
            @Override // com.google.android.datatransport.TransportScheduleCallback
            public final void g(Exception exc) throws Throwable {
                TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                if (exc != null) {
                    taskCompletionSource2.c(exc);
                    return;
                }
                if (z) {
                    boolean z2 = true;
                    final CountDownLatch countDownLatch = new CountDownLatch(1);
                    final ReportQueue reportQueue = this.f35027b;
                    new Thread(new Runnable() { // from class: com.google.firebase.crashlytics.internal.send.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                ForcedSender.a(reportQueue.f35023h, Priority.HIGHEST);
                            } catch (Exception unused) {
                            }
                            countDownLatch.countDown();
                        }
                    }).start();
                    ExecutorService executorService = Utils.f34575a;
                    boolean z3 = false;
                    try {
                        long jNanoTime = 2000000000;
                        long jNanoTime2 = System.nanoTime() + 2000000000;
                        while (true) {
                            try {
                                try {
                                    countDownLatch.await(jNanoTime, TimeUnit.NANOSECONDS);
                                    break;
                                } catch (Throwable th) {
                                    th = th;
                                    if (z2) {
                                        Thread.currentThread().interrupt();
                                    }
                                    throw th;
                                }
                            } catch (InterruptedException unused) {
                                jNanoTime = jNanoTime2 - System.nanoTime();
                                z3 = true;
                            }
                        }
                        if (z3) {
                            Thread.currentThread().interrupt();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        z2 = z3;
                    }
                }
                taskCompletionSource2.d(crashlyticsReportWithSessionId);
            }
        });
    }
}
