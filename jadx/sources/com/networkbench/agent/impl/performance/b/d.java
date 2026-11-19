package com.networkbench.agent.impl.performance.b;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.y;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class d implements com.networkbench.agent.impl.f.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f37753a = "FpsModule";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static d f37754c;
    private final ExecutorService d = Executors.newSingleThreadExecutor(new com.networkbench.agent.impl.util.c.d("FpsModuleService"));

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private AtomicBoolean f37756e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.networkbench.agent.impl.performance.b.a.b f37757f = new com.networkbench.agent.impl.performance.b.a.b() { // from class: com.networkbench.agent.impl.performance.b.d.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final long f37758a = 16666666;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ConcurrentHashMap<Integer, Integer> f37760c = new ConcurrentHashMap<>();
        private long d = System.nanoTime();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f37761e = "";

        @Override // com.networkbench.agent.impl.performance.b.a.b
        public void a(final String str, final long j2, boolean z) {
            if (ak.r(this.f37761e)) {
                this.f37761e = str;
            }
            final String str2 = this.f37761e;
            final long jCurrentTimeMillis = System.currentTimeMillis();
            d.this.d.execute(new Runnable() { // from class: com.networkbench.agent.impl.performance.b.d.1.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        long jNanoTime = System.nanoTime();
                        if (jNanoTime - AnonymousClass1.this.d >= 10000000000L || !str.equals(str2)) {
                            HashMap<Integer, Integer> map = new HashMap<>(AnonymousClass1.this.f37760c);
                            AnonymousClass1.this.f37760c.clear();
                            d.this.a(str2, map, jCurrentTimeMillis);
                            AnonymousClass1.this.d = jNanoTime;
                        }
                        int i2 = (int) (j2 / 16666666);
                        boolean zContainsKey = AnonymousClass1.this.f37760c.containsKey(Integer.valueOf(i2));
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        if (zContainsKey) {
                            anonymousClass1.f37760c.put(Integer.valueOf(i2), Integer.valueOf(((Integer) AnonymousClass1.this.f37760c.get(Integer.valueOf(i2))).intValue() + 1));
                        } else {
                            anonymousClass1.f37760c.put(Integer.valueOf(i2), 1);
                        }
                    } catch (Throwable th) {
                        com.networkbench.agent.impl.c.g.a(d.f37753a, "doFrame  error-->" + th.getMessage());
                    }
                }
            });
            this.f37761e = str;
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    volatile c f37755b = new c();

    private d() {
    }

    public static synchronized d a() {
        try {
            if (f37754c == null) {
                f37754c = new d();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f37754c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            com.networkbench.agent.impl.c.g.a(f37753a, "FpsModuleWrapperinitModule");
            f.a().c();
            f.a().a(this.f37757f);
            this.f37756e.set(true);
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.a(f37753a, "FpsModuleWrapperinitModule error:" + th.getMessage());
        }
    }

    @Override // com.networkbench.agent.impl.f.d
    public String getModuleData() {
        return this.f37756e.get() ? this.f37755b.a() : "";
    }

    @Override // com.networkbench.agent.impl.f.d
    public String getModuleName() {
        return null;
    }

    @Override // com.networkbench.agent.impl.f.d
    public void harvestRestart() {
        initModule(r.u().J(), null, null, 0);
    }

    @Override // com.networkbench.agent.impl.f.d
    public void harvestStop() {
        if (this.f37756e.get()) {
            f.a().b(this.f37757f);
            f.a().g();
        }
    }

    @Override // com.networkbench.agent.impl.f.d
    public void initModule(Context context, com.networkbench.agent.impl.c.e eVar, com.networkbench.agent.impl.harvest.a.a.c cVar, int i2) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            c();
        } else {
            new Handler(Looper.getMainLooper()).post(new y() { // from class: com.networkbench.agent.impl.performance.b.d.2
                @Override // com.networkbench.agent.impl.util.y
                public void tryCatchRun() {
                    d.this.c();
                }
            });
        }
    }

    public com.networkbench.agent.impl.performance.b.a.b b() {
        return this.f37757f;
    }

    public void a(String str, HashMap<Integer, Integer> map, long j2) {
        this.f37755b.a(str, map, j2);
    }
}
