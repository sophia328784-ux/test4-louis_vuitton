.class public Lcom/dynatrace/android/lifecycle/LifecycleController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Lcom/dynatrace/android/lifecycle/action/LifecycleActionFactory;

.field public final c:Lcom/dynatrace/android/agent/events/lifecycle/FinishedActionObserver;

.field public final d:Lcom/dynatrace/android/agent/events/lifecycle/StoreActionObserver;

.field public final e:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;

.field public final f:Lcom/dynatrace/android/lifecycle/ActionAggregator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/lifecycle/action/LifecycleActionFactory;Lcom/dynatrace/android/agent/events/lifecycle/FinishedActionObserver;Lcom/dynatrace/android/agent/events/lifecycle/StoreActionObserver;Lcom/dynatrace/android/agent/measurement/MeasurementProvider;Lcom/dynatrace/android/lifecycle/ActionAggregator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/lifecycle/LifecycleController;->b:Lcom/dynatrace/android/lifecycle/action/LifecycleActionFactory;

    iput-object p2, p0, Lcom/dynatrace/android/lifecycle/LifecycleController;->c:Lcom/dynatrace/android/agent/events/lifecycle/FinishedActionObserver;

    iput-object p3, p0, Lcom/dynatrace/android/lifecycle/LifecycleController;->d:Lcom/dynatrace/android/agent/events/lifecycle/StoreActionObserver;

    iput-object p4, p0, Lcom/dynatrace/android/lifecycle/LifecycleController;->e:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;

    iput-object p5, p0, Lcom/dynatrace/android/lifecycle/LifecycleController;->f:Lcom/dynatrace/android/lifecycle/ActionAggregator;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/lifecycle/LifecycleController;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;Lcom/dynatrace/android/lifecycle/event/ActivityEventType;)V
    .locals 5

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/LifecycleController;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dynatrace/android/lifecycle/action/LifecycleAction;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/LifecycleController;->e:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;

    invoke-interface {p0}, Lcom/dynatrace/android/agent/measurement/MeasurementProvider;->a()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start activity monitoring for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/LifecycleController;->e:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;

    invoke-interface {v0}, Lcom/dynatrace/android/agent/measurement/MeasurementProvider;->a()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object v0

    iget-object v1, p0, Lcom/dynatrace/android/lifecycle/LifecycleController;->e:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;

    invoke-interface {v1}, Lcom/dynatrace/android/agent/measurement/MeasurementProvider;->a()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object v1

    iget-object v2, p0, Lcom/dynatrace/android/lifecycle/LifecycleController;->e:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;

    invoke-interface {v2}, Lcom/dynatrace/android/agent/measurement/MeasurementProvider;->a()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object v2

    iget-object v3, p0, Lcom/dynatrace/android/lifecycle/LifecycleController;->f:Lcom/dynatrace/android/lifecycle/ActionAggregator;

    iget-object v4, p1, Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;->a:Ljava/lang/String;

    invoke-interface {v3, v0, v4}, Lcom/dynatrace/android/lifecycle/ActionAggregator;->a(Lcom/dynatrace/android/agent/measurement/MeasurementPoint;Ljava/lang/String;)Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

    move-result-object v0

    iget-object v3, p0, Lcom/dynatrace/android/lifecycle/LifecycleController;->b:Lcom/dynatrace/android/lifecycle/action/LifecycleActionFactory;

    iget-object v4, p1, Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v0, v1}, Lcom/dynatrace/android/lifecycle/action/LifecycleActionFactory;->a(Ljava/lang/String;Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;Lcom/dynatrace/android/agent/measurement/MeasurementPoint;)Lcom/dynatrace/android/lifecycle/action/LifecycleActionImpl;

    move-result-object v1

    iget-object v3, p0, Lcom/dynatrace/android/lifecycle/LifecycleController;->f:Lcom/dynatrace/android/lifecycle/ActionAggregator;

    invoke-interface {v3, v1, v0, p0}, Lcom/dynatrace/android/lifecycle/ActionAggregator;->b(Lcom/dynatrace/android/lifecycle/action/LifecycleAction;Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;Lcom/dynatrace/android/lifecycle/LifecycleController;)V

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/LifecycleController;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    move-object p0, v2

    :goto_0
    new-instance p1, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;

    invoke-direct {p1, p2, p0}, Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;-><init>(Ljava/lang/Enum;Lcom/dynatrace/android/agent/measurement/MeasurementPoint;)V

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/dynatrace/android/lifecycle/action/LifecycleAction;->c(Lcom/dynatrace/android/lifecycle/event/LifecycleEvent;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final b(Lcom/dynatrace/android/lifecycle/callback/ComponentIdentity;)V
    .locals 3

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/LifecycleController;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dynatrace/android/lifecycle/action/LifecycleAction;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finish activity monitoring for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Lcom/dynatrace/android/lifecycle/action/LifecycleAction;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/dynatrace/android/lifecycle/LifecycleController;->e:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;

    invoke-interface {p1}, Lcom/dynatrace/android/agent/measurement/MeasurementProvider;->a()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/dynatrace/android/lifecycle/action/LifecycleAction;->h(Lcom/dynatrace/android/agent/measurement/MeasurementPoint;)V

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/LifecycleController;->c:Lcom/dynatrace/android/agent/events/lifecycle/FinishedActionObserver;

    iget-object p0, p0, Lcom/dynatrace/android/agent/events/lifecycle/FinishedActionObserver;->a:Lcom/dynatrace/android/agent/events/lifecycle/StoreActionObserver;

    invoke-virtual {p0, v0}, Lcom/dynatrace/android/agent/events/lifecycle/StoreActionObserver;->a(Lcom/dynatrace/android/lifecycle/action/LifecycleAction;)V

    invoke-interface {v0}, Lcom/dynatrace/android/lifecycle/action/LifecycleAction;->g()Lcom/dynatrace/android/useraction/InternalUserAction;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/dynatrace/android/useraction/InternalUserAction;->a()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p0}, Lcom/dynatrace/android/useraction/InternalUserAction;->c()V

    :cond_2
    :goto_0
    return-void
.end method
