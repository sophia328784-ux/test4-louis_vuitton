package com.networkbench.agent.impl.performance.coulometry.b;

import defpackage.pq0;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<h> f37862a = pq0.v();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f37863b = 0;

    private void c() {
        this.f37863b = 0L;
        Collections.sort(this.f37862a, new Comparator<h>() { // from class: com.networkbench.agent.impl.performance.coulometry.b.g.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(h hVar, h hVar2) {
                return Long.compare(hVar.f37866b, hVar2.f37866b);
            }
        });
        long j2 = this.f37862a.get(0).f37866b;
        long jMax = this.f37862a.get(0).f37867c;
        for (int i2 = 1; i2 < this.f37862a.size(); i2++) {
            h hVar = this.f37862a.get(i2);
            long j3 = hVar.f37866b;
            if (j3 > jMax) {
                this.f37863b = (jMax - j2) + this.f37863b;
                j2 = j3;
            }
            jMax = Math.max(jMax, hVar.f37867c);
        }
        this.f37863b = (jMax - j2) + this.f37863b;
    }

    public void a(h hVar) {
        this.f37862a.add(hVar);
        c();
    }

    public int b() {
        return (int) this.f37863b;
    }

    public List<h> a() {
        return this.f37862a;
    }
}
