package com.networkbench.agent.impl.performance.a.b.c;

import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.util.c.d;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b f37670a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ConcurrentHashMap<com.networkbench.agent.impl.performance.a.b.c.a, Runnable> f37672c = new ConcurrentHashMap<>();
    private ConcurrentHashMap<com.networkbench.agent.impl.performance.a.b.c.a, ScheduledFuture> d = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ScheduledThreadPoolExecutor f37671b = new ScheduledThreadPoolExecutor(1, new d("Tingyun-CpuTask"));

    public class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private com.networkbench.agent.impl.performance.a.b.c.a f37674b;

        private a(com.networkbench.agent.impl.performance.a.b.c.a aVar) {
            this.f37674b = aVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                this.f37674b.run();
            } catch (Throwable th) {
                g.e("TaskRunner run has an error : " + th.getMessage(), th);
            }
        }
    }

    private b() {
    }

    public final void a(com.networkbench.agent.impl.performance.a.b.c.a aVar) {
        if (aVar == null) {
            return;
        }
        try {
            a aVar2 = new a(aVar);
            boolean z = aVar.d;
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = this.f37671b;
            ScheduledFuture<?> scheduledFutureScheduleWithFixedDelay = z ? scheduledThreadPoolExecutor.scheduleWithFixedDelay(aVar2, aVar.f37668c, aVar.f37669e, TimeUnit.MILLISECONDS) : scheduledThreadPoolExecutor.schedule(aVar2, aVar.f37668c, TimeUnit.MILLISECONDS);
            this.f37672c.put(aVar, aVar2);
            this.d.put(aVar, scheduledFutureScheduleWithFixedDelay);
        } catch (Throwable unused) {
        }
    }

    public final void b(com.networkbench.agent.impl.performance.a.b.c.a aVar) {
        if (aVar == null) {
            return;
        }
        try {
            Runnable runnableRemove = this.f37672c.remove(aVar);
            if (runnableRemove != null) {
                this.f37671b.remove(runnableRemove);
            }
            ScheduledFuture scheduledFutureRemove = this.d.remove(aVar);
            if (scheduledFutureRemove != null) {
                scheduledFutureRemove.cancel(true);
            }
            g.z("CpuTaskManager cancelTask success." + aVar.toString());
        } catch (Throwable th) {
            g.e("CpuTaskManager cancelTask has an error : " + th.getMessage(), th);
        }
    }

    public static synchronized b a() {
        try {
            if (f37670a == null) {
                f37670a = new b();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f37670a;
    }
}
