package com.networkbench.agent.impl.performance.a;

import android.content.Context;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.f.d;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.performance.a.b.b.h;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class c implements d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static c f37675b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.networkbench.agent.impl.performance.a.a.b f37676a;
    private a d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f37679f;
    private com.networkbench.agent.impl.performance.a.b.c.a g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private AtomicBoolean f37677c = new AtomicBoolean(false);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private h f37678e = new h();

    private c() {
    }

    public static synchronized c b() {
        try {
            if (f37675b == null) {
                f37675b = new c();
            }
        } catch (Throwable th) {
            throw th;
        }
        return f37675b;
    }

    private int e() {
        try {
            return NBSAgent.getImpl().p().m().getStackDepth();
        } catch (Throwable unused) {
            return 40;
        }
    }

    private long f() {
        if (Harvest.getInstance().getConfiguration().getInterval() == 0) {
            return 60L;
        }
        long interval = NBSAgent.getImpl().p().m().getInterval();
        g.z("CpuModuleWrapper checkIntervalTime time:" + interval);
        return interval;
    }

    public com.networkbench.agent.impl.performance.a.b.c.a c() {
        return this.g;
    }

    public b d() {
        return this.f37679f;
    }

    @Override // com.networkbench.agent.impl.f.d
    public String getModuleData() {
        try {
            b bVar = this.f37679f;
            if (bVar == null) {
                return "";
            }
            String strA = bVar.a();
            this.f37679f.b();
            return strA;
        } catch (Throwable th) {
            g.z("CpuModuleWrapper getModuleData error:" + th.getMessage());
            return "";
        }
    }

    @Override // com.networkbench.agent.impl.f.d
    public String getModuleName() {
        return "cpu";
    }

    @Override // com.networkbench.agent.impl.f.d
    public void harvestRestart() {
        com.networkbench.agent.impl.performance.a.b.c.b bVarA = com.networkbench.agent.impl.performance.a.b.c.b.a();
        com.networkbench.agent.impl.performance.a.b.c.a aVar = new com.networkbench.agent.impl.performance.a.b.c.a(0L, this.f37676a.a()) { // from class: com.networkbench.agent.impl.performance.a.c.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    g.z("cpuTask--->CpuModuleWrapper initModule cpuOnlineConfigManager  run---->" + c.this.g.toString());
                    c.this.f37678e.a(c.this.f37678e, com.networkbench.agent.impl.performance.a.b.b.d.a.a());
                } catch (Throwable th) {
                    g.z("CpuModuleWrapper updateCpuCollectTasks error:" + th.getMessage());
                }
            }
        };
        this.g = aVar;
        bVarA.a(aVar);
        this.f37677c.set(true);
    }

    @Override // com.networkbench.agent.impl.f.d
    public void harvestStop() {
        if (this.f37677c.get()) {
            com.networkbench.agent.impl.performance.a.b.c.b.a().b(this.g);
            this.f37678e.a();
        }
    }

    @Override // com.networkbench.agent.impl.f.d
    public void initModule(Context context, e eVar, com.networkbench.agent.impl.harvest.a.a.c cVar, int i2) {
        try {
            this.f37676a = (com.networkbench.agent.impl.performance.a.a.b) cVar;
            this.d = new a();
            com.networkbench.agent.impl.floatbtnmanager.c.a().a(this.d);
            b bVar = new b();
            this.f37679f = bVar;
            bVar.a((int) Harvest.getInstance().getConfiguration().getInterval());
            this.f37676a.f37615a = f();
            this.f37676a.f37617c = e();
            this.f37678e.a(cVar);
            com.networkbench.agent.impl.performance.a.b.c.b bVarA = com.networkbench.agent.impl.performance.a.b.c.b.a();
            com.networkbench.agent.impl.performance.a.b.c.a aVar = new com.networkbench.agent.impl.performance.a.b.c.a(0L, this.f37676a.a()) { // from class: com.networkbench.agent.impl.performance.a.c.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        g.z("cpuTask--->CpuModuleWrapper initModule cpuOnlineConfigManager  run---->" + c.this.g.toString());
                        c.this.f37678e.a(c.this.f37678e, com.networkbench.agent.impl.performance.a.b.b.d.a.a());
                    } catch (Throwable th) {
                        g.z("CpuModuleWrapper updateCpuCollectTasks error:" + th.getMessage());
                    }
                }
            };
            this.g = aVar;
            bVarA.a(aVar);
            this.f37677c.set(true);
        } catch (Throwable th) {
            g.z("CpuModuleWrapper initModule error:" + th.getMessage());
        }
    }

    public a a() {
        return this.d;
    }
}
