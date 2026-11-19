package com.perfectcorp.thirdparty.io.reactivex.internal.schedulers;

import java.util.ArrayList;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f43122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f43123b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final AtomicReference f43124c = new AtomicReference();
    public static final ConcurrentHashMap d = new ConcurrentHashMap();

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f43125a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f43126b;
    }

    public static final class b implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            for (ScheduledThreadPoolExecutor scheduledThreadPoolExecutor : new ArrayList(l.d.keySet())) {
                if (scheduledThreadPoolExecutor.isShutdown()) {
                    l.d.remove(scheduledThreadPoolExecutor);
                } else {
                    scheduledThreadPoolExecutor.purge();
                }
            }
        }
    }

    static {
        Properties properties = System.getProperties();
        a aVar = new a();
        if (properties.containsKey("rx2.purge-enabled")) {
            aVar.f43125a = Boolean.parseBoolean(properties.getProperty("rx2.purge-enabled"));
        } else {
            aVar.f43125a = true;
        }
        if (aVar.f43125a && properties.containsKey("rx2.purge-period-seconds")) {
            try {
                aVar.f43126b = Integer.parseInt(properties.getProperty("rx2.purge-period-seconds"));
            } catch (NumberFormatException unused) {
                aVar.f43126b = 1;
            }
        } else {
            aVar.f43126b = 1;
        }
        boolean z = aVar.f43125a;
        f43122a = z;
        f43123b = aVar.f43126b;
        if (!z) {
            return;
        }
        while (true) {
            AtomicReference atomicReference = f43124c;
            ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) atomicReference.get();
            if (scheduledExecutorService != null) {
                return;
            }
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, new i("RxSchedulerPurge"));
            do {
                if (atomicReference.compareAndSet(scheduledExecutorService, scheduledExecutorServiceNewScheduledThreadPool)) {
                    b bVar = new b();
                    long j2 = f43123b;
                    scheduledExecutorServiceNewScheduledThreadPool.scheduleAtFixedRate(bVar, j2, j2, TimeUnit.SECONDS);
                    return;
                }
            } while (atomicReference.get() == scheduledExecutorService);
            scheduledExecutorServiceNewScheduledThreadPool.shutdownNow();
        }
    }
}
