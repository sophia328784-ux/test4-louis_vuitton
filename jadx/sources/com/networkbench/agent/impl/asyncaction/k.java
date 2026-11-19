package com.networkbench.agent.impl.asyncaction;

/* JADX INFO: loaded from: classes2.dex */
public class k extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36424a = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Thread f36425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private NBSRunnableHandler f36426c;

    public k(Thread thread, NBSRunnableHandler nBSRunnableHandler) {
        this.f36425b = thread;
        this.f36426c = nBSRunnableHandler;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        f36424a.a("NBSThreadWrapper thread run");
        this.f36426c.preMethod();
        super.run();
        this.f36425b.run();
        this.f36426c.sufMethod();
    }
}
