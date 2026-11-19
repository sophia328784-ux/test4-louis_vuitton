package com.networkbench.agent.impl.performance.a;

import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.util.r;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.networkbench.agent.impl.performance.a.c.a f37619a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    com.networkbench.agent.impl.performance.b f37620b;

    public void a(com.networkbench.agent.impl.performance.a.c.b bVar) {
        if (this.f37619a == null || bVar == null) {
            return;
        }
        com.networkbench.agent.impl.crash.b.a(r.u().J(), bVar);
        g.z("addErrorEvent" + bVar.asJsonObject());
        this.f37619a.a(bVar);
    }

    public void b() {
        com.networkbench.agent.impl.performance.a.c.a aVar = this.f37619a;
        if (aVar != null) {
            aVar.reset();
            this.f37619a.c();
        }
        com.networkbench.agent.impl.performance.b bVar = this.f37620b;
        if (bVar != null) {
            bVar.reset();
        }
    }

    public void a(int i2) {
        this.f37619a = new com.networkbench.agent.impl.performance.a.c.a(i2);
        this.f37620b = new com.networkbench.agent.impl.performance.b("cpuMetrics", i2, "otelMetric");
    }

    public void a(com.networkbench.agent.impl.performance.a aVar) {
        if (this.f37620b == null || aVar == null) {
            return;
        }
        g.z("addCpuEventData" + aVar.a());
        this.f37620b.d().a(aVar);
    }

    public String a() {
        String info;
        com.networkbench.agent.impl.performance.a.c.a aVar = this.f37619a;
        if (aVar != null) {
            info = aVar.formatInfo();
        } else {
            info = "";
        }
        if (this.f37620b == null) {
            return info;
        }
        StringBuilder sbT = n00.t(info);
        sbT.append(this.f37620b.formatInfo());
        return sbT.toString();
    }
}
