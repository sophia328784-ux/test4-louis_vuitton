package com.networkbench.agent.impl.util.c;

import com.networkbench.agent.impl.util.Logger;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f38357a = "NBSSingleThreadExecutor";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f38358b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static a f38359c = new a();
    private ExecutorService d;

    private a() {
        try {
            e();
        } catch (Throwable th) {
            Logger.error(f38357a, "init NBSSingleThreadExecutor failed", th);
        }
    }

    public static synchronized a b() {
        try {
            a aVar = f38359c;
            if (aVar.d == null) {
                aVar.e();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f38359c;
    }

    public static synchronized boolean d() {
        return f38358b == null;
    }

    private void e() {
        this.d = Executors.newFixedThreadPool(1, new d("Tingyun-SingleThread"));
    }

    public void a(Runnable runnable) {
        try {
            ExecutorService executorService = this.d;
            if (executorService != null) {
                if (executorService.isShutdown() || this.d.isTerminated()) {
                    e();
                }
                this.d.execute(runnable);
            }
        } catch (Throwable unused) {
        }
    }

    public synchronized void c() {
        this.d.shutdownNow();
    }

    public static synchronized a a() {
        try {
            a aVar = f38358b;
            if (aVar.d == null) {
                aVar.e();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f38358b;
    }
}
