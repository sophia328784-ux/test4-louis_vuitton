.class Lcom/dynatrace/android/ragetap/detection/RageTapDetector$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dynatrace/android/ragetap/detection/RageTapDetector;-><init>(Ljava/util/List;Ljava/util/concurrent/ScheduledExecutorService;Lcom/dynatrace/android/agent/TimeLineProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dynatrace/android/ragetap/detection/RageTapDetector;


# direct methods
.method public constructor <init>(Lcom/dynatrace/android/ragetap/detection/RageTapDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector$1;->this$0:Lcom/dynatrace/android/ragetap/detection/RageTapDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object p0, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector$1;->this$0:Lcom/dynatrace/android/ragetap/detection/RageTapDetector;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->g:Lcom/dynatrace/android/ragetap/detection/TapData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->d:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v0}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->f:Lcom/dynatrace/android/ragetap/detection/RageTapRules;

    iget-object v3, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->h:Lcom/dynatrace/android/ragetap/detection/TapData;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lcom/dynatrace/android/ragetap/detection/TapData;->b:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    iget-wide v3, v3, Lcom/dynatrace/android/ragetap/detection/TapEventData;->c:J

    sub-long/2addr v0, v3

    iget-object v2, v2, Lcom/dynatrace/android/ragetap/detection/RageTapRules;->a:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    iget v2, v2, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->c:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->m:I

    const-string v0, "timespan difference exceeded"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->a()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_4
    iget-object v0, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->c:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->k:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->j:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
