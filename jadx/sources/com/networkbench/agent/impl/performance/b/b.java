package com.networkbench.agent.impl.performance.b;

import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f37749c = 200;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    List<a> f37750a = new LinkedList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f37751b;

    public b(String str) {
        this.f37751b = str;
    }

    public void a(a aVar) {
        if (this.f37750a.size() >= 200) {
            com.networkbench.agent.impl.c.g.a(d.f37753a, "metricItems is over max size");
        } else {
            this.f37750a.add(aVar);
        }
    }

    public List<a> a() {
        return this.f37750a;
    }
}
