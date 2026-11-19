package com.networkbench.agent.impl.performance.a.b.b;

import com.networkbench.agent.impl.util.r;

/* JADX INFO: loaded from: classes2.dex */
public class f extends com.networkbench.agent.impl.performance.a.d.c implements com.networkbench.agent.impl.performance.a.d.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.networkbench.agent.impl.performance.a.d.a f37659a = com.networkbench.agent.impl.performance.a.c.b().a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile com.networkbench.agent.impl.performance.a.b.a.b f37660b = new com.networkbench.agent.impl.performance.a.b.a.b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.networkbench.agent.impl.performance.a.d.g f37661c = new com.networkbench.agent.impl.performance.a.b.a.a.c(this.f37660b);
    private com.networkbench.agent.impl.performance.a.d.g d = new com.networkbench.agent.impl.performance.a.b.a.a.b(this.f37660b);

    public f() {
        com.networkbench.agent.impl.c.g.z("CpuExceptionPolicy init");
        com.networkbench.agent.impl.performance.a.b.a.b bVar = this.f37660b;
        com.networkbench.agent.impl.performance.a.d.g gVar = this.f37661c;
        com.networkbench.agent.impl.performance.a.d.g gVar2 = this.d;
        if (!bVar.f37637a) {
            bVar.f37639c = gVar;
            bVar.d = gVar2;
            bVar.a(gVar2);
            com.networkbench.agent.impl.c.g.z("CpuExceptionPolicy setCurrentState idleState!");
            try {
                bVar.f37638b = b.a(r.u().J());
            } catch (Throwable unused) {
            }
            bVar.f37637a = true;
        }
        this.f37659a.a(this);
    }

    @Override // com.networkbench.agent.impl.performance.a.d.c, com.networkbench.agent.impl.performance.a.d.d
    public void a(String str) {
        com.networkbench.agent.impl.c.g.z("CpuExceptionPolicy onStart " + str);
        this.f37660b.a(str);
    }

    @Override // com.networkbench.agent.impl.performance.a.d.f
    public void a() {
        a(true);
    }

    @Override // com.networkbench.agent.impl.performance.a.d.f
    public final void a(com.networkbench.agent.impl.performance.a.a.b bVar) {
        this.f37660b.a(bVar);
    }

    @Override // com.networkbench.agent.impl.performance.a.d.c, com.networkbench.agent.impl.performance.a.d.d
    public void a(boolean z) {
        this.f37660b.a(z);
    }
}
