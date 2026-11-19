package com.networkbench.agent.impl.pubapi;

/* JADX INFO: loaded from: classes2.dex */
public enum NBSLogLevel {
    NONE(0),
    DEBUG(1),
    INFO(2),
    WARNING(3),
    ERROR(4);


    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f38145a;

    NBSLogLevel(int i2) {
        this.f38145a = i2;
    }

    public int getLevel() {
        return this.f38145a;
    }
}
