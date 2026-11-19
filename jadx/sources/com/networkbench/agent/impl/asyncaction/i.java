package com.networkbench.agent.impl.asyncaction;

/* JADX INFO: loaded from: classes2.dex */
public class i implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f36419a = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Runnable f36420b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private NBSRunnableHandler f36421c;

    public i(Runnable runnable, NBSRunnableHandler nBSRunnableHandler) {
        this.f36420b = runnable;
        this.f36421c = nBSRunnableHandler;
    }

    @Override // java.lang.Runnable
    public void run() {
        f36419a.a("NBSRunnableWrapper runable run");
        this.f36421c.preMethod();
        this.f36420b.run();
        this.f36421c.sufMethod();
    }
}
