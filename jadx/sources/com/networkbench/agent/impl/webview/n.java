package com.networkbench.agent.impl.webview;

/* JADX INFO: loaded from: classes2.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f38527a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f38528b = 0;

    public void a(int i2) {
        int i3 = this.f38528b;
        if (i3 < 1) {
            this.f38528b = i3 + 1;
        }
        if (i2 >= 100) {
            this.f38528b = 0;
        }
    }

    public boolean a() {
        return this.f38528b < 1;
    }
}
