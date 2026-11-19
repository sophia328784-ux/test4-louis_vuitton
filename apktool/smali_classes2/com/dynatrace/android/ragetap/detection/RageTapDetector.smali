.class public Lcom/dynatrace/android/ragetap/detection/RageTapDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic m:I


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Ljava/lang/Runnable;

.field public final d:Lcom/dynatrace/android/agent/TimeLineProvider;

.field public e:Lcom/dynatrace/android/agent/data/Session;

.field public f:Lcom/dynatrace/android/ragetap/detection/RageTapRules;

.field public g:Lcom/dynatrace/android/ragetap/detection/TapData;

.field public h:Lcom/dynatrace/android/ragetap/detection/TapData;

.field public i:I

.field public j:Ljava/util/concurrent/ScheduledFuture;

.field public k:J

.field public l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/concurrent/ScheduledExecutorService;Lcom/dynatrace/android/agent/TimeLineProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/dynatrace/android/ragetap/detection/RageTapListener;",
            ">;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/dynatrace/android/agent/TimeLineProvider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->g:Lcom/dynatrace/android/ragetap/detection/TapData;

    iput-object v0, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->h:Lcom/dynatrace/android/ragetap/detection/TapData;

    const/4 v0, 0x0

    iput v0, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->i:I

    iput-boolean v0, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->l:Z

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->b:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->d:Lcom/dynatrace/android/agent/TimeLineProvider;

    new-instance p1, Lcom/dynatrace/android/ragetap/detection/RageTapDetector$1;

    invoke-direct {p1, p0}, Lcom/dynatrace/android/ragetap/detection/RageTapDetector$1;-><init>(Lcom/dynatrace/android/ragetap/detection/RageTapDetector;)V

    iput-object p1, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final b(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->l:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->f:Lcom/dynatrace/android/ragetap/detection/RageTapRules;

    iget v1, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->i:I

    iget-object v0, v0, Lcom/dynatrace/android/ragetap/detection/RageTapRules;->a:Lcom/dynatrace/android/agent/conf/RageTapConfiguration;

    iget v0, v0, Lcom/dynatrace/android/agent/conf/RageTapConfiguration;->d:I

    if-lt v1, v0, :cond_2

    new-instance v0, Lcom/dynatrace/android/ragetap/detection/RageTap;

    iget-object v2, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->g:Lcom/dynatrace/android/ragetap/detection/TapData;

    iget-object v3, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->h:Lcom/dynatrace/android/ragetap/detection/TapData;

    invoke-direct {v0, v2, v3, v1}, Lcom/dynatrace/android/ragetap/detection/RageTap;-><init>(Lcom/dynatrace/android/ragetap/detection/TapData;Lcom/dynatrace/android/ragetap/detection/TapData;I)V

    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rage tap detected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dynatrace/android/ragetap/detection/RageTapListener;

    invoke-interface {v2, v0, p1}, Lcom/dynatrace/android/ragetap/detection/RageTapListener;->a(Lcom/dynatrace/android/ragetap/detection/RageTap;Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->j:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v1, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->j:Ljava/util/concurrent/ScheduledFuture;

    :cond_3
    iput-object v1, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->g:Lcom/dynatrace/android/ragetap/detection/TapData;

    iput-object v1, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->h:Lcom/dynatrace/android/ragetap/detection/TapData;

    iput v0, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->i:I

    return-void
.end method

.method public final c(Lcom/dynatrace/android/ragetap/detection/TapData;)V
    .locals 4

    iget-object v0, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->e:Lcom/dynatrace/android/agent/data/Session;

    iget-wide v0, v0, Lcom/dynatrace/android/agent/data/Session;->a:J

    iget-object v2, p1, Lcom/dynatrace/android/ragetap/detection/TapData;->a:Lcom/dynatrace/android/ragetap/detection/TapEventData;

    iget-wide v2, v2, Lcom/dynatrace/android/ragetap/detection/TapEventData;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    sget-boolean p1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "discard tap because it partially occurred outside of the session"

    invoke-static {p1}, Lcom/dynatrace/android/agent/util/Utility;->n(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->j:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v1, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->j:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    iput-object v1, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->g:Lcom/dynatrace/android/ragetap/detection/TapData;

    iput-object v1, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->h:Lcom/dynatrace/android/ragetap/detection/TapData;

    iput v0, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->i:I

    return-void

    :cond_2
    iput-object p1, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->g:Lcom/dynatrace/android/ragetap/detection/TapData;

    iput-object p1, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->h:Lcom/dynatrace/android/ragetap/detection/TapData;

    const/4 p1, 0x1

    iput p1, p0, Lcom/dynatrace/android/ragetap/detection/RageTapDetector;->i:I

    return-void
.end method
