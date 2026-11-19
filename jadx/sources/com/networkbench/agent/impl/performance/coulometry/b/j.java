package com.networkbench.agent.impl.performance.coulometry.b;

import java.util.Comparator;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f37873a = 600000;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.networkbench.agent.impl.performance.coulometry.a.a.a f37875c;
    com.networkbench.agent.impl.performance.coulometry.a.a.c d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f37876e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected AtomicBoolean f37874b = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TreeSet<h> f37877f = new TreeSet<>(new Comparator<h>() { // from class: com.networkbench.agent.impl.performance.coulometry.b.j.1
        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(h hVar, h hVar2) {
            return hVar.a() != hVar2.a() ? Long.compare(hVar.a(), hVar2.a()) : Long.compare(hVar.b(), hVar2.b());
        }
    });

    public j(int i2, com.networkbench.agent.impl.performance.coulometry.a.a.a aVar, com.networkbench.agent.impl.performance.coulometry.a.a.c cVar) {
        this.f37876e = i2;
        this.f37875c = aVar;
        this.d = cVar;
    }

    public synchronized void a(h hVar) {
        try {
            if (this.f37874b.get()) {
                if (hVar.b() - this.f37877f.first().b() < f37873a) {
                    com.networkbench.agent.impl.c.g.y("addTask  已经触发异常,不再计算数据, type:" + this.d);
                    return;
                } else {
                    com.networkbench.agent.impl.c.g.y("addTask  超出了滑动窗口,需要清空数据, type:" + this.d);
                    if (hVar.a() < this.f37877f.last().b()) {
                        hVar.a(this.f37877f.last().b());
                    }
                    a();
                }
            }
            com.networkbench.agent.impl.c.g.y("addTask:" + hVar.toString());
            this.f37877f.add(hVar);
            a(hVar.b());
            long jB = b();
            if (jB < this.f37876e || this.f37874b.get()) {
                com.networkbench.agent.impl.c.g.y("这次异常是否发送过了 :" + this.f37874b.get());
                com.networkbench.agent.impl.c.g.y("addTask  totalTime:" + jB + "---  thresholdCount:" + this.f37876e);
            } else {
                com.networkbench.agent.impl.c.g.y("占用时间计数的滑动窗口totalTime 已经达到阈值....." + this.f37876e);
                this.f37875c.a(this.d, hVar.c());
                this.f37874b.set(true);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public long b() {
        long j2 = 0;
        if (this.f37877f.isEmpty()) {
            return 0L;
        }
        long jA = this.f37877f.first().a();
        long jB = this.f37877f.first().b();
        for (h hVar : this.f37877f) {
            if (hVar.a() > jB) {
                long j3 = (jB - jA) + j2;
                jA = hVar.a();
                j2 = j3;
                jB = hVar.b();
            } else {
                jB = Math.max(jB, hVar.b());
            }
        }
        return (jB - jA) + j2;
    }

    public synchronized void b(h hVar) {
        this.f37877f.remove(hVar);
    }

    public void a() {
        this.f37877f.clear();
        this.f37874b.set(false);
    }

    private void a(long j2) {
        while (!this.f37877f.isEmpty() && j2 - this.f37877f.first().b() > f37873a) {
            this.f37877f.pollFirst();
        }
    }
}
