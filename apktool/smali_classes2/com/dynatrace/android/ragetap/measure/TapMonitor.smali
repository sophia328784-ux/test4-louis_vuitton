.class public Lcom/dynatrace/android/ragetap/measure/TapMonitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/window/OnTouchEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;
    }
.end annotation


# instance fields
.field public final a:Lcom/dynatrace/android/ragetap/detection/RageTapDetector;

.field public final b:Lcom/dynatrace/android/ragetap/measure/MotionEventConverter;

.field public final c:Lcom/dynatrace/android/agent/TimeLineProvider;

.field public d:Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

.field public e:Lcom/dynatrace/android/ragetap/detection/TapEventData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/android/ragetap/detection/RageTapDetector;Lcom/dynatrace/android/ragetap/measure/MotionEventConverter;Lcom/dynatrace/android/agent/TimeLineProvider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;->NO_TAP:Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    iput-object v0, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;->d:Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    iput-object p1, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;->a:Lcom/dynatrace/android/ragetap/detection/RageTapDetector;

    iput-object p2, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;->b:Lcom/dynatrace/android/ragetap/measure/MotionEventConverter;

    iput-object p3, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_13

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "unexpected event type detected: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;->d:Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    sget-object v0, Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;->TAP_DOWN:Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    if-ne p1, v0, :cond_2

    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "multi-touch tap detected"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;->a:Lcom/dynatrace/android/ragetap/detection/RageTapDetector;

    invoke-virtual {p1}, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->a()V

    :cond_2
    sget-object p1, Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;->INVALID_TAP_STATE:Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    iput-object p1, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;->d:Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    iput-object v1, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;->e:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;->d:Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    sget-object v3, Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;->TAP_DOWN:Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    if-ne v0, v3, :cond_12

    iget-object v0, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v6

    iget-object v0, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;->b:Lcom/dynatrace/android/ragetap/measure/MotionEventConverter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    move v4, v3

    new-instance v3, Lcom/dynatrace/android/ragetap/detection/TapEventData;

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget v0, v0, Lcom/dynatrace/android/ragetap/measure/MotionEventConverter;->a:F

    mul-float/2addr v5, v0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    mul-float/2addr v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    move v10, v5

    move v5, v4

    move v4, v10

    invoke-direct/range {v3 .. v9}, Lcom/dynatrace/android/ragetap/detection/TapEventData;-><init>(FFJJ)V

    iget-object p1, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;->a:Lcom/dynatrace/android/ragetap/detection/RageTapDetector;

    new-instance v0, Lcom/dynatrace/android/ragetap/detection/TapData;

    iget-object v4, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;->e:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    invoke-direct {v0, v4, v3}, Lcom/dynatrace/android/ragetap/detection/TapData;-><init>(Lcom/dynatrace/android/ragetap/detection/TapEventData;Lcom/dynatrace/android/ragetap/detection/TapEventData;)V

    const-string v3, "register tap: "

    monitor-enter p1

    :try_start_0
    iget-boolean v4, p1, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    monitor-exit p1

    goto/16 :goto_4

    :cond_5
    :try_start_1
    sget-boolean v4, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v4, :cond_6

    sget v4, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->m:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_3

    :cond_6
    :goto_0
    iget-object v3, p1, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->f:Lcom/dynatrace/android/ragetap/detection/RageTapRules;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/dynatrace/android/ragetap/detection/TapData;->b:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    iget-wide v4, v4, Lcom/dynatrace/android/ragetap/detection/TapEventData;->c:J

    iget-object v6, v0, Lcom/dynatrace/android/ragetap/detection/TapData;->a:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    iget-wide v6, v6, Lcom/dynatrace/android/ragetap/detection/TapEventData;->c:J

    sub-long/2addr v4, v6

    iget-object v3, v3, Lcom/dynatrace/android/ragetap/detection/RageTapRules;->a:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    iget v3, v3, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->a:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-lez v3, :cond_8

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_7

    sget v0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->m:I

    const-string v0, "tap exceeds click duration"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    goto/16 :goto_4

    :cond_8
    :try_start_2
    iget-object v3, p1, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->g:Lcom/dynatrace/android/ragetap/detection/TapData;

    if-nez v3, :cond_9

    invoke-virtual {p1, v0}, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->c(Lcom/dynatrace/android/ragetap/detection/TapData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p1

    goto/16 :goto_4

    :cond_9
    :try_start_3
    iget-object v3, p1, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->f:Lcom/dynatrace/android/ragetap/detection/RageTapRules;

    iget-object v4, p1, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->h:Lcom/dynatrace/android/ragetap/detection/TapData;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lcom/dynatrace/android/ragetap/detection/TapData;->a:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    iget-wide v5, v5, Lcom/dynatrace/android/ragetap/detection/TapEventData;->c:J

    iget-object v4, v4, Lcom/dynatrace/android/ragetap/detection/TapData;->b:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    iget-wide v7, v4, Lcom/dynatrace/android/ragetap/detection/TapEventData;->c:J

    sub-long/2addr v5, v7

    iget-object v3, v3, Lcom/dynatrace/android/ragetap/detection/RageTapRules;->a:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    iget v3, v3, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->c:I

    int-to-long v3, v3

    cmp-long v3, v5, v3

    const/4 v4, 0x0

    if-lez v3, :cond_a

    move v3, v2

    goto :goto_1

    :cond_a
    move v3, v4

    :goto_1
    if-eqz v3, :cond_c

    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v2, :cond_b

    sget v2, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->m:I

    const-string v2, "tap exceeds timespan difference"

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p1}, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->a()V

    invoke-virtual {p1, v0}, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->c(Lcom/dynatrace/android/ragetap/detection/TapData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p1

    goto :goto_4

    :cond_c
    :try_start_4
    iget-object v3, p1, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->f:Lcom/dynatrace/android/ragetap/detection/RageTapRules;

    iget-object v5, p1, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->h:Lcom/dynatrace/android/ragetap/detection/TapData;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Lcom/dynatrace/android/ragetap/detection/TapData;->a:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    iget v7, v6, Lcom/dynatrace/android/ragetap/detection/TapEventData;->a:F

    iget-object v5, v5, Lcom/dynatrace/android/ragetap/detection/TapData;->a:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    iget v8, v5, Lcom/dynatrace/android/ragetap/detection/TapEventData;->a:F

    sub-float/2addr v7, v8

    iget v6, v6, Lcom/dynatrace/android/ragetap/detection/TapEventData;->b:F

    iget v5, v5, Lcom/dynatrace/android/ragetap/detection/TapEventData;->b:F

    sub-float/2addr v6, v5

    mul-float/2addr v7, v7

    mul-float/2addr v6, v6

    add-float/2addr v6, v7

    iget-object v3, v3, Lcom/dynatrace/android/ragetap/detection/RageTapRules;->a:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    iget v3, v3, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->b:I

    mul-int/2addr v3, v3

    int-to-float v3, v3

    cmpl-float v3, v6, v3

    if-lez v3, :cond_e

    sget-boolean v2, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v2, :cond_d

    sget v2, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->m:I

    const-string v2, "tap exceeds dispersion radius"

    invoke-static {v2}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_d
    invoke-virtual {p1}, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->a()V

    invoke-virtual {p1, v0}, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->c(Lcom/dynatrace/android/ragetap/detection/TapData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p1

    goto :goto_4

    :cond_e
    :try_start_5
    iput-object v0, p1, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->h:Lcom/dynatrace/android/ragetap/detection/TapData;

    iget v0, p1, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->i:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->i:I

    iget-object v3, p1, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->f:Lcom/dynatrace/android/ragetap/detection/RageTapRules;

    iget-object v3, v3, Lcom/dynatrace/android/ragetap/detection/RageTapRules;->a:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    iget v3, v3, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->d:I

    if-lt v0, v3, :cond_f

    goto :goto_2

    :cond_f
    move v2, v4

    :goto_2
    if-eqz v2, :cond_11

    iget-object v0, p1, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_10

    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_10
    iget-object v0, p1, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v2, p1, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->c:Ljava/lang/Runnable;

    iget-wide v3, p1, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->k:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p1, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->j:Ljava/util/concurrent/ScheduledFuture;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_11
    monitor-exit p1

    goto :goto_4

    :goto_3
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0

    :cond_12
    :goto_4
    sget-object p1, Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;->NO_TAP:Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    iput-object p1, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;->d:Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    iput-object v1, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;->e:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    return-void

    :cond_13
    iget-object v0, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v4

    iget-object v0, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;->b:Lcom/dynatrace/android/ragetap/measure/MotionEventConverter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    move v2, v1

    new-instance v1, Lcom/dynatrace/android/ragetap/detection/TapEventData;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v0, v0, Lcom/dynatrace/android/ragetap/measure/MotionEventConverter;->a:F

    mul-float/2addr v3, v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    move v10, v3

    move v3, v2

    move v2, v10

    invoke-direct/range {v1 .. v7}, Lcom/dynatrace/android/ragetap/detection/TapEventData;-><init>(FFJJ)V

    iput-object v1, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;->e:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    sget-object p1, Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;->TAP_DOWN:Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    iput-object p1, p0, Lcom/dynatrace/android/ragetap/measure/TapMonitor;->d:Lcom/dynatrace/android/ragetap/measure/TapMonitor$State;

    return-void
.end method
