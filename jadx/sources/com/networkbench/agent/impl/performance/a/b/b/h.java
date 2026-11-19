package com.networkbench.agent.impl.performance.a.b.b;

import android.os.Process;
import com.networkbench.agent.impl.harvest.ScreenNameManager;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.networkbench.agent.impl.performance.a.a.b f37665a = new com.networkbench.agent.impl.performance.a.a.b();

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.networkbench.agent.impl.performance.a.b.a aVar) {
        long jA = aVar.f37625f.a();
        com.networkbench.agent.impl.c.g.z("CpuDataCollector handleCpuDataCollection cpuInterval : " + jA);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - aVar.f37623c < jA) {
            com.networkbench.agent.impl.c.g.z("CpuDataCollector handleCpuDataCollection return : " + (jCurrentTimeMillis - aVar.f37623c) + " " + jA);
            return;
        }
        aVar.f37623c = jCurrentTimeMillis;
        long jC = com.networkbench.agent.impl.performance.a.e.a.c();
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        com.networkbench.agent.impl.performance.a.e.h.a(Process.myPid(), map);
        try {
            Thread.sleep(360L);
        } catch (InterruptedException e2) {
            com.networkbench.agent.impl.c.g.e("CpuDataCollector InterruptedException stop error", e2);
        }
        com.networkbench.agent.impl.performance.a.e.h.a(Process.myPid(), map2);
        long jC2 = com.networkbench.agent.impl.performance.a.e.a.c();
        double dCurrentTimeMillis = (((jC2 - jC) * 1000.0d) / (System.currentTimeMillis() - jCurrentTimeMillis2)) / com.networkbench.agent.impl.performance.a.e.a.d();
        long jCurrentTimeMillis3 = System.currentTimeMillis() - jCurrentTimeMillis2;
        long jA2 = com.networkbench.agent.impl.performance.a.e.a.a();
        if (jCurrentTimeMillis3 <= -1 || jA2 < 0) {
            com.networkbench.agent.impl.performance.a.b.c.b.a().b(com.networkbench.agent.impl.performance.a.c.b().c());
            com.networkbench.agent.impl.c.g.z("CpuTaskManager cancelTask CpuModuleWrapper CpuTask ,  getCpuUsageTime error!");
            return;
        }
        StringBuilder sb = new StringBuilder("CpuDataCollector handleCpuDataCollection cpuRatetime : ");
        float f2 = jC2 - jC;
        sb.append(f2);
        com.networkbench.agent.impl.c.g.z(sb.toString());
        aVar.a((com.networkbench.agent.impl.performance.a.e.a.d() * jCurrentTimeMillis3) / 1000.0f, map, map2, new com.networkbench.agent.impl.performance.a.c.f(ScreenNameManager.getCurrentActivityName(), f2 / ((com.networkbench.agent.impl.performance.a.e.a.d() * (jA2 * jCurrentTimeMillis3)) / 1000.0f), dCurrentTimeMillis));
    }

    public void a(com.networkbench.agent.impl.harvest.a.a.c cVar) {
        this.f37665a = (com.networkbench.agent.impl.performance.a.a.b) cVar;
        com.networkbench.agent.impl.c.g.z("updateConfig :" + this.f37665a.toString());
        e.a.a().a(this.f37665a);
    }

    public void a(h hVar, d dVar) {
        com.networkbench.agent.impl.performance.a.a.b bVar = this.f37665a;
        if (bVar != null) {
            final com.networkbench.agent.impl.performance.a.b.a aVar = dVar.f37654b;
            aVar.f37625f = bVar;
            if (aVar.f37621a == null) {
                aVar.f37621a = new com.networkbench.agent.impl.performance.a.b.c.a() { // from class: com.networkbench.agent.impl.performance.a.b.b.h.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            h.this.a(aVar);
                        } catch (Throwable th) {
                            com.networkbench.agent.impl.c.g.e("CpuDataCollector run error: " + th.getMessage(), th);
                        }
                    }
                };
            }
            if (aVar.f37621a != null) {
                com.networkbench.agent.impl.performance.a.b.c.b.a().a(aVar.f37621a);
            }
        }
    }

    public void a() {
        e.a.a().a();
    }
}
