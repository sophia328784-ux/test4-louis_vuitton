package com.networkbench.agent.impl.l;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f37427a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f37428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private EnumC0100a f37429c;

    /* JADX INFO: renamed from: com.networkbench.agent.impl.l.a$a, reason: collision with other inner class name */
    public enum EnumC0100a {
        STOPPED,
        STARTED
    }

    public void a() {
        this.f37429c = EnumC0100a.STARTED;
        this.f37427a = System.currentTimeMillis();
    }

    public long b() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f37428b = jCurrentTimeMillis;
        if (this.f37429c != EnumC0100a.STARTED) {
            return -1L;
        }
        this.f37429c = EnumC0100a.STOPPED;
        return jCurrentTimeMillis - this.f37427a;
    }
}
