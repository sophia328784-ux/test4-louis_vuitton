package com.networkbench.agent.impl.j;

/* JADX INFO: loaded from: classes2.dex */
public enum d {
    INIT_MOBILE_APP(2),
    UPLOAD_MOBILE_DATA(3),
    UI_TRACE_DATA(4),
    CRASH_DATA(5),
    ANR_DATA(6),
    USER_BEHAVIOUR(7),
    CONTROLLER(8);


    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f37412h;

    d(int i2) {
        this.f37412h = i2;
    }

    public int a() {
        return this.f37412h;
    }
}
