.class public Lcom/networkbench/agent/impl/util/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/networkbench/agent/impl/c/e;

.field private b:Ljava/util/concurrent/ScheduledExecutorService;

.field private c:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/c/e;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Lcom/networkbench/agent/impl/util/c/d;

    const-string v1, "Tingyun-Plugin"

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/util/c/d;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/c/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private c()V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/util/c/d;

    const-string v1, "Tingyun-Plugin"

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/util/c/d;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/c/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/c/e;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 44
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/networkbench/agent/impl/util/c/e;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/c/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/c/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/Runnable;II)V
    .locals 8

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/c/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/c/e;->a:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "scheduler is running, so start return"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/util/c/e;->d:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/c/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/c/e;->c()V

    :cond_2
    iget-object v1, p0, Lcom/networkbench/agent/impl/util/c/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v3, p3

    int-to-long v5, p2

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/util/c/e;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/util/c/e;->c:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
