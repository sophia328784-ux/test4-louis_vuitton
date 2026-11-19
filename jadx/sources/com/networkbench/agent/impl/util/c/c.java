package com.networkbench.agent.impl.util.c;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile c f38360b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExecutorService f38361a;

    private c() {
        d();
    }

    public static synchronized boolean c() {
        return f38360b == null;
    }

    private void d() {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        if (iAvailableProcessors <= 4) {
            iAvailableProcessors = 2;
        }
        int i2 = iAvailableProcessors;
        this.f38361a = new ThreadPoolExecutor(i2, i2, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new d("Tingyun-GeneralThread"));
    }

    public void a(Runnable runnable) {
        try {
            ExecutorService executorService = this.f38361a;
            if (executorService != null) {
                if (executorService.isShutdown() || this.f38361a.isTerminated()) {
                    d();
                }
                this.f38361a.execute(runnable);
            }
        } catch (Throwable unused) {
        }
    }

    public synchronized void b() {
        this.f38361a.shutdownNow();
        f38360b = null;
    }

    public static c a() {
        c cVar;
        c cVar2 = f38360b;
        if (cVar2 != null) {
            return cVar2;
        }
        synchronized (c.class) {
            try {
                cVar = f38360b;
                if (cVar == null) {
                    cVar = new c();
                    f38360b = cVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVar;
    }
}
