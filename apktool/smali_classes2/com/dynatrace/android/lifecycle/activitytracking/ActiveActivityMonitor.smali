.class public Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityListener;
.implements Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetricsListener;


# instance fields
.field public a:Lcom/dynatrace/android/lifecycle/activitytracking/ActiveActivityTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;)V
    .locals 2

    invoke-static {}, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->a()Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->b:I

    if-lez v0, :cond_1

    iget v0, p1, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->a:I

    if-lez v0, :cond_1

    iget v0, p1, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->c:I

    if-lez v0, :cond_1

    iget v0, p1, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->d:F

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iput-object p1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->r:Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;

    goto :goto_1

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->r:Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;

    :goto_1
    iget-object v0, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->a:Landroid/content/Context;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->k:I

    :cond_3
    sget-object p0, Lcom/dynatrace/agent/di/CoreComponent;->k:Lcom/dynatrace/agent/di/CoreComponent$Holder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/dynatrace/agent/di/CoreComponent;->l:Lcom/dynatrace/agent/di/CoreComponent;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/dynatrace/agent/di/CoreComponent;->e:Lcom/dynatrace/agent/metrics/MetricsRepository;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/metrics/MetricsRepository;->b(Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;)V

    :cond_4
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->a()Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    move-result-object p0

    iput-object p1, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->s:Ljava/lang/String;

    return-void
.end method
