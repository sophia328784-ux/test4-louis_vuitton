.class public Lcom/networkbench/agent/impl/util/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "NBSSingleThreadExecutor"

.field private static b:Lcom/networkbench/agent/impl/util/c/a;

.field private static c:Lcom/networkbench/agent/impl/util/c/a;


# instance fields
.field private d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/util/c/a;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/util/c/a;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/util/c/a;->b:Lcom/networkbench/agent/impl/util/c/a;

    new-instance v0, Lcom/networkbench/agent/impl/util/c/a;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/util/c/a;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/util/c/a;->c:Lcom/networkbench/agent/impl/util/c/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/c/a;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "NBSSingleThreadExecutor"

    const-string v1, "init NBSSingleThreadExecutor failed"

    invoke-static {v0, v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/networkbench/agent/impl/util/c/a;
    .locals 3

    const-class v0, Lcom/networkbench/agent/impl/util/c/a;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/util/c/a;->b:Lcom/networkbench/agent/impl/util/c/a;

    iget-object v2, v1, Lcom/networkbench/agent/impl/util/c/a;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_0

    .line 28
    invoke-direct {v1}, Lcom/networkbench/agent/impl/util/c/a;->e()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    sget-object v1, Lcom/networkbench/agent/impl/util/c/a;->b:Lcom/networkbench/agent/impl/util/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized b()Lcom/networkbench/agent/impl/util/c/a;
    .locals 3

    const-class v0, Lcom/networkbench/agent/impl/util/c/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/util/c/a;->c:Lcom/networkbench/agent/impl/util/c/a;

    iget-object v2, v1, Lcom/networkbench/agent/impl/util/c/a;->d:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_0

    invoke-direct {v1}, Lcom/networkbench/agent/impl/util/c/a;->e()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/networkbench/agent/impl/util/c/a;->c:Lcom/networkbench/agent/impl/util/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized d()Z
    .locals 2

    const-class v0, Lcom/networkbench/agent/impl/util/c/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/util/c/a;->b:Lcom/networkbench/agent/impl/util/c/a;
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

.method private e()V
    .locals 2

    new-instance v0, Lcom/networkbench/agent/impl/util/c/d;

    const-string v1, "Tingyun-SingleThread"

    invoke-direct {v0, v1}, Lcom/networkbench/agent/impl/util/c/d;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/util/c/a;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/c/a;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/util/c/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/c/a;->e()V

    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/util/c/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/util/c/a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
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
