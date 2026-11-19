.class public Lcom/networkbench/agent/impl/util/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile b:Lcom/networkbench/agent/impl/util/c/c;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/c/c;->d()V

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/util/c/c;
    .locals 2

    .line 27
    sget-object v0, Lcom/networkbench/agent/impl/util/c/c;->b:Lcom/networkbench/agent/impl/util/c/c;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lcom/networkbench/agent/impl/util/c/c;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/util/c/c;->b:Lcom/networkbench/agent/impl/util/c/c;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/networkbench/agent/impl/util/c/c;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/util/c/c;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/util/c/c;->b:Lcom/networkbench/agent/impl/util/c/c;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 31
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    return-object v0
.end method

.method public static declared-synchronized c()Z
    .locals 2

    const-class v0, Lcom/networkbench/agent/impl/util/c/c;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/util/c/c;->b:Lcom/networkbench/agent/impl/util/c/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private d()V
    .locals 9

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    move v2, v0

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcom/networkbench/agent/impl/util/c/d;

    const-string v0, "Tingyun-GeneralThread"

    invoke-direct {v8, v0}, Lcom/networkbench/agent/impl/util/c/d;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/networkbench/agent/impl/util/c/c;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/c/c;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/c/c;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/c/c;->d()V

    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/c/c;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/c/c;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/networkbench/agent/impl/util/c/c;->b:Lcom/networkbench/agent/impl/util/c/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
