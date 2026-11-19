package com.networkbench.agent.impl.plugin.f;

/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f38066a = 60000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f38067b;

    public boolean a(long j2) {
        long j3 = this.f38067b;
        if (j3 <= 0) {
            return true;
        }
        return j2 > j3 && j2 - j3 > 60000;
    }

    public void b(long j2) {
        this.f38067b = j2;
    }

    public long a() {
        return this.f38067b;
    }
}
