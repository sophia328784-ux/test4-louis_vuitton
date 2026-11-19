package com.networkbench.agent.impl.harvest;

import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.harvest.b.b;
import com.networkbench.agent.impl.l.a;
import com.networkbench.agent.impl.n.c;
import com.networkbench.agent.impl.util.c.d;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.y;
import defpackage.d21;
import defpackage.z81;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class HarvestTimer implements Runnable {
    private static final long DEFAULT_HARVEST_PERIOD = 60000;
    private static final long HARVEST_PERIOD_LEEWAY = 1000;
    private static final long NEVER_TICKED = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ThreadPoolExecutor f37217a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final Harvester f37218b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected long f37219c;
    private long startTimeMs;
    private ScheduledFuture<?> tickFuture;
    private ScheduledExecutorService scheduler = Executors.newSingleThreadScheduledExecutor(new d("Tingyun-Harvest"));
    private final e log = f.a();
    private long period = 60000;
    private c userActions = new c(r.u().J());

    public HarvestTimer(Harvester harvester) {
        this.f37218b = harvester;
    }

    private void initScheduler() {
        this.scheduler = Executors.newSingleThreadScheduledExecutor(new d("Tingyun-Harvest"));
    }

    private long now() {
        return System.currentTimeMillis();
    }

    private void tickIfReady() {
        long jTimeSinceLastTick = timeSinceLastTick();
        if (1000 + jTimeSinceLastTick >= this.period || jTimeSinceLastTick == -1) {
            long jNow = now();
            try {
                a();
            } catch (Throwable th) {
                this.log.e("HarvestTimer: Exception in timer tick: " + th.getMessage());
                th.printStackTrace();
            }
            this.f37219c = jNow;
        }
    }

    public void a() {
        a aVar = new a();
        aVar.a();
        try {
            this.f37218b.f();
        } catch (Throwable th) {
            d21.C(th, new StringBuilder("HarvestTimer: Exception in harvest execute: "), this.log);
        }
        if (this.f37218b.isDisabled()) {
            stop();
        }
        aVar.b();
    }

    public long getPeriod() {
        return this.period;
    }

    public long getStartTimeMs() {
        return this.startTimeMs;
    }

    public c getUserActions() {
        return this.userActions;
    }

    public boolean isRunning() {
        return this.tickFuture != null;
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this) {
            try {
                tickIfReady();
                if (b.a().i()) {
                    g.l("useraction  HarvestTimer gather  begin !!");
                    this.userActions.b();
                    com.networkbench.agent.impl.n.f.a().b();
                }
            } catch (Throwable th) {
                g.p("HarvestTimer: Exception in timer tick: " + th.getMessage());
                th.printStackTrace();
            }
        }
    }

    public void setPeriod(long j2) {
        this.period = j2;
    }

    public void start() {
        try {
            if (isRunning()) {
                this.log.f("HarvestTimer: Attempting to start while already running");
                return;
            }
            if (this.period <= 0) {
                this.log.e("HarvestTimer: Refusing to start with a period of 0 ms");
                return;
            }
            this.startTimeMs = System.currentTimeMillis();
            ScheduledExecutorService scheduledExecutorService = this.scheduler;
            if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
                initScheduler();
            }
            this.tickFuture = this.scheduler.scheduleWithFixedDelay(this, 0L, this.period, TimeUnit.MILLISECONDS);
            this.f37218b.start();
        } catch (Throwable th) {
            g.k("HarvestTimer start has an error : " + th.getMessage());
        }
    }

    public void stop() {
        if (!isRunning()) {
            this.log.f("HarvestTimer: Attempting to stop when not running");
            return;
        }
        Harvest.isUser_action_enabled();
        this.startTimeMs = 0L;
        this.f37218b.stop();
        this.tickFuture.cancel(true);
        this.tickFuture = null;
        try {
            ScheduledExecutorService scheduledExecutorService = this.scheduler;
            if (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) {
                return;
            }
            this.scheduler.shutdown();
        } catch (Throwable th) {
            z81.k(new StringBuilder("HarvestTimer stop  has an error : "), th);
        }
    }

    public void tickNow() {
        try {
            ScheduledExecutorService scheduledExecutorService = this.scheduler;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.schedule(new y() { // from class: com.networkbench.agent.impl.harvest.HarvestTimer.1
                    @Override // com.networkbench.agent.impl.util.y
                    public void tryCatchRun() {
                        this.a();
                    }
                }, 0L, TimeUnit.SECONDS);
            } else {
                g.p("HarvestTimer tickNow  scheduler  == null  ");
            }
        } catch (Throwable th) {
            try {
                this.log.e("tickNow has an  error : " + th.toString());
            } catch (Throwable th2) {
                this.log.e("tickNow has an  error : " + th2.toString());
            }
        }
    }

    public long timeSinceLastTick() {
        if (this.f37219c == 0) {
            return -1L;
        }
        return now() - this.f37219c;
    }

    public long timeSinceStart() {
        if (this.startTimeMs == 0) {
            return 0L;
        }
        return now() - this.startTimeMs;
    }
}
