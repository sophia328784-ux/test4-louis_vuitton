package com.networkbench.agent.impl.b.a;

import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.y;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f36470b = "ANR.NBSStackService";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ScheduledFuture<?> f36471a;
    private int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f36473e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Thread f36474f;
    private ScheduledExecutorService g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f36476i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f36477j;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f36472c = 10000;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final ConcurrentLinkedQueue<b> f36475h = new ConcurrentLinkedQueue<>();

    public a(int i2, Thread thread, int i3) throws Exception {
        this.d = 100;
        if (i2 == 0) {
            throw new Exception("interval ==0 , stop running!!!");
        }
        this.d = i2;
        this.f36476i = false;
        this.f36477j = i3;
        e();
        this.f36474f = thread;
    }

    private void a(int i2) {
        if (this.f36476i) {
            return;
        }
        this.f36476i = true;
        if (this.d == -1) {
            this.d = ak.h() / 5;
            this.f36473e = 6;
        } else {
            this.d = i2;
            a(ak.h() - this.f36477j, this.d);
        }
        Logger.debug(f36470b, "interval:" + this.d + ", maxCount:" + this.f36473e);
    }

    private void e() {
        this.g = Executors.newSingleThreadScheduledExecutor();
    }

    public void b() {
        try {
            ScheduledFuture<?> scheduledFuture = this.f36471a;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
                this.f36471a = null;
            }
            ScheduledExecutorService scheduledExecutorService = this.g;
            if (scheduledExecutorService != null && !scheduledExecutorService.isShutdown()) {
                this.g.shutdown();
            }
            this.f36475h.clear();
        } catch (Throwable unused) {
        }
    }

    public List<b> c() {
        ArrayList arrayList = new ArrayList(this.f36475h);
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            b bVar = (b) arrayList.get(i2);
            if (i2 < this.f36473e - 1) {
                arrayList2.add(bVar);
            }
        }
        return arrayList2;
    }

    public void d() {
        this.f36475h.clear();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NBSStackService{MAX_TIME=10000, isRunning=");
        sb.append(this.f36471a != null);
        sb.append(", interval=");
        sb.append(this.d);
        sb.append(", maxCount=");
        sb.append(this.f36473e);
        sb.append(", mainThread=");
        sb.append(this.f36474f);
        sb.append(", scheduler=");
        sb.append(this.g);
        sb.append(", stackTraceQueue=");
        sb.append(this.f36475h);
        sb.append('}');
        return sb.toString();
    }

    private void a(int i2, int i3) {
        if (i2 % i3 == 0) {
            this.f36473e = (i2 / i3) + 1;
        } else {
            this.f36473e = ((int) Math.ceil(new Double(i2).doubleValue() / new Double(i3).doubleValue())) + 1;
        }
    }

    public void a() {
        if (this.f36471a != null) {
            return;
        }
        a(this.d);
        ScheduledExecutorService scheduledExecutorService = this.g;
        if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
            e();
        }
        d();
        this.f36471a = this.g.scheduleWithFixedDelay(new y() { // from class: com.networkbench.agent.impl.b.a.a.1
            @Override // com.networkbench.agent.impl.util.y
            public void tryCatchRun() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                StackTraceElement[] stackTrace = a.this.f36474f.getStackTrace();
                if (stackTrace == null || stackTrace.length == 0) {
                    Logger.debug(a.f36470b, "stackTraceElements is null or empty");
                    return;
                }
                if (stackTrace[0] == null) {
                    Logger.debug(a.f36470b, "stackTraceElements[0] is null");
                    return;
                }
                b bVar = new b(jCurrentTimeMillis, stackTrace);
                if (a.this.f36475h.size() >= a.this.f36473e) {
                    a.this.f36475h.poll();
                }
                a.this.f36475h.offer(bVar);
            }
        }, 0L, this.d, TimeUnit.MILLISECONDS);
    }
}
