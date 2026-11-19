.class public Lcom/networkbench/agent/impl/harvest/HarvestTimer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_HARVEST_PERIOD:J = 0xea60L

.field private static final HARVEST_PERIOD_LEEWAY:J = 0x3e8L

.field private static final NEVER_TICKED:J = -0x1L


# instance fields
.field a:Ljava/util/concurrent/ThreadPoolExecutor;

.field protected final b:Lcom/networkbench/agent/impl/harvest/Harvester;

.field protected c:J

.field private final log:Lcom/networkbench/agent/impl/c/e;

.field private period:J

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private startTimeMs:J

.field private tickFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private userActions:Lcom/networkbench/agent/impl/n/c;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/harvest/Harvester;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/util/c/d;

    const-string v1, "Tingyun-Harvest"

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/util/c/d;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->log:Lcom/networkbench/agent/impl/c/e;

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->period:J

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->b:Lcom/networkbench/agent/impl/harvest/Harvester;

    new-instance p1, Lcom/networkbench/agent/impl/n/c;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/networkbench/agent/impl/n/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->userActions:Lcom/networkbench/agent/impl/n/c;

    return-void
.end method

.method private initScheduler()V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/util/c/d;

    const-string v1, "Tingyun-Harvest"

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/util/c/d;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private now()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private tickIfReady()V
    .locals 6

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->timeSinceLastTick()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v2, v0

    iget-wide v4, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->period:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->now()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "HarvestTimer: Exception in timer tick: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iput-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->c:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    new-instance v0, Lcom/networkbench/agent/impl/l/a;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/l/a;-><init>()V

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/l/a;->a()V

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->b:Lcom/networkbench/agent/impl/harvest/Harvester;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/Harvester;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "HarvestTimer: Exception in harvest execute: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v2}, Ld21;->C(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Lcom/networkbench/agent/impl/c/e;)V

    :goto_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->b:Lcom/networkbench/agent/impl/harvest/Harvester;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/Harvester;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->stop()V

    :cond_0
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/l/a;->b()J

    return-void
.end method

.method public getPeriod()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->period:J

    return-wide v0
.end method

.method public getStartTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->startTimeMs:J

    return-wide v0
.end method

.method public getUserActions()Lcom/networkbench/agent/impl/n/c;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->userActions:Lcom/networkbench/agent/impl/n/c;

    return-object p0
.end method

.method public isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->tickFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public run()V
    .locals 3

    const-string v0, "HarvestTimer: Exception in timer tick: "

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->tickIfReady()V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/b;->a()Lcom/networkbench/agent/impl/harvest/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/b/b;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "useraction  HarvestTimer gather  begin !!"

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->l(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->userActions:Lcom/networkbench/agent/impl/n/c;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/n/c;->b()V

    invoke-static {}, Lcom/networkbench/agent/impl/n/f;->a()Lcom/networkbench/agent/impl/n/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/n/f;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public setPeriod(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->period:J

    return-void
.end method

.method public start()V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "HarvestTimer: Attempting to start while already running"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->period:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "HarvestTimer: Refusing to start with a period of 0 ms"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->startTimeMs:J

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->initScheduler()V

    :cond_3
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v4, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->period:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    iput-object p0, v1, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->tickFuture:Ljava/util/concurrent/ScheduledFuture;

    iget-object p0, v1, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->b:Lcom/networkbench/agent/impl/harvest/Harvester;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/Harvester;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HarvestTimer start has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->k(Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 2

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "HarvestTimer: Attempting to stop when not running"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->isUser_action_enabled()Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->startTimeMs:J

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->b:Lcom/networkbench/agent/impl/harvest/Harvester;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvester;->stop()V

    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->tickFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->tickFuture:Ljava/util/concurrent/ScheduledFuture;

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HarvestTimer stop  has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    return-void
.end method

.method public tickNow()V
    .locals 6

    const-string v0, "tickNow has an  error : "

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/networkbench/agent/impl/harvest/HarvestTimer$1;

    invoke-direct {v2, p0, p0}, Lcom/networkbench/agent/impl/harvest/HarvestTimer$1;-><init>(Lcom/networkbench/agent/impl/harvest/HarvestTimer;Lcom/networkbench/agent/impl/harvest/HarvestTimer;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    const-string v1, "HarvestTimer tickNow  scheduler  == null  "

    invoke-static {v1}, Lcom/networkbench/agent/impl/c/g;->p(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public timeSinceLastTick()J
    .locals 4

    iget-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->c:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public timeSinceStart()J
    .locals 4

    iget-wide v0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->startTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->startTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
