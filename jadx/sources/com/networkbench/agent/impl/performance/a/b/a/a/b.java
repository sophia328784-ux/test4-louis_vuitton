package com.networkbench.agent.impl.performance.a.b.a.a;

import com.networkbench.agent.impl.c.g;

/* JADX INFO: loaded from: classes2.dex */
public class b extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private com.networkbench.agent.impl.performance.a.b.c.a f37628c;

    public b(com.networkbench.agent.impl.performance.a.b.a.b bVar) {
        super(bVar);
    }

    @Override // com.networkbench.agent.impl.performance.a.b.a.a.a, com.networkbench.agent.impl.performance.a.d.g
    public final void a(com.networkbench.agent.impl.performance.a.a.b bVar, String str) {
        super.a(bVar, str);
        g.z("NormalIdleState startexceptionstate");
        if (this.f37627b) {
            return;
        }
        this.f37627b = true;
        com.networkbench.agent.impl.performance.a.b.c.b bVarA = com.networkbench.agent.impl.performance.a.b.c.b.a();
        com.networkbench.agent.impl.performance.a.b.c.a aVar = new com.networkbench.agent.impl.performance.a.b.c.a(b(), b()) { // from class: com.networkbench.agent.impl.performance.a.b.a.a.b.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    g.z("cpuTask--->NormalIdleState run---->" + b.this.f37628c.toString());
                    b.this.f37626a.b();
                } catch (Throwable th) {
                    g.z("NormalIdleState run error:" + th.getMessage());
                }
            }
        };
        this.f37628c = aVar;
        bVarA.a(aVar);
    }

    public final long b() {
        return 120000L;
    }

    @Override // com.networkbench.agent.impl.performance.a.d.g
    public final com.networkbench.agent.impl.performance.a.b.a.c c() {
        return com.networkbench.agent.impl.performance.a.b.a.c.IDLE;
    }

    @Override // com.networkbench.agent.impl.performance.a.b.a.a.a, com.networkbench.agent.impl.performance.a.d.g
    public final void a() {
        super.a();
        com.networkbench.agent.impl.performance.a.b.c.b.a().b(this.f37628c);
        this.f37627b = false;
    }
}
