package com.networkbench.agent.impl.performance.coulometry.b;

import com.networkbench.agent.impl.util.r;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class l extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    i f37880a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    j f37881b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.networkbench.agent.impl.performance.coulometry.c.g f37882c;

    public l(com.networkbench.agent.impl.performance.coulometry.a.a.a aVar, com.networkbench.agent.impl.harvest.a.a.b bVar) {
        super(aVar, bVar);
        this.f37882c = new com.networkbench.agent.impl.performance.coulometry.c.d.a(r.u().J().getApplicationContext(), this);
        this.f37880a = new i(bVar.f(), aVar, com.networkbench.agent.impl.performance.coulometry.a.a.c.WAKE_LOCKS_IN_10_MINUTES_EXCEEDED);
        this.f37881b = new j(bVar.e() * 1000, aVar, com.networkbench.agent.impl.performance.coulometry.a.a.c.WAKE_LOCK_DURATION_IN_10_MINUTES_EXCEEDED);
    }

    public void a(long j2, long j3, com.networkbench.agent.impl.performance.coulometry.c.d dVar) {
        this.d.a(new h(j3, j2));
        this.f37852f.set(this.d.b());
        if (!dVar.g && j2 - dVar.f37908a >= this.f37856k.d() * 1000) {
            this.f37855j.a(com.networkbench.agent.impl.performance.coulometry.a.a.c.SINGLE_WAKE_LOCK_DURATION_EXCEEDED, dVar.f37912f);
            com.networkbench.agent.impl.c.g.y("超过异常阈值(" + (this.f37856k.d() * 1000) + "), 单次 wakeLockDuration :" + (j2 - dVar.f37908a));
            dVar.g = true;
        } else if (dVar.g) {
            com.networkbench.agent.impl.c.g.y("已经触发过异常, 单次 wakeLockDuration :" + (j2 - dVar.f37908a));
        } else {
            com.networkbench.agent.impl.c.g.y("没有超过异常阈值(" + (this.f37856k.d() * 1000) + "), 单次 wakeLockDuration :" + (j2 - dVar.f37908a));
        }
        this.f37881b.a(dVar.b());
    }

    @Override // com.networkbench.agent.impl.performance.coulometry.b.b
    public void b() {
    }

    public void c() {
        this.f37881b.a(new h(System.currentTimeMillis(), System.currentTimeMillis()));
    }

    public void a(com.networkbench.agent.impl.performance.coulometry.c.d dVar) {
        this.f37880a.a(dVar.f37912f);
    }

    public com.networkbench.agent.impl.performance.coulometry.c.g a() {
        return this.f37882c;
    }

    @Override // com.networkbench.agent.impl.performance.coulometry.b.d
    public void a(boolean z) {
        l lVar;
        ConcurrentHashMap<Integer, com.networkbench.agent.impl.performance.coulometry.c.d> concurrentHashMapA = a().a().a();
        for (com.networkbench.agent.impl.performance.coulometry.c.d dVar : concurrentHashMapA.values()) {
            if (dVar != null) {
                dVar.f37910c = System.currentTimeMillis();
                lVar = this;
                lVar.a(System.currentTimeMillis(), dVar.f37909b, dVar);
                dVar.f37909b = System.currentTimeMillis();
            } else {
                lVar = this;
            }
            this = lVar;
        }
        l lVar2 = this;
        if (z) {
            concurrentHashMapA.clear();
            lVar2.f37880a.b();
            lVar2.f37881b.a();
        }
    }
}
