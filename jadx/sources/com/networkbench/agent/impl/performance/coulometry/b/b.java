package com.networkbench.agent.impl.performance.coulometry.b;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b implements d {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected com.networkbench.agent.impl.performance.coulometry.a.a.a f37855j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected com.networkbench.agent.impl.harvest.a.a.b f37856k;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected AtomicLong f37851e = new AtomicLong(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected AtomicLong f37852f = new AtomicLong(0);
    protected AtomicInteger g = new AtomicInteger(0);
    protected g d = new g();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected long f37853h = System.currentTimeMillis();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected long f37854i = System.currentTimeMillis();

    public b(com.networkbench.agent.impl.performance.coulometry.a.a.a aVar, com.networkbench.agent.impl.harvest.a.a.b bVar) {
        this.f37855j = aVar;
        this.f37856k = bVar;
    }

    public abstract void b();

    public long d() {
        return this.f37851e.get();
    }

    public long e() {
        return this.g.get();
    }

    public long f() {
        return this.f37852f.get();
    }

    @Override // com.networkbench.agent.impl.performance.coulometry.b.d
    public void g() {
        b();
    }

    @Override // com.networkbench.agent.impl.performance.coulometry.b.d
    public void h() {
        this.f37851e.set(0L);
        this.f37852f.set(0L);
        this.g.set(0);
        g gVar = this.d;
        if (gVar != null) {
            gVar.a().clear();
        }
    }
}
