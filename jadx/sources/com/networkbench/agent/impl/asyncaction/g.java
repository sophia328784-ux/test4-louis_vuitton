package com.networkbench.agent.impl.asyncaction;

import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36413a = com.networkbench.agent.impl.c.f.a();

    private Runnable b(Runnable runnable) {
        return new i(runnable, new NBSRunnableHandler(b()));
    }

    public Runnable a(Runnable runnable) {
        q qVarB = b();
        if (qVarB == null) {
            f36413a.f("createProxyRunnable traceEngine is null, skip proxy runnable");
            return runnable;
        }
        h hVar = new h();
        hVar.a((d) new NBSRunnableHandler(qVarB));
        Object objA = hVar.a(runnable);
        if (objA instanceof Runnable) {
            return (Runnable) objA;
        }
        com.networkbench.agent.impl.c.e eVar = f36413a;
        eVar.f("proxyObj is not instanceOf Runnable proxyObj class:" + objA.getClass().getName() + ", class loader is different");
        eVar.a("use wrapper instead proxy");
        return b(runnable);
    }

    public q b() {
        return q.a();
    }

    public Callable a(Callable callable) {
        q qVarB = b();
        if (qVarB == null) {
            f36413a.f("createProxyCallable traceEngine is null, skip proxy callable");
            return callable;
        }
        h hVar = new h();
        hVar.a((d) new NBSRunnableHandler(qVarB));
        Object objA = hVar.a(callable);
        if (objA instanceof Callable) {
            return (Callable) objA;
        }
        f36413a.f("proxyObj is not instanceOf Callable proxyObj class:".concat(objA.getClass().getName()));
        return callable;
    }

    public boolean a() {
        if (!com.networkbench.agent.impl.util.r.u().af()) {
            f36413a.a("ui is closed");
            return false;
        }
        q qVarB = b();
        return (qVarB == null || qVarB.e() == null) ? false : true;
    }
}
