package com.networkbench.agent.impl.i;

/* JADX INFO: loaded from: classes2.dex */
public enum e {
    PAGE_STATUS_NORMAL(0),
    PAGE_STATUS_TIMEOUT(1),
    PAGE_STATUS_INTERRUPT(2),
    PAGE_STATUS_UNKNOWN(3);


    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f37340e;

    e(int i2) {
        this.f37340e = i2;
    }

    public int a() {
        return this.f37340e;
    }
}
