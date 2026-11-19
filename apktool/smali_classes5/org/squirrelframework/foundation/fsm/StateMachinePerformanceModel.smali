.class public Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final actionInvokeTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final averActionConsumedTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final averTransitionConsumedTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private averageActionConsumedTime:F

.field private averageTranstionConsumedTime:F

.field private final maxActionConsumedTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final maxTransitionConsumedTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final minActionConsumedTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final minTransitionConsumedTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private totalActionFailedTimes:J

.field private totalActionInvokedTimes:J

.field private totalTransitionDeclinedTimes:J

.field private totalTransitionFailedTimes:J

.field private totalTransitionInvokedTimes:J

.field private final transitionInvokeTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalTransitionInvokedTimes:J

    iput-wide v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalTransitionFailedTimes:J

    iput-wide v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalTransitionDeclinedTimes:J

    const/4 v2, 0x0

    iput v2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->averageTranstionConsumedTime:F

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->transitionInvokeTimes:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->averTransitionConsumedTime:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->maxTransitionConsumedTime:Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->minTransitionConsumedTime:Ljava/util/Map;

    iput-wide v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalActionInvokedTimes:J

    iput-wide v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalActionFailedTimes:J

    iput v2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->averageActionConsumedTime:F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->actionInvokeTimes:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->averActionConsumedTime:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->maxActionConsumedTime:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->minActionConsumedTime:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addActionInvokeTime(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->actionInvokeTimes:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addAverActionConsumedTime(Ljava/lang/String;F)V
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->averActionConsumedTime:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addAverTransitionConsumedTime(Ljava/lang/String;F)V
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->averTransitionConsumedTime:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addMaxActionConsumedTime(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->maxActionConsumedTime:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addMaxTransitionConsumedTime(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->maxTransitionConsumedTime:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addMinActionConsumedTime(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->minActionConsumedTime:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addMinTransitionConsumedTime(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->minTransitionConsumedTime:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTransitionInvokeTime(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->transitionInvokeTimes:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getActionInvokeTimes()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->actionInvokeTimes:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getAverActionConsumedTime()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->averActionConsumedTime:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getAverTransitionConsumedTime()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->averTransitionConsumedTime:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getAverageActionConsumedTime()F
    .locals 0

    iget p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->averageActionConsumedTime:F

    return p0
.end method

.method public getAverageTranstionConsumedTime()F
    .locals 0

    iget p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->averageTranstionConsumedTime:F

    return p0
.end method

.method public getMaxActionConsumedTime()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->maxActionConsumedTime:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getMaxTransitionConsumedTime()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->maxTransitionConsumedTime:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getMinActionConsumedTime()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->minActionConsumedTime:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getMinTransitionConsumedTime()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->minTransitionConsumedTime:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getTotalActionFailedTimes()J
    .locals 2

    iget-wide v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalActionFailedTimes:J

    return-wide v0
.end method

.method public getTotalActionInvokedTimes()J
    .locals 2

    iget-wide v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalActionInvokedTimes:J

    return-wide v0
.end method

.method public getTotalTransitionDeclinedTimes()J
    .locals 2

    iget-wide v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalTransitionDeclinedTimes:J

    return-wide v0
.end method

.method public getTotalTransitionFailedTimes()J
    .locals 2

    iget-wide v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalTransitionFailedTimes:J

    return-wide v0
.end method

.method public getTotalTransitionInvokedTimes()J
    .locals 2

    iget-wide v0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalTransitionInvokedTimes:J

    return-wide v0
.end method

.method public getTransitionInvokeTimes()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->transitionInvokeTimes:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public setAverageActionConsumedTime(F)V
    .locals 0

    iput p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->averageActionConsumedTime:F

    return-void
.end method

.method public setAverageTranstionConsumedTime(F)V
    .locals 0

    iput p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->averageTranstionConsumedTime:F

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setTotalActionFailedTimes(J)V
    .locals 0

    iput-wide p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalActionFailedTimes:J

    return-void
.end method

.method public setTotalActionInvokedTimes(J)V
    .locals 0

    iput-wide p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalActionInvokedTimes:J

    return-void
.end method

.method public setTotalTransitionDeclinedTimes(J)V
    .locals 0

    iput-wide p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalTransitionDeclinedTimes:J

    return-void
.end method

.method public setTotalTransitionFailedTimes(J)V
    .locals 0

    iput-wide p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalTransitionFailedTimes:J

    return-void
.end method

.method public setTotalTransitionInvokedTimes(J)V
    .locals 0

    iput-wide p1, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalTransitionInvokedTimes:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "========================== "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ==========================\nTotal Transition Invoked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalTransitionInvokedTimes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\nTotal Transition Failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalTransitionFailedTimes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\nTotal Transition Declained: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalTransitionDeclinedTimes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\nAverage Transition Comsumed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->averageTranstionConsumedTime:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.4fms"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tTransition Key\t\tInvoked Times\tAverage Time\t\tMax Time\tMin Time\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->transitionInvokeTimes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "ms\t\t\n"

    const-string v6, "ms\t\t"

    const-string v7, "\t"

    const-string v8, "\t\t"

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->transitionInvokeTimes:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->averTransitionConsumedTime:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->maxTransitionConsumedTime:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->minTransitionConsumedTime:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v2, "\nTotal Action Invoked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalActionInvokedTimes:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\nTotal Action Failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->totalActionFailedTimes:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\nAverage Action Execution Comsumed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->averageActionConsumedTime:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\tAction Key\t\tInvoked Times\tAverage Time\t\tMax Time\tMin Time\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->actionInvokeTimes:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lorg/apache/commons/lang3/StringUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->actionInvokeTimes:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->averActionConsumedTime:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v3, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->maxActionConsumedTime:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->minActionConsumedTime:Ljava/util/Map;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/squirrelframework/foundation/fsm/StateMachinePerformanceModel;->name:Ljava/lang/String;

    const-string v1, " ==========================\n"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
