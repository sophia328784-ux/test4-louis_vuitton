.class public Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final actionElapsedMillis:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private final actionFailedTimes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private final actionInvokeTimes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private final actionWatches:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/google/common/base/Stopwatch;",
            ">;"
        }
    .end annotation
.end field

.field private volatile isBusyStat:Z

.field private final maxActionConsumedTime:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private final maxTransitionConsumedTime:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private final minActionConsumedTime:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private final minTransitionConsumedTime:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final transitionDeclinedTimes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private final transitionElapsedMillis:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private final transitionFailedTimes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private final transitionInvokeTimes:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private final transitionWatches:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lcom/google/common/base/Stopwatch;",
            ">;"
        }
    .end annotation
.end field

.field private final waitLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionWatches:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionInvokeTimes:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionFailedTimes:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionDeclinedTimes:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionElapsedMillis:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->maxTransitionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->minTransitionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionWatches:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionInvokeTimes:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionFailedTimes:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionElapsedMillis:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->maxActionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->minActionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->waitLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->isBusyStat:Z

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->name:Ljava/lang/String;

    return-void
.end method

.method private clearCache()V
    .locals 1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionInvokeTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionFailedTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionDeclinedTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionElapsedMillis:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->maxTransitionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->minTransitionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionInvokeTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionFailedTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionElapsedMillis:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->maxActionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->minActionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private getTotal(Ljava/util/concurrent/ConcurrentMap;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;)J"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private getTransitionKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "--{"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "}->"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private notifyAllAfterBusyStat()V
    .locals 2

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->waitLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->isBusyStat:Z

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->waitLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private waitIfBusyStat()V
    .locals 2

    iget-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->isBusyStat:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->waitLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->isBusyStat:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->waitLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized getPerfModel()Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;
    .locals 7

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->isBusyStat:Z

    new-instance v0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;

    invoke-direct {v0}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;-><init>()V

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionInvokeTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->getTotal(Ljava/util/concurrent/ConcurrentMap;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->setTotalTransitionInvokedTimes(J)V

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionFailedTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, v3}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->getTotal(Ljava/util/concurrent/ConcurrentMap;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->setTotalTransitionFailedTimes(J)V

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionDeclinedTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, v3}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->getTotal(Ljava/util/concurrent/ConcurrentMap;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->setTotalTransitionDeclinedTimes(J)V

    iget-object v3, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionElapsedMillis:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, v3}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->getTotal(Ljava/util/concurrent/ConcurrentMap;)J

    move-result-wide v3

    long-to-float v3, v3

    long-to-float v1, v1

    const/4 v2, 0x1

    add-float/2addr v1, v2

    div-float/2addr v3, v1

    invoke-virtual {v0, v3}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->setAverageTranstionConsumedTime(F)V

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionInvokeTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->getTotal(Ljava/util/concurrent/ConcurrentMap;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->setTotalActionInvokedTimes(J)V

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionFailedTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->getTotal(Ljava/util/concurrent/ConcurrentMap;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->setTotalActionFailedTimes(J)V

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionElapsedMillis:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {p0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->getTotal(Ljava/util/concurrent/ConcurrentMap;)J

    move-result-wide v5

    long-to-float v1, v5

    long-to-float v3, v3

    add-float/2addr v3, v2

    div-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->setAverageActionConsumedTime(F)V

    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionInvokeTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionElapsedMillis:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    long-to-float v4, v4

    iget-object v5, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionInvokeTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    long-to-float v5, v5

    add-float/2addr v5, v2

    div-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->addAverTransitionConsumedTime(Ljava/lang/String;F)V

    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionInvokeTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->addTransitionInvokeTime(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->maxTransitionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->addMaxTransitionConsumedTime(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->minTransitionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->addMinTransitionConsumedTime(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionInvokeTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionElapsedMillis:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    long-to-float v4, v4

    iget-object v5, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionInvokeTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    long-to-float v5, v5

    add-float/2addr v5, v2

    div-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->addAverActionConsumedTime(Ljava/lang/String;F)V

    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionInvokeTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->addActionInvokeTime(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->maxActionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->addMaxActionConsumedTime(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->minActionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->addMinActionConsumedTime(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->clearCache()V

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->notifyAllAfterBusyStat()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onActionExecException(Lorg/squirrelframework/foundation/fsm/Action;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "****>;)V"
        }
    .end annotation

    .annotation runtime Lorg/squirrelframework/foundation/fsm/annotation/OnActionExecException;
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->waitIfBusyStat()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionFailedTimes:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionFailedTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    return-void
.end method

.method public onAfterActionExecuted(Lorg/squirrelframework/foundation/fsm/StateMachine;Lorg/squirrelframework/foundation/fsm/Action;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "****>;",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "****>;)V"
        }
    .end annotation

    .annotation runtime Lorg/squirrelframework/foundation/fsm/annotation/OnAfterActionExecuted;
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->waitIfBusyStat()V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionWatches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Stopwatch;

    iget-object v0, p1, Lcom/google/common/base/Stopwatch;->a:Lcom/google/common/base/Ticker;

    invoke-virtual {v0}, Lcom/google/common/base/Ticker;->a()J

    move-result-wide v0

    iget-boolean v2, p1, Lcom/google/common/base/Stopwatch;->b:Z

    const-string v3, "This stopwatch is already stopped."

    invoke-static {v3, v2}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    iput-boolean v2, p1, Lcom/google/common/base/Stopwatch;->b:Z

    iget-wide v2, p1, Lcom/google/common/base/Stopwatch;->c:J

    iget-wide v4, p1, Lcom/google/common/base/Stopwatch;->d:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/google/common/base/Stopwatch;->c:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionElapsedMillis:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {p1, p2, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionElapsedMillis:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionInvokeTimes:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {p1, p2, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionInvokeTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->maxActionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->maxActionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->maxActionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->minActionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->minActionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->minActionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {p1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onBeforeActionExecuted(Lorg/squirrelframework/foundation/fsm/StateMachine;Lorg/squirrelframework/foundation/fsm/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "****>;",
            "Lorg/squirrelframework/foundation/fsm/Action<",
            "****>;)V"
        }
    .end annotation

    .annotation runtime Lorg/squirrelframework/foundation/fsm/annotation/OnBeforeActionExecuted;
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->waitIfBusyStat()V

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionWatches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/Stopwatch;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/common/base/Stopwatch;->c:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/common/base/Stopwatch;->b:Z

    invoke-virtual {p0}, Lcom/google/common/base/Stopwatch;->a()V

    return-void
.end method

.method public onStateMachineStart(Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "****>;)V"
        }
    .end annotation

    .annotation runtime Lorg/squirrelframework/foundation/fsm/annotation/OnStateMachineStart;
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionWatches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/common/base/Stopwatch;

    invoke-direct {v2}, Lcom/google/common/base/Stopwatch;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionWatches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/common/base/Stopwatch;

    invoke-direct {v0}, Lcom/google/common/base/Stopwatch;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onStateMachineTerminate(Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "****>;)V"
        }
    .end annotation

    .annotation runtime Lorg/squirrelframework/foundation/fsm/annotation/OnStateMachineTerminate;
    .end annotation

    iget-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionWatches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->actionWatches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onTransitionBegin(Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "****>;)V"
        }
    .end annotation

    .annotation runtime Lorg/squirrelframework/foundation/fsm/annotation/OnTransitionBegin;
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->waitIfBusyStat()V

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionWatches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/Stopwatch;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/base/Stopwatch;->c:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/common/base/Stopwatch;->b:Z

    invoke-virtual {p0}, Lcom/google/common/base/Stopwatch;->a()V

    return-void
.end method

.method public onTransitionDeclined(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lorg/squirrelframework/foundation/fsm/annotation/OnTransitionDecline;
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->waitIfBusyStat()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->getTransitionKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionDeclinedTimes:Ljava/util/concurrent/ConcurrentMap;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {p2, p1, p3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionDeclinedTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    return-void
.end method

.method public onTransitionEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lorg/squirrelframework/foundation/fsm/StateMachine;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lorg/squirrelframework/foundation/fsm/StateMachine<",
            "****>;)V"
        }
    .end annotation

    .annotation runtime Lorg/squirrelframework/foundation/fsm/annotation/OnTransitionEnd;
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->waitIfBusyStat()V

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->getTransitionKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionWatches:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p5}, Lorg/squirrelframework/foundation/fsm/StateMachine;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/base/Stopwatch;

    iget-object p3, p2, Lcom/google/common/base/Stopwatch;->a:Lcom/google/common/base/Ticker;

    invoke-virtual {p3}, Lcom/google/common/base/Ticker;->a()J

    move-result-wide p3

    iget-boolean p5, p2, Lcom/google/common/base/Stopwatch;->b:Z

    const-string v0, "This stopwatch is already stopped."

    invoke-static {v0, p5}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    const/4 p5, 0x0

    iput-boolean p5, p2, Lcom/google/common/base/Stopwatch;->b:Z

    iget-wide v0, p2, Lcom/google/common/base/Stopwatch;->c:J

    iget-wide v2, p2, Lcom/google/common/base/Stopwatch;->d:J

    sub-long/2addr p3, v2

    add-long/2addr p3, v0

    iput-wide p3, p2, Lcom/google/common/base/Stopwatch;->c:J

    const-wide/32 v0, 0xf4240

    div-long/2addr p3, v0

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionElapsedMillis:Ljava/util/concurrent/ConcurrentMap;

    new-instance p5, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p5, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {p2, p1, p5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionElapsedMillis:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionInvokeTimes:Ljava/util/concurrent/ConcurrentMap;

    new-instance p5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p5, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {p2, p1, p5}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionInvokeTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->maxTransitionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->maxTransitionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long p2, p3, v0

    if-lez p2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->maxTransitionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    new-instance p5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p5, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {p2, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->minTransitionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->minTransitionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long p2, p3, v0

    if-gez p2, :cond_3

    :cond_2
    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->minTransitionConsumedTime:Ljava/util/concurrent/ConcurrentMap;

    new-instance p5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p5, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {p2, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onTransitionException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation runtime Lorg/squirrelframework/foundation/fsm/annotation/OnTransitionException;
    .end annotation

    invoke-direct {p0}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->waitIfBusyStat()V

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->getTransitionKey(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionFailedTimes:Ljava/util/concurrent/ConcurrentMap;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p3, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-interface {p2, p1, p3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceMonitor;->transitionFailedTimes:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    return-void
.end method
