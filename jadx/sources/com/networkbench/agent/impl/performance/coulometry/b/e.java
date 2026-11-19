package com.networkbench.agent.impl.performance.coulometry.b;

import com.networkbench.agent.impl.util.r;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class e extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    i f37858a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    j f37859b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.networkbench.agent.impl.performance.coulometry.c.b.a f37860c;

    public e(com.networkbench.agent.impl.performance.coulometry.a.a.a aVar, com.networkbench.agent.impl.harvest.a.a.b bVar) {
        super(aVar, bVar);
        this.f37860c = new com.networkbench.agent.impl.performance.coulometry.c.b.a(r.u().J(), this);
        this.f37858a = new i(bVar.b(), aVar, com.networkbench.agent.impl.performance.coulometry.a.a.c.LOCATION_QUERIES_IN_10_MINUTES_EXCEEDED);
        this.f37859b = new j(bVar.c() * 1000, aVar, com.networkbench.agent.impl.performance.coulometry.a.a.c.LOCATION_DURATION_IN_10_MINUTES_EXCEEDED);
    }

    public void a(long j2, long j3, com.networkbench.agent.impl.performance.coulometry.c.d dVar) {
        this.d.a(new h(j3, j2));
        this.f37851e.set(this.d.b());
        if (dVar.g || j2 - dVar.f37908a < this.f37856k.a() * 1000) {
            boolean z = dVar.g;
            long j4 = dVar.f37908a;
            if (z) {
                com.networkbench.agent.impl.c.g.y("已经触发过异常, 单次 locationDurationTime :" + (j2 - j4));
            } else {
                com.networkbench.agent.impl.c.g.y("没有超过异常阈值(120), 单次 locationDurationTime :" + (j2 - j4));
            }
        } else {
            this.f37855j.a(com.networkbench.agent.impl.performance.coulometry.a.a.c.SINGLE_LOCATION_DURATION_EXCEEDED, dVar.f37912f);
            com.networkbench.agent.impl.c.g.y("超过异常阈值(120), 单次 locationDurationTime :" + (j2 - dVar.f37908a));
            dVar.g = true;
        }
        this.f37859b.a(dVar.b());
    }

    @Override // com.networkbench.agent.impl.performance.coulometry.b.b
    public void b() {
    }

    public void c() {
        this.f37859b.a(new h(System.currentTimeMillis(), System.currentTimeMillis()));
    }

    public void a(com.networkbench.agent.impl.performance.coulometry.c.d dVar) {
        this.f37858a.a(dVar.f37912f);
    }

    public com.networkbench.agent.impl.performance.coulometry.c.g a() {
        return this.f37860c;
    }

    @Override // com.networkbench.agent.impl.performance.coulometry.b.d
    public void a(boolean z) {
        e eVar;
        ConcurrentHashMap<Integer, com.networkbench.agent.impl.performance.coulometry.c.d> concurrentHashMapA = a().a().a();
        for (com.networkbench.agent.impl.performance.coulometry.c.d dVar : concurrentHashMapA.values()) {
            if (dVar != null) {
                dVar.f37910c = System.currentTimeMillis();
                eVar = this;
                eVar.a(System.currentTimeMillis(), dVar.f37909b, dVar);
                dVar.f37909b = System.currentTimeMillis();
            } else {
                eVar = this;
            }
            this = eVar;
        }
        e eVar2 = this;
        if (z) {
            concurrentHashMapA.clear();
            eVar2.f37858a.b();
            eVar2.f37859b.a();
        }
    }
}
