.class public Lcom/dynatrace/android/useraction/LifecyclePlaceholderSegment;
.super Lcom/dynatrace/android/agent/DTXActionImpl;
.source "SourceFile"


# instance fields
.field public A:Lcom/dynatrace/android/lifecycle/action/LifecycleAction;

.field public z:Lcom/dynatrace/android/lifecycle/LifecycleController;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;)V
    .locals 9

    sget-object v2, Lcom/dynatrace/android/agent/EventType;->ACTION_MANUAL:Lcom/dynatrace/android/agent/EventType;

    iget-object v8, p2, Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;->a:Lcom/dynatrace/android/agent/DTXAutoAction;

    iget-wide v3, v8, Lcom/dynatrace/android/agent/CustomSegment;->q:J

    iget-object v5, v8, Lcom/dynatrace/android/agent/CustomSegment;->h:Lcom/dynatrace/android/agent/data/Session;

    iget v6, v8, Lcom/dynatrace/android/agent/CustomSegment;->i:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/dynatrace/android/agent/DTXActionImpl;-><init>(Ljava/lang/String;Lcom/dynatrace/android/agent/EventType;JLcom/dynatrace/android/agent/data/Session;IZLcom/dynatrace/android/agent/DTXActionImpl;)V

    return-void
.end method


# virtual methods
.method public final h()Ljava/lang/StringBuilder;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    return-object p0
.end method

.method public final v(Z)V
    .locals 3

    iget-boolean p1, p0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/dynatrace/android/agent/DTXActionImpl;->v(Z)V

    iget-object v0, p0, Lcom/dynatrace/android/useraction/LifecyclePlaceholderSegment;->z:Lcom/dynatrace/android/lifecycle/LifecycleController;

    iget-object p0, p0, Lcom/dynatrace/android/useraction/LifecyclePlaceholderSegment;->A:Lcom/dynatrace/android/lifecycle/action/LifecycleAction;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lcom/dynatrace/android/lifecycle/action/LifecycleAction;->a()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/dynatrace/android/lifecycle/LifecycleController;->e:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;

    invoke-interface {p1}, Lcom/dynatrace/android/agent/measurement/MeasurementProvider;->a()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/dynatrace/android/lifecycle/action/LifecycleAction;->h(Lcom/dynatrace/android/agent/measurement/MeasurementPoint;)V

    iget-object p1, v0, Lcom/dynatrace/android/lifecycle/LifecycleController;->d:Lcom/dynatrace/android/agent/events/lifecycle/StoreActionObserver;

    invoke-virtual {p1, p0}, Lcom/dynatrace/android/agent/events/lifecycle/StoreActionObserver;->a(Lcom/dynatrace/android/lifecycle/action/LifecycleAction;)V

    :cond_1
    :goto_0
    return-void
.end method
