.class public final Lcom/appsflyer/internal/AFe1wSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFe1wSDK$AFa1ySDK;,
        Lcom/appsflyer/internal/AFe1wSDK$AFa1uSDK;
    }
.end annotation


# instance fields
.field private final AFKeystoreWrapper:Ljava/util/concurrent/ExecutorService;

.field private final AFLogger:Ljava/util/Timer;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/appsflyer/internal/AFe1zSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Lcom/appsflyer/internal/AFe1ySDK<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final force:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/appsflyer/internal/AFe1zSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Lcom/appsflyer/internal/AFe1ySDK<",
            "*>;>;"
        }
    .end annotation
.end field

.field private registerClient:Ljava/util/concurrent/Executor;

.field public final unregisterClient:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/AFe1vSDK;",
            ">;"
        }
    .end annotation
.end field

.field private final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/AFe1ySDK<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final w:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/appsflyer/internal/AFe1ySDK<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1wSDK;->AFKeystoreWrapper:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1wSDK;->registerClient:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/util/Timer;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/Timer;-><init>(Z)V

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1wSDK;->AFLogger:Ljava/util/Timer;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1wSDK;->unregisterClient:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1wSDK;->d:Ljava/util/Set;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1wSDK;->force:Ljava/util/Set;

    new-instance p1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1wSDK;->i:Ljava/util/NavigableSet;

    new-instance p1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1wSDK;->e:Ljava/util/NavigableSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1wSDK;->v:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1wSDK;->w:Ljava/util/Set;

    return-void
.end method

