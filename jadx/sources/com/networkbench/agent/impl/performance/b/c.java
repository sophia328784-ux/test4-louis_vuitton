package com.networkbench.agent.impl.performance.b;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private g f37752a = new g();

    public synchronized void a(String str, HashMap<Integer, Integer> map, long j2) {
        a aVar = new a(str, map, j2);
        aVar.c();
        aVar.d();
        this.f37752a.a(str, aVar);
    }

    public synchronized String a() {
        return this.f37752a.formatInfo();
    }
}
