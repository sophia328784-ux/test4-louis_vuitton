package com.networkbench.agent.impl.logtrack;

/* JADX INFO: loaded from: classes2.dex */
public enum c {
    LOG_LEVEL_DEBUG(1),
    LOG_LEVEL_INFO(2),
    LOG_LEVEL_VERBOSE(3),
    LOG_LEVEL_WARNING(4),
    LOG_LEVEL_ERROR(8);


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f37473a;

    c(int i2) {
        this.f37473a = i2;
    }

    public int a() {
        return this.f37473a;
    }
}
