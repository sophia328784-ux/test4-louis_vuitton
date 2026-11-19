.class public Lcom/dynatrace/android/ragetap/measure/TapMonitorFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/window/WindowListenerFactory;


# instance fields
.field public final a:Lcom/dynatrace/android/ragetap/detection/RageTapDetector;

.field public final b:Lcom/dynatrace/android/agent/TimeLineProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/ragetap/detection/RageTapDetector;Lcom/dynatrace/android/agent/TimeLineProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitorFactory;->a:Lcom/dynatrace/android/ragetap/detection/RageTapDetector;

    iput-object p2, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitorFactory;->b:Lcom/dynatrace/android/agent/TimeLineProvider;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Window;)Lcom/dynatrace/android/window/OnTouchEventListener;
    .locals 2

    new-instance p1, Lcom/dynatrace/android/ragetap/measure/MotionEventConverter;

    invoke-static {}, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->a()Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    move-result-object v0

    iget-object v0, v0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->r:Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "Cannot determine screen density as ScreenMetrics is null"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    iget v0, v0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->d:F

    :goto_0
    invoke-direct {p1, v0}, Lcom/dynatrace/android/ragetap/measure/MotionEventConverter;-><init>(F)V

    new-instance v0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;

    iget-object v1, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitorFactory;->a:Lcom/dynatrace/android/ragetap/detection/RageTapDetector;

    iget-object p0, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitorFactory;->b:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-direct {v0, v1, p1, p0}, Lcom/dynatrace/android/ragetap/measure/TapMonitor;-><init>(Lcom/dynatrace/android/ragetap/detection/RageTapDetector;Lcom/dynatrace/android/ragetap/measure/MotionEventConverter;Lcom/dynatrace/android/agent/TimeLineProvider;)V

    return-object v0
.end method
