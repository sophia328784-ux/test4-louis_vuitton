.class public Lcom/networkbench/agent/impl/instrumentation/NBSThreadPoolInstrument;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final controller:Lcom/networkbench/agent/impl/asyncaction/g;

.field private static final log:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSThreadPoolInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Lcom/networkbench/agent/impl/asyncaction/g;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/asyncaction/g;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSThreadPoolInstrument;->controller:Lcom/networkbench/agent/impl/asyncaction/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/networkbench/agent/impl/instrumentation/NBSThreadPoolInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "execute executorServer instanceof ExecutorService"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSThreadPoolInstrument;->proxyRunnable(Ljava/lang/Object;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSThreadPoolInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "schedule error:"

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    throw v0
.end method

.method private static proxyCallable(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 1

    if-eqz p0, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSThreadPoolInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "object is instanceOf ExecutorService"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSThreadPoolInstrument;->controller:Lcom/networkbench/agent/impl/asyncaction/g;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/g;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1

    :cond_1
    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSThreadPoolInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "object is not instanceOf ExecutorService, not instrument"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-object p1
.end method

.method private static proxyRunnable(Ljava/lang/Object;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    sget-object p0, Lcom/networkbench/agent/impl/instrumentation/NBSThreadPoolInstrument;->controller:Lcom/networkbench/agent/impl/asyncaction/g;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/g;->a(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static schedule(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/lang/Runnable;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSThreadPoolInstrument;->proxyRunnable(Ljava/lang/Object;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSThreadPoolInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "schedule error:"

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0

    :catchall_1
    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static scheduleAtFixedRate(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/lang/Runnable;",
            "JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSThreadPoolInstrument;->proxyRunnable(Ljava/lang/Object;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface/range {p0 .. p6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    move-object v1, p0

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    move-object p0, v0

    :try_start_1
    sget-object p2, Lcom/networkbench/agent/impl/instrumentation/NBSThreadPoolInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string p3, "scheduleAtFixedRate error:"

    invoke-interface {p2, p3, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0

    :catchall_1
    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method

.method public static submit(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSThreadPoolInstrument;->proxyRunnable(Ljava/lang/Object;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSThreadPoolInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "submit error:"

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :catchall_1
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public static submit(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 27
    :try_start_0
    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSThreadPoolInstrument;->proxyCallable(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    .line 29
    :try_start_1
    sget-object v1, Lcom/networkbench/agent/impl/instrumentation/NBSThreadPoolInstrument;->log:Lcom/networkbench/agent/impl/c/e;

    const-string v2, "submit error:"

    invoke-interface {v1, v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :catchall_1
    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method
