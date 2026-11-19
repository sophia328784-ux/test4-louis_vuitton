.class public Lcom/dynatrace/android/agent/events/lifecycle/StoreActionObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/lifecycle/action/LifecycleActionObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/lifecycle/action/LifecycleAction;)V
    .locals 9

    invoke-interface {p1}, Lcom/dynatrace/android/lifecycle/action/LifecycleAction;->g()Lcom/dynatrace/android/useraction/InternalUserAction;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/dynatrace/android/useraction/InternalUserAction;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lcom/dynatrace/android/agent/Dynatrace;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegmentFactory;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegmentFactory;-><init>()V

    invoke-interface {p0}, Lcom/dynatrace/android/useraction/InternalUserAction;->getSession()Lcom/dynatrace/android/agent/data/Session;

    move-result-object v0

    invoke-interface {p0}, Lcom/dynatrace/android/useraction/InternalUserAction;->d()I

    move-result p0

    monitor-enter p1

    :try_start_0
    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    invoke-interface {p1}, Lcom/dynatrace/android/lifecycle/action/LifecycleAction;->e()Ljava/util/HashMap;

    move-result-object v1

    iget-wide v2, v0, Lcom/dynatrace/android/agent/data/Session;->a:J

    invoke-interface {p1}, Lcom/dynatrace/android/lifecycle/action/LifecycleAction;->b()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object v4

    iget-wide v4, v4, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;->a:J

    invoke-interface {p1}, Lcom/dynatrace/android/lifecycle/action/LifecycleAction;->b()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object v6

    invoke-static {v2, v3, v6}, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegmentFactory;->a(JLcom/dynatrace/android/agent/measurement/MeasurementPoint;)Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object v2

    new-instance v3, Lcom/dynatrace/android/lifecycle/SimpleClassNameGenerator;

    invoke-direct {v3}, Lcom/dynatrace/android/lifecycle/SimpleClassNameGenerator;-><init>()V

    new-instance v6, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;

    invoke-direct {v6}, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;-><init>()V

    invoke-interface {p1}, Lcom/dynatrace/android/lifecycle/action/LifecycleAction;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/dynatrace/android/lifecycle/SimpleClassNameGenerator;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v6, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->a:Ljava/lang/String;

    iput-object v0, v6, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->b:Lcom/dynatrace/android/agent/data/Session;

    iput p0, v6, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->c:I

    invoke-interface {p1}, Lcom/dynatrace/android/lifecycle/action/LifecycleAction;->g()Lcom/dynatrace/android/useraction/InternalUserAction;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lcom/dynatrace/android/lifecycle/action/LifecycleAction;->g()Lcom/dynatrace/android/useraction/InternalUserAction;

    move-result-object p0

    invoke-interface {p0}, Lcom/dynatrace/android/useraction/InternalUserAction;->b()J

    move-result-wide v7

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-wide/16 v7, 0x0

    :goto_0
    iput-wide v7, v6, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->d:J

    sget-object p0, Lcom/dynatrace/android/lifecycle/event/ActivityEventType;->ON_CREATE:Lcom/dynatrace/android/lifecycle/event/ActivityEventType;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/dynatrace/android/agent/EventType;->DISPLAY:Lcom/dynatrace/android/agent/EventType;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/dynatrace/android/agent/EventType;->REDISPLAY:Lcom/dynatrace/android/agent/EventType;

    :goto_1
    iput-object v0, v6, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->e:Lcom/dynatrace/android/agent/EventType;

    iput-object v2, v6, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->f:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    invoke-static {v4, v5, p0}, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegmentFactory;->a(JLcom/dynatrace/android/agent/measurement/MeasurementPoint;)Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object p0

    iput-object p0, v6, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->g:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    sget-object p0, Lcom/dynatrace/android/lifecycle/event/ActivityEventType;->ON_START:Lcom/dynatrace/android/lifecycle/event/ActivityEventType;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    invoke-static {v4, v5, p0}, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegmentFactory;->a(JLcom/dynatrace/android/agent/measurement/MeasurementPoint;)Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object p0

    iput-object p0, v6, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->h:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    sget-object p0, Lcom/dynatrace/android/lifecycle/event/ActivityEventType;->ON_RESUME:Lcom/dynatrace/android/lifecycle/event/ActivityEventType;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    invoke-static {v4, v5, p0}, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegmentFactory;->a(JLcom/dynatrace/android/agent/measurement/MeasurementPoint;)Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object p0

    iput-object p0, v6, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->i:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    invoke-interface {p1}, Lcom/dynatrace/android/lifecycle/action/LifecycleAction;->f()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object p0

    invoke-static {v4, v5, p0}, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegmentFactory;->a(JLcom/dynatrace/android/agent/measurement/MeasurementPoint;)Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object p0

    iput-object p0, v6, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->j:Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    const/4 p0, 0x1

    iput-boolean p0, v6, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;->k:Z

    new-instance p0, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment;

    invoke-direct {p0, v6}, Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment;-><init>(Lcom/dynatrace/android/agent/events/lifecycle/DisplaySegment$Builder;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/dynatrace/android/agent/Core;->a:Lcom/dynatrace/android/lifecycle/ActivityLifecycleMonitor;

    iget v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->p:I

    invoke-static {p0, v0}, Lcom/dynatrace/android/agent/Core;->g(Lcom/dynatrace/android/agent/CustomSegment;I)V

    goto :goto_3

    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    :goto_3
    invoke-interface {p1}, Lcom/dynatrace/android/lifecycle/action/LifecycleAction;->d()Lcom/dynatrace/android/useraction/LifecyclePlaceholderSegment;

    move-result-object p0

    sget-object p1, Lcom/dynatrace/android/agent/Core;->j:Lcom/dynatrace/android/agent/CalloutTable;

    invoke-virtual {p1, p0}, Lcom/dynatrace/android/agent/CalloutTable;->e(Lcom/dynatrace/android/agent/CustomSegment;)V

    invoke-virtual {p0}, Lcom/dynatrace/android/agent/DTXActionImpl;->a()V

    return-void

    :cond_4
    :goto_4
    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method
