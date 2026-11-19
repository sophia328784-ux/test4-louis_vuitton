package com.networkbench.agent.impl.performance.a.b.c;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f37668c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f37669e;

    public a(long j2, long j3) {
        this.f37668c = j2;
        this.f37669e = j3;
        if (j3 > 0) {
            this.d = true;
        }
    }

    public String toString() {
        return "CpuTask{initialDelay=" + this.f37668c + ", isPeriodic=" + this.d + ", period=" + this.f37669e + "}/\n" + super.toString();
    }

    public a(long j2) {
        this(j2, 0L);
    }

    public a() {
        this(0L);
    }
}
