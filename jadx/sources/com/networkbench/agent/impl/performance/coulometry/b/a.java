package com.networkbench.agent.impl.performance.coulometry.b;

import com.networkbench.agent.impl.util.r;

/* JADX INFO: loaded from: classes2.dex */
public class a extends b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    i f37848a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    i f37849b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.networkbench.agent.impl.performance.coulometry.c.a.a f37850c;

    public a(com.networkbench.agent.impl.performance.coulometry.a.a.a aVar, com.networkbench.agent.impl.harvest.a.a.b bVar) {
        super(aVar, bVar);
        this.f37855j = aVar;
        this.f37850c = new com.networkbench.agent.impl.performance.coulometry.c.a.a(r.u().J(), this);
        this.f37848a = new i(bVar.h(), this.f37855j, com.networkbench.agent.impl.performance.coulometry.a.a.c.ALARMS_IN_10_MINUTES_EXCEEDED);
        this.f37849b = new i(bVar.g(), this.f37855j, com.networkbench.agent.impl.performance.coulometry.a.a.c.WAKE_UP_ALARMS_IN_10_MINUTES_EXCEEDED);
    }

    public void a(com.networkbench.agent.impl.performance.coulometry.c.d dVar) {
        if (dVar.d == 0 && !dVar.g) {
            this.f37849b.a(dVar.f37912f);
            dVar.g = true;
        }
        if (!dVar.f37913h) {
            this.f37848a.a(dVar.f37912f);
            dVar.f37913h = true;
        }
        c();
    }

    @Override // com.networkbench.agent.impl.performance.coulometry.b.b
    public void b() {
    }

    public void c() {
        this.g.incrementAndGet();
    }

    public com.networkbench.agent.impl.performance.coulometry.c.g a() {
        return this.f37850c;
    }

    @Override // com.networkbench.agent.impl.performance.coulometry.b.d
    public void a(boolean z) {
        if (z) {
            a().a().a().clear();
            this.f37848a.b();
            this.f37849b.b();
        }
    }
}
