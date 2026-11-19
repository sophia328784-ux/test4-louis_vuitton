package com.networkbench.agent.impl.performance.a.b.b;

/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.networkbench.agent.impl.performance.a.d.f f37657a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final e f37658a = new e();

        public static e a() {
            return f37658a;
        }
    }

    private e() {
        this.f37657a = new f();
    }

    public final synchronized void a(com.networkbench.agent.impl.performance.a.a.b bVar) {
        if (bVar == null) {
            return;
        }
        com.networkbench.agent.impl.c.g.z("CpuExceptionManagerupdateExceptionConfig" + bVar.toString());
        this.f37657a.a(bVar);
    }

    public void a() {
        this.f37657a.a();
    }
}
