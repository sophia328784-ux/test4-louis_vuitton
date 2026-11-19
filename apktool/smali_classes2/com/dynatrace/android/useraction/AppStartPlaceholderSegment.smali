.class public Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;
.super Lcom/dynatrace/android/agent/DTXActionImpl;
.source "SourceFile"


# instance fields
.field public final A:Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

.field public final z:Lcom/dynatrace/android/lifecycle/appstart/AppStartController;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;Lcom/dynatrace/android/lifecycle/appstart/AppStartController;)V
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

    iput-object p3, v0, Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;->z:Lcom/dynatrace/android/lifecycle/appstart/AppStartController;

    iput-object p2, v0, Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;->A:Lcom/dynatrace/android/useraction/DTXAutoActionWrapper;

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
    .locals 1

    iget-boolean p1, p0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/dynatrace/android/agent/DTXActionImpl;->v(Z)V

    iget-object p0, p0, Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;->z:Lcom/dynatrace/android/lifecycle/appstart/AppStartController;

    iget-object p1, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->a:Lcom/dynatrace/android/agent/measurement/MeasurementProvider;

    invoke-interface {p1}, Lcom/dynatrace/android/agent/measurement/MeasurementProvider;->a()Lcom/dynatrace/android/agent/measurement/MeasurementPoint;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->a(Lcom/dynatrace/android/agent/measurement/MeasurementPoint;Ljava/lang/String;)V

    return-void
.end method

.method public final y()V
    .locals 3

    iget-boolean v0, p0, Lcom/dynatrace/android/agent/CustomSegment;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/dynatrace/android/agent/DTXActionImpl;->v(Z)V

    iget-object p0, p0, Lcom/dynatrace/android/useraction/AppStartPlaceholderSegment;->z:Lcom/dynatrace/android/lifecycle/appstart/AppStartController;

    iget-object v1, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->f:Landroid/app/Application;

    iget-object p0, p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->e:Lcom/dynatrace/android/lifecycle/appstart/ActivityStateListener;

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_1

    sget p0, Lcom/dynatrace/android/lifecycle/appstart/AppStartController;->h:I

    const-string p0, "AppStart action dropped"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