.method private static final AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1wSDK;Lcom/appsflyer/internal/AFe1ySDK;)V
    .locals 1

    iget-object p0, p0, Lcom/appsflyer/internal/AFe1wSDK;->unregisterClient:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFe1vSDK;

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFe1vSDK;->registerClient(Lcom/appsflyer/internal/AFe1ySDK;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final AFLogger(Lcom/appsflyer/internal/AFe1wSDK;)V
    .locals 11

    const-string v0, "starting task execution: "

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1wSDK;->i:Ljava/util/NavigableSet;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1wSDK;->i:Ljava/util/NavigableSet;

    invoke-interface {v2}, Ljava/util/NavigableSet;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFe1ySDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/appsflyer/internal/AFe1wSDK;->w:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFe1ySDK;->d()J

    move-result-wide v3

    new-instance v1, Lcom/appsflyer/internal/AFe1sSDK;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v5}, Lcom/appsflyer/internal/AFe1sSDK;-><init>(Ljava/lang/Thread;)V

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/appsflyer/internal/AFe1wSDK;->AFLogger:Ljava/util/Timer;

    invoke-virtual {v5, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    iget-object v3, p0, Lcom/appsflyer/internal/AFe1wSDK;->registerClient:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/appsflyer/internal/o;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v2, v5}, Lcom/appsflyer/internal/o;-><init>(Lcom/appsflyer/internal/AFe1wSDK;Lcom/appsflyer/internal/AFe1ySDK;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/appsflyer/internal/AFe1wSDK;->i:Ljava/util/NavigableSet;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/appsflyer/internal/AFe1wSDK;->AFKeystoreWrapper:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/appsflyer/internal/g;

    const/4 v5, 0x3

    invoke-direct {v4, p0, v5}, Lcom/appsflyer/internal/g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    const/4 v3, 0x0

    :try_start_2
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v5, Lcom/appsflyer/sdk_base/logger/LogTag;->QUEUE:Lcom/appsflyer/sdk_base/logger/LogTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {v2}, Lcom/appsflyer/internal/AFe1ySDK;->v()Lcom/appsflyer/internal/AFd1cSDK;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    iget-object v4, p0, Lcom/appsflyer/internal/AFe1wSDK;->registerClient:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/appsflyer/internal/p;

    invoke-direct {v5, v2, v0, p0, v3}, Lcom/appsflyer/internal/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    sget-object v0, Lcom/appsflyer/internal/AFd1cSDK;->registerClient:Lcom/appsflyer/internal/AFd1cSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1wSDK;->registerClient:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/appsflyer/internal/p;

    invoke-direct {v4, v2, v0, p0, v3}, Lcom/appsflyer/internal/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    sget-object v5, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v6, Lcom/appsflyer/sdk_base/logger/LogTag;->QUEUE:Lcom/appsflyer/sdk_base/logger/LogTag;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "task was interrupted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/appsflyer/internal/AFd1cSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1cSDK;

    iput-object v0, v2, Lcom/appsflyer/internal/AFe1ySDK;->w:Lcom/appsflyer/internal/AFd1cSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1wSDK;->registerClient:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/appsflyer/internal/p;

    invoke-direct {v4, v2, v0, p0, v3}, Lcom/appsflyer/internal/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catch_1
    sget-object v5, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v6, Lcom/appsflyer/sdk_base/logger/LogTag;->QUEUE:Lcom/appsflyer/sdk_base/logger/LogTag;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "task was interrupted: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lcom/appsflyer/internal/AFd1cSDK;->unregisterClient:Lcom/appsflyer/internal/AFd1cSDK;

    iput-object v0, v2, Lcom/appsflyer/internal/AFe1ySDK;->w:Lcom/appsflyer/internal/AFd1cSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1wSDK;->registerClient:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/appsflyer/internal/p;

    invoke-direct {v4, v2, v0, p0, v3}, Lcom/appsflyer/internal/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0
.end method

.method public static synthetic a(Lcom/appsflyer/internal/AFe1wSDK;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFe1wSDK;->AFLogger(Lcom/appsflyer/internal/AFe1wSDK;)V

    return-void
.end method

.method public static synthetic b(Lcom/appsflyer/internal/AFe1ySDK;Lcom/appsflyer/internal/AFd1cSDK;Lcom/appsflyer/internal/AFe1wSDK;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/appsflyer/internal/AFe1wSDK;->unregisterClient(Lcom/appsflyer/internal/AFe1ySDK;Lcom/appsflyer/internal/AFd1cSDK;Lcom/appsflyer/internal/AFe1wSDK;)V

    return-void
.end method

.method public static synthetic c(Lcom/appsflyer/internal/AFe1wSDK;Lcom/appsflyer/internal/AFe1ySDK;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/appsflyer/internal/AFe1wSDK;->unregisterClient(Lcom/appsflyer/internal/AFe1wSDK;Lcom/appsflyer/internal/AFe1ySDK;)V

    return-void
.end method

.method public static synthetic d(Lcom/appsflyer/internal/AFe1wSDK;Lcom/appsflyer/internal/AFe1ySDK;)V
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lcom/appsflyer/internal/AFe1wSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1wSDK;Lcom/appsflyer/internal/AFe1ySDK;)V

    return-void
.end method

.method private final d(Ljava/util/NavigableSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "Lcom/appsflyer/internal/AFe1ySDK<",
            "*>;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/NavigableSet;->pollFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsflyer/internal/AFe1ySDK;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1wSDK;->d:Ljava/util/Set;

    iget-object v1, p1, Lcom/appsflyer/internal/AFe1ySDK;->unregisterClient:Lcom/appsflyer/internal/AFe1zSDK;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/appsflyer/internal/AFe1wSDK;->unregisterClient:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFe1vSDK;

    invoke-interface {v0, p1}, Lcom/appsflyer/internal/AFe1vSDK;->unregisterClient(Lcom/appsflyer/internal/AFe1ySDK;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private final registerClient(Lcom/appsflyer/internal/AFe1ySDK;)Lcom/appsflyer/internal/AFe1wSDK$AFa1ySDK;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1ySDK<",
            "*>;)",
            "Lcom/appsflyer/internal/AFe1wSDK$AFa1ySDK;"
        }
    .end annotation

    const-string v0, "tried to add already scheduled task: "

    const-string v1, "tried to add already running task: "

    iget-object v2, p0, Lcom/appsflyer/internal/AFe1wSDK;->i:Ljava/util/NavigableSet;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/appsflyer/internal/AFe1wSDK;->w:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v5, Lcom/appsflyer/sdk_base/logger/LogTag;->QUEUE:Lcom/appsflyer/sdk_base/logger/LogTag;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p0, Lcom/appsflyer/internal/AFe1wSDK$AFa1ySDK;->registerClient:Lcom/appsflyer/internal/AFe1wSDK$AFa1ySDK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1wSDK;->i:Ljava/util/NavigableSet;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1wSDK;->e:Ljava/util/NavigableSet;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p1, Lcom/appsflyer/internal/AFe1ySDK;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFe1zSDK;

    iget-object v3, p0, Lcom/appsflyer/internal/AFe1wSDK;->force:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p1, Lcom/appsflyer/internal/AFe1ySDK;->AFLogger:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1wSDK;->d:Ljava/util/Set;

    iget-object v1, p1, Lcom/appsflyer/internal/AFe1ySDK;->AFLogger:Ljava/util/Set;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/appsflyer/internal/AFe1wSDK;->i:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1wSDK;->e:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/sdk_base/logger/LogTag;->QUEUE:Lcom/appsflyer/sdk_base/logger/LogTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new task was blocked: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFe1ySDK;->w()V

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    iget-object p1, p0, Lcom/appsflyer/internal/AFe1wSDK;->i:Ljava/util/NavigableSet;

    iget-object v0, p0, Lcom/appsflyer/internal/AFe1wSDK;->v:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, Lcom/appsflyer/internal/AFe1wSDK;->v:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    sget-object p0, Lcom/appsflyer/internal/AFe1wSDK$AFa1ySDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1wSDK$AFa1ySDK;

    goto :goto_2

    :cond_6
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/sdk_base/logger/LogTag;->QUEUE:Lcom/appsflyer/sdk_base/logger/LogTag;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "task not added, it\'s already in the queue: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p0, Lcom/appsflyer/internal/AFe1wSDK$AFa1ySDK;->d:Lcom/appsflyer/internal/AFe1wSDK$AFa1ySDK;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit v2

    return-object p0

    :cond_7
    :goto_3
    :try_start_2
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/sdk_base/logger/LogTag;->QUEUE:Lcom/appsflyer/sdk_base/logger/LogTag;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object p0, Lcom/appsflyer/internal/AFe1wSDK$AFa1ySDK;->registerClient:Lcom/appsflyer/internal/AFe1wSDK$AFa1ySDK;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object p0

    :goto_4
    monitor-exit v2

    throw p0
.end method

.method private final unregisterClient()V
    .locals 6

    .line 233
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1wSDK;->i:Ljava/util/NavigableSet;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1wSDK;->e:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    .line 235
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appsflyer/internal/AFe1ySDK;

    .line 237
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 238
    iget-object v4, p0, Lcom/appsflyer/internal/AFe1wSDK;->d:Ljava/util/Set;

    .line 239
    iget-object v5, v3, Lcom/appsflyer/internal/AFe1ySDK;->AFLogger:Ljava/util/Set;

    .line 240
    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 242
    iget-object v2, p0, Lcom/appsflyer/internal/AFe1wSDK;->i:Ljava/util/NavigableSet;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 243
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1wSDK;->AFKeystoreWrapper:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/appsflyer/internal/g;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/appsflyer/internal/g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private static final unregisterClient(Lcom/appsflyer/internal/AFe1wSDK;Lcom/appsflyer/internal/AFe1ySDK;)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/appsflyer/internal/AFe1wSDK;->registerClient(Lcom/appsflyer/internal/AFe1ySDK;)Lcom/appsflyer/internal/AFe1wSDK$AFa1ySDK;

    move-result-object v0

    sget-object v1, Lcom/appsflyer/internal/AFe1wSDK$AFa1uSDK;->AFKeystoreWrapper:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/appsflyer/internal/AFe1wSDK;->force:Ljava/util/Set;

    iget-object v2, p1, Lcom/appsflyer/internal/AFe1ySDK;->unregisterClient:Lcom/appsflyer/internal/AFe1zSDK;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v4, Lcom/appsflyer/sdk_base/logger/LogTag;->QUEUE:Lcom/appsflyer/sdk_base/logger/LogTag;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "new task added: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Lcom/appsflyer/internal/AFe1wSDK;->unregisterClient:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFe1vSDK;

    invoke-interface {v2, p1}, Lcom/appsflyer/internal/AFe1vSDK;->d(Lcom/appsflyer/internal/AFe1ySDK;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/appsflyer/internal/AFe1wSDK;->AFKeystoreWrapper:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/appsflyer/internal/g;

    invoke-direct {v0, p0, v1}, Lcom/appsflyer/internal/g;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object p1, p0, Lcom/appsflyer/internal/AFe1wSDK;->i:Ljava/util/NavigableSet;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1wSDK;->i:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1wSDK;->e:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x28

    :goto_1
    if-lez v0, :cond_5

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1wSDK;->e:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    iget-object v2, p0, Lcom/appsflyer/internal/AFe1wSDK;->i:Ljava/util/NavigableSet;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1wSDK;->i:Ljava/util/NavigableSet;

    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFe1ySDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFe1wSDK;->e:Ljava/util/NavigableSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsflyer/internal/AFe1ySDK;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcom/appsflyer/internal/AFe1ySDK;->unregisterClient(Lcom/appsflyer/internal/AFe1ySDK;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1wSDK;->i:Ljava/util/NavigableSet;

    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFe1wSDK;->d(Ljava/util/NavigableSet;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1wSDK;->e:Ljava/util/NavigableSet;

    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFe1wSDK;->d(Ljava/util/NavigableSet;)V

    goto :goto_2

    :cond_2
    if-nez v2, :cond_3

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1wSDK;->i:Ljava/util/NavigableSet;

    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFe1wSDK;->d(Ljava/util/NavigableSet;)V

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/appsflyer/internal/AFe1wSDK;->e:Ljava/util/NavigableSet;

    invoke-direct {p0, v1}, Lcom/appsflyer/internal/AFe1wSDK;->d(Ljava/util/NavigableSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1

    throw p0

    :cond_6
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_7
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->QUEUE:Lcom/appsflyer/sdk_base/logger/LogTag;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "QUEUE: tried to add already pending task: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->w$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_8
    return-void
.end method

.method private static final unregisterClient(Lcom/appsflyer/internal/AFe1ySDK;Lcom/appsflyer/internal/AFd1cSDK;Lcom/appsflyer/internal/AFe1wSDK;)V
    .locals 6

    .line 211
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/sdk_base/logger/LogTag;->QUEUE:Lcom/appsflyer/sdk_base/logger/LogTag;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "execution finished for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;->d$default(Lcom/appsflyer/sdk_base/logger/AFLoggerBase;Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 212
    iget-object v0, p2, Lcom/appsflyer/internal/AFe1wSDK;->w:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p2, Lcom/appsflyer/internal/AFe1wSDK;->unregisterClient:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsflyer/internal/AFe1vSDK;

    .line 214
    invoke-interface {v1, p0, p1}, Lcom/appsflyer/internal/AFe1vSDK;->AFKeystoreWrapper(Lcom/appsflyer/internal/AFe1ySDK;Lcom/appsflyer/internal/AFd1cSDK;)V

    goto :goto_0

    .line 215
    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFd1cSDK;->d:Lcom/appsflyer/internal/AFd1cSDK;

    if-ne p1, v0, :cond_1

    .line 216
    iget-object p1, p2, Lcom/appsflyer/internal/AFe1wSDK;->d:Ljava/util/Set;

    .line 217
    iget-object p0, p0, Lcom/appsflyer/internal/AFe1ySDK;->unregisterClient:Lcom/appsflyer/internal/AFe1zSDK;

    .line 218
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-direct {p2}, Lcom/appsflyer/internal/AFe1wSDK;->unregisterClient()V

    return-void

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFe1ySDK;->AFLogger()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 221
    instance-of p1, p0, Lcom/appsflyer/internal/AFf1sSDK;

    if-eqz p1, :cond_3

    move-object p1, p0

    check-cast p1, Lcom/appsflyer/internal/AFf1sSDK;

    .line 222
    iget-object p1, p1, Lcom/appsflyer/internal/AFe1ySDK;->unregisterClient:Lcom/appsflyer/internal/AFe1zSDK;

    .line 223
    sget-object v0, Lcom/appsflyer/internal/AFd1bSDK;->getLevel:Lcom/appsflyer/internal/AFd1bSDK;

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    .line 224
    :cond_3
    :goto_1
    iget-object p1, p2, Lcom/appsflyer/internal/AFe1wSDK;->i:Ljava/util/NavigableSet;

    monitor-enter p1

    .line 225
    :try_start_0
    iget-object v0, p2, Lcom/appsflyer/internal/AFe1wSDK;->v:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object p2, p2, Lcom/appsflyer/internal/AFe1wSDK;->unregisterClient:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFe1vSDK;

    .line 227
    invoke-interface {v0, p0}, Lcom/appsflyer/internal/AFe1vSDK;->d(Lcom/appsflyer/internal/AFe1ySDK;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 228
    :cond_4
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1

    throw p0

    .line 229
    :cond_5
    iget-object p1, p2, Lcom/appsflyer/internal/AFe1wSDK;->d:Ljava/util/Set;

    .line 230
    iget-object p0, p0, Lcom/appsflyer/internal/AFe1ySDK;->unregisterClient:Lcom/appsflyer/internal/AFe1zSDK;

    .line 231
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-direct {p2}, Lcom/appsflyer/internal/AFe1wSDK;->unregisterClient()V

    return-void
.end method


# virtual methods
.method public final d(Lcom/appsflyer/internal/AFe1ySDK;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1ySDK<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1wSDK;->registerClient:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/appsflyer/internal/o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/appsflyer/internal/o;-><init>(Lcom/appsflyer/internal/AFe1wSDK;Lcom/appsflyer/internal/AFe1ySDK;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
