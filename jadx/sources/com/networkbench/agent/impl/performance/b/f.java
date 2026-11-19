package com.networkbench.agent.impl.performance.b;

import android.os.Build;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Choreographer;
import com.networkbench.agent.impl.b.h;
import com.networkbench.agent.impl.harvest.ScreenNameManager;
import java.util.HashSet;

/* JADX INFO: loaded from: classes2.dex */
public class f implements Runnable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final f f37770f = new f();
    private long[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Choreographer f37775h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Object f37776i;
    private h.a l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile boolean f37771a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long[] f37772b = new long[4];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashSet<com.networkbench.agent.impl.performance.b.a.b> f37773c = new HashSet<>();
    private volatile long d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f37774e = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f37777j = 16666666;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f37778k = false;

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        long[] jArr = this.f37772b;
        long jNanoTime = System.nanoTime();
        jArr[0] = jNanoTime;
        this.d = jNanoTime;
        this.f37772b[2] = SystemClock.currentThreadTimeMillis();
        synchronized (this.f37773c) {
            try {
                for (com.networkbench.agent.impl.performance.b.a.b bVar : this.f37773c) {
                    if (!bVar.c()) {
                        bVar.a();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        long jB = this.d;
        if (this.f37774e) {
            jB = b(jB);
        }
        long jNanoTime = System.nanoTime();
        synchronized (this.f37773c) {
            try {
                for (com.networkbench.agent.impl.performance.b.a.b bVar : this.f37773c) {
                    if (bVar.c()) {
                        bVar.a(ScreenNameManager.getCurrentActivityName(), jNanoTime - jB, this.f37774e);
                        bVar.b();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f37774e = false;
    }

    public void a(com.networkbench.agent.impl.performance.b.a.b bVar) {
        if (!this.f37771a) {
            d();
        }
        synchronized (this.f37773c) {
            this.f37773c.add(bVar);
        }
    }

    public void b(com.networkbench.agent.impl.performance.b.a.b bVar) {
        synchronized (this.f37773c) {
            try {
                this.f37773c.remove(bVar);
                if (this.f37773c.isEmpty()) {
                    e();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void c() {
        if (Thread.currentThread() != Looper.getMainLooper().getThread()) {
            try {
                throw new AssertionError("must be init in main thread!");
            } catch (Throwable th) {
                com.networkbench.agent.impl.c.g.a(d.f37753a, "FpsThreadMonitor init error: ", th);
            }
        }
        h.a aVar = new h.a() { // from class: com.networkbench.agent.impl.performance.b.f.1
            @Override // com.networkbench.agent.impl.b.h.a
            public boolean c() {
                return f.this.f37771a;
            }

            @Override // com.networkbench.agent.impl.b.h.a
            public void d() {
                super.d();
                f.this.h();
            }

            @Override // com.networkbench.agent.impl.b.h.a
            public void e() {
                super.e();
                f.this.i();
            }
        };
        this.l = aVar;
        h.b(aVar);
        this.f37778k = true;
        Choreographer choreographer = Choreographer.getInstance();
        this.f37775h = choreographer;
        long[] jArr = (long[]) com.networkbench.agent.impl.util.b.c.a(com.networkbench.agent.impl.util.b.c.a(choreographer, "mFrameInfo", (Object) null), "frameInfo", (Object) null);
        this.g = jArr;
        if (jArr == null) {
            this.f37776i = com.networkbench.agent.impl.util.b.c.a(this.f37775h, "mDisplayEventReceiver", (Object) null);
        }
        com.networkbench.agent.impl.c.g.a(d.f37753a, "FpsThreadMonitor#vsyncReceiver : " + this.f37776i);
    }

    public synchronized void d() {
        com.networkbench.agent.impl.c.g.a(d.f37753a, "FpsThreadMonitor#onStart");
        if (this.f37778k) {
            if (!this.f37771a) {
                this.f37771a = true;
            }
        }
    }

    public synchronized void e() {
        if (this.f37778k) {
            if (this.f37771a) {
                this.f37771a = false;
            }
        }
    }

    public boolean f() {
        return this.f37771a;
    }

    public void g() {
        h.a aVar = this.l;
        if (aVar != null) {
            h.c(aVar);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        StringBuilder sb;
        long jNanoTime = System.nanoTime();
        try {
            a(this.d);
            sb = new StringBuilder("[FpsThreadMonitor#run] inner cost : ");
        } catch (Exception e2) {
            com.networkbench.agent.impl.c.g.a(d.f37753a, "FpsThreadMonitor", e2);
            sb = new StringBuilder("[FpsThreadMonitor#run] inner cost : ");
        } finally {
            com.networkbench.agent.impl.c.g.a(d.f37753a, "[FpsThreadMonitor#run] inner cost : " + (System.nanoTime() - jNanoTime));
        }
        sb.append(System.nanoTime() - jNanoTime);
        String string = sb.toString();
    }

    public static f a() {
        return f37770f;
    }

    private void a(long j2) {
        this.f37774e = true;
    }

    public boolean b() {
        return this.f37778k;
    }

    private long b(long j2) {
        long[] jArr = this.g;
        if (jArr == null) {
            return SystemClock.uptimeMillis();
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return jArr[2];
        }
        return jArr[1];
    }
}
