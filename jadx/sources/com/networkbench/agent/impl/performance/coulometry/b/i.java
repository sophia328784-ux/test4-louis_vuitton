package com.networkbench.agent.impl.performance.coulometry.b;

import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    com.networkbench.agent.impl.performance.coulometry.a.a.a f37868a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    com.networkbench.agent.impl.performance.coulometry.a.a.c f37869b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    StackTraceElement[] f37870c;
    private int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Queue<Long> f37871e = new LinkedList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private AtomicBoolean f37872f = new AtomicBoolean(false);

    public i(int i2, com.networkbench.agent.impl.performance.coulometry.a.a.a aVar, com.networkbench.agent.impl.performance.coulometry.a.a.c cVar) {
        this.d = 10;
        this.d = i2;
        this.f37868a = aVar;
        this.f37869b = cVar;
        com.networkbench.agent.impl.c.g.y("TrackerCount threshold:" + i2);
    }

    public synchronized void a(StackTraceElement[] stackTraceElementArr) {
        try {
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (this.f37872f.get()) {
                if (this.f37871e.isEmpty() || jCurrentTimeMillis - this.f37871e.peek().longValue() <= j.f37873a) {
                    com.networkbench.agent.impl.c.g.y("addTask  已经触发异常,不再计算数据, type:" + this.f37869b);
                    return;
                } else {
                    com.networkbench.agent.impl.c.g.y("addTask  超出了滑动窗口,需要清空数据, type:" + this.f37869b);
                    b();
                }
            }
            this.f37870c = stackTraceElementArr;
            this.f37871e.add(Long.valueOf(jCurrentTimeMillis));
            while (!this.f37871e.isEmpty() && jCurrentTimeMillis - this.f37871e.peek().longValue() > j.f37873a) {
                this.f37871e.poll();
            }
            if (this.f37871e.size() < this.d || this.f37872f.getAndSet(true)) {
                com.networkbench.agent.impl.c.g.y("这次异常是否发送过了 :" + this.f37872f.get());
                com.networkbench.agent.impl.c.g.y("addTask   slidingWindow.size() : " + this.f37871e.size());
            } else {
                com.networkbench.agent.impl.c.g.y("次数计算的滑动窗口count 计数已经达到阈值....." + this.f37871e.size());
                this.f37868a.a(this.f37869b, this.f37870c);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void b() {
        this.f37871e.clear();
        this.f37872f.set(false);
    }

    public synchronized int a() {
        return this.f37871e.size();
    }
}
