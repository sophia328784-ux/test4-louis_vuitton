package com.networkbench.agent.impl.performance.a.b.a;

import com.networkbench.agent.impl.performance.a.d.e;
import com.networkbench.agent.impl.performance.a.d.g;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public e f37638b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public g f37639c;
    public g d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private g f37641f;
    private com.networkbench.agent.impl.performance.a.a.b g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f37642h;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f37640e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f37637a = false;

    private void b(g gVar) {
        if (this.f37640e && this.f37637a) {
            this.f37641f = gVar;
            gVar.a(this.g, this.f37642h);
        }
    }

    public final synchronized void a(com.networkbench.agent.impl.performance.a.a.b bVar) {
        g gVar = this.f37641f;
        if (gVar == null) {
            com.networkbench.agent.impl.c.g.z("CpuExceptionStateMachine updateConfig + this.currentState == null");
            return;
        }
        this.f37640e = true;
        b(gVar);
        com.networkbench.agent.impl.c.g.z("CpuExceptionStateMachine updateConfig");
        this.g = bVar;
    }

    public final synchronized void b() {
        b(this.f37639c);
    }

    public void a(String str) {
        this.f37642h = str;
        com.networkbench.agent.impl.c.g.z("CpuExceptionStateMachineonStart" + str);
        this.f37640e = true;
        b();
    }

    public final synchronized void a(boolean z) {
        if (this.f37640e) {
            if (z) {
                this.f37639c.a();
                this.d.a();
                this.f37640e = false;
            }
        }
    }

    public final synchronized void a() {
        b(this.d);
    }

    public void a(g gVar) {
        this.f37641f = gVar;
    }
}
