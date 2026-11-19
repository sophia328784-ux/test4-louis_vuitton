.class public Lorg/squirrelframework/foundation/component/SquirrelConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 4

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x78

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x1

    invoke-static {v3, v0, v1, v2}, Lorg/squirrelframework/foundation/component/SquirrelConfiguration;->registerNewExecutorService(IJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getScheduler()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 4

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;

    move-result-object v0

    const-class v1, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x78

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x1

    invoke-static {v3, v0, v1, v2}, Lorg/squirrelframework/foundation/component/SquirrelConfiguration;->registerNewSchedulerService(IJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static registerNewExecutorService(IJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    invoke-static {p0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/MoreExecutors;->a(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;

    move-result-object p1

    const-class p2, Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, p2, p0}, Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;->register(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static registerNewSchedulerService(IJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    invoke-static {p0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/MoreExecutors;->a(Ljava/util/concurrent/ExecutorService;JLjava/util/concurrent/TimeUnit;)V

    invoke-static {}, Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;->getInstance()Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;

    move-result-object p1

    const-class p2, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {p1, p2, p0}, Lorg/squirrelframework/foundation/component/SquirrelSingletonProvider;->register(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object p0
.end method
