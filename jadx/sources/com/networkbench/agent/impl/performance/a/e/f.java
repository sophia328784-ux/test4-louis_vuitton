package com.networkbench.agent.impl.performance.a.e;

import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class f extends CopyOnWriteArrayList<com.networkbench.agent.impl.performance.a.c.g> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f37738a;

    public f(int i2) {
        this.f37738a = i2;
    }

    public void a() {
        int size = size();
        int i2 = this.f37738a;
        if (size > i2) {
            subList(i2, size()).clear();
        }
    }

    @Override // java.util.concurrent.CopyOnWriteArrayList, java.util.List, java.util.Collection
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public boolean add(com.networkbench.agent.impl.performance.a.c.g gVar) {
        return super.add(gVar);
    }
}
