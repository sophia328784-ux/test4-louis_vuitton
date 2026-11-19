.class public final Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$EventWithTimestamp;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0017BW\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0014\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;",
        "",
        "Lcom/dynatrace/agent/exitreason/convertor/ExitReasonConverter;",
        "exitReasonEventConvertor",
        "Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;",
        "exitReasonTimestampDataSource",
        "Lcom/dynatrace/agent/common/time/TimeProvider;",
        "timeProvider",
        "",
        "retentionTime",
        "Landroid/content/Context;",
        "context",
        "Lcom/dynatrace/agent/RumEventDispatcher;",
        "rumEventDispatcher",
        "Lcom/dynatrace/agent/di/SessionInformationProvider;",
        "sessionInformationProvider",
        "Lcom/dynatrace/agent/metrics/MetricsRepository;",
        "metricsRepository",
        "",
        "isNativeCrashReportingEnabled",
        "isAnrReportingEnabled",
        "<init>",
        "(Lcom/dynatrace/agent/exitreason/convertor/ExitReasonConverter;Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;Lcom/dynatrace/agent/common/time/TimeProvider;JLandroid/content/Context;Lcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/metrics/MetricsRepository;ZZ)V",
        "EventWithTimestamp",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/dynatrace/agent/exitreason/convertor/ExitReasonConverter;

.field public final b:Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;

.field public final c:Lcom/dynatrace/agent/common/time/TimeProvider;

.field public final d:J

.field public final e:Landroid/content/Context;

.field public final f:Lcom/dynatrace/agent/RumEventDispatcher;

.field public final g:Lcom/dynatrace/agent/di/SessionInformationProvider;

.field public final h:Lcom/dynatrace/agent/metrics/MetricsRepository;

.field public final i:Z

.field public final j:Z


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/exitreason/convertor/ExitReasonConverter;Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;Lcom/dynatrace/agent/common/time/TimeProvider;JLandroid/content/Context;Lcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/metrics/MetricsRepository;ZZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->a:Lcom/dynatrace/agent/exitreason/convertor/ExitReasonConverter;

    iput-object p2, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->b:Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;

    iput-object p3, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->c:Lcom/dynatrace/agent/common/time/TimeProvider;

    iput-wide p4, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->d:J

    iput-object p6, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->e:Landroid/content/Context;

    iput-object p7, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->f:Lcom/dynatrace/agent/RumEventDispatcher;

    iput-object p8, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->g:Lcom/dynatrace/agent/di/SessionInformationProvider;

    iput-object p9, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->h:Lcom/dynatrace/agent/metrics/MetricsRepository;

    iput-boolean p10, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->i:Z

    iput-boolean p11, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->j:Z

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->h:Lcom/dynatrace/agent/metrics/MetricsRepository;

    iget-object v0, v0, Lcom/dynatrace/agent/metrics/MetricsRepository;->i:Lcom/dynatrace/agent/storage/preference/MetricsData;

    if-nez v0, :cond_0

    const-string p0, "ANR and native crash reporting disabled because we do not have metrics from previous session"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->g:Lcom/dynatrace/agent/di/SessionInformationProvider;

    invoke-interface {v1}, Lcom/dynatrace/agent/di/SessionInformationProvider;->a()Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object v1

    iget-boolean v1, v1, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->c:Z

    iget-boolean v2, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->i:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->j:Z

    if-eqz v2, :cond_2

    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    iget-object v4, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->e:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v4, Landroid/app/ActivityManager;

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v5, v3, v3}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p0, "there are no exit reasons"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    if-eqz v2, :cond_7

    iget-boolean v1, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->r:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->q:Z

    if-eqz v1, :cond_5

    const-string v1, "start processing exit reasons"

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    invoke-virtual {p0, v3, v0, p1}, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->b(Ljava/util/List;Lcom/dynatrace/agent/storage/preference/MetricsData;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_4

    return-object p0

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ANRs or native crashes are not reported because previous session should not capture it: sessionActive="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->r:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", crashReportingOptIn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/dynatrace/agent/storage/preference/MetricsData;->q:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->b:Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;

    iget-object p0, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->c:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {p0}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v1

    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    invoke-virtual {v0, v1, v2, p1}, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;->b(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_6

    return-object p0

    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ANR and native crash reporting disabled because:isNativeCrashReportingEnabled="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->i:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isAnrReportingEnabled="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->j:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isGrailEventsCanBeCaptured="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->b:Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;

    iget-object p0, p0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->c:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {p0}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v1

    check-cast p1, Lkotlin/coroutines/jvm/internal/ContinuationImpl;

    invoke-virtual {v0, v1, v2, p1}, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;->b(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_8

    return-object p0

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :catch_0
    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->a()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final b(Ljava/util/List;Lcom/dynatrace/agent/storage/preference/MetricsData;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;

    iget v3, v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->g:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;

    invoke-direct {v2, v0, v1}, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;-><init>(Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object v1, v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->e:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->g:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v0, v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v4, v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->c:Ljava/lang/Object;

    check-cast v4, Lcom/dynatrace/agent/storage/preference/MetricsData;

    iget-object v5, v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->b:Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v12, v4

    goto/16 :goto_a

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget-object v0, v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->d:Ljava/lang/Object;

    check-cast v0, Lcom/dynatrace/agent/storage/preference/MetricsData;

    iget-object v4, v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iget-object v8, v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->b:Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v20, v4

    move-object v4, v0

    move-object v0, v1

    move-object/from16 v1, v20

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object v0, v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->b:Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;

    move-object/from16 v1, p1

    iput-object v1, v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->c:Ljava/lang/Object;

    move-object/from16 v4, p2

    iput-object v4, v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->d:Ljava/lang/Object;

    iput v7, v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->g:I

    iget-object v8, v0, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->b:Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;

    invoke-virtual {v8, v2}, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_4

    goto/16 :goto_b

    :cond_4
    move-object/from16 v20, v8

    move-object v8, v0

    move-object/from16 v0, v20

    :goto_1
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    iget-object v0, v8, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->c:Lcom/dynatrace/agent/common/time/TimeProvider;

    invoke-interface {v0}, Lcom/dynatrace/agent/common/time/TimeProvider;->a()J

    move-result-wide v11

    iget-wide v13, v8, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->d:J

    sub-long/2addr v11, v13

    check-cast v1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v14}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v15

    cmp-long v15, v15, v9

    if-lez v15, :cond_5

    invoke-virtual {v14}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v14

    cmp-long v14, v14, v11

    if-lez v14, :cond_5

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->f0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x6

    const/4 v11, 0x5

    if-eqz v9, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Landroid/app/ApplicationExitInfo;

    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v12

    if-eq v12, v11, :cond_9

    if-eq v12, v10, :cond_8

    const/4 v10, 0x0

    goto :goto_4

    :cond_8
    iget-boolean v10, v8, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->j:Z

    goto :goto_4

    :cond_9
    iget-boolean v10, v8, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->i:Z

    :goto_4
    if-eqz v10, :cond_7

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/app/ApplicationExitInfo;

    iget-object v0, v8, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->a:Lcom/dynatrace/agent/exitreason/convertor/ExitReasonConverter;

    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v13

    const-string v14, "exception.message"

    if-eq v13, v11, :cond_f

    if-eq v13, v10, :cond_c

    :goto_6
    move-object v0, v5

    goto/16 :goto_8

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "anr "

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/dynatrace/agent/exitreason/convertor/ExitReasonConverter;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v13, "characteristics.has_anr"

    invoke-virtual {v0, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_d

    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object v13

    if-eqz v13, :cond_13

    sget-object v14, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v15, Ljava/io/InputStreamReader;

    invoke-direct {v15, v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v13, Ljava/io/BufferedReader;

    const/16 v14, 0x2000

    invoke-direct {v13, v15, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v13}, Lkotlin/io/TextStreamsKt;->b(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v13}, Ljava/io/Closeable;->close()V

    new-instance v13, Lkotlin/text/Regex;

    const-string v15, "(?ms)^\".*?(?=\\n\\s*(?:DumpLatency|\\s*$))"

    invoke-direct {v13, v15}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v14}, Lkotlin/text/Regex;->c(Lkotlin/text/Regex;Ljava/lang/String;)Lkotlin/sequences/Sequence;

    move-result-object v13

    new-instance v14, Liv;

    const/16 v15, 0xf

    invoke-direct {v14, v15}, Liv;-><init>(I)V

    invoke-static {v13, v14}, Lkotlin/sequences/SequencesKt;->r(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/TransformingSequence;

    move-result-object v13

    const-string v14, "\n\n"

    invoke-static {v13, v14}, Lkotlin/sequences/SequencesKt;->p(Lkotlin/sequences/Sequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_e

    const-string v14, "exception.stack_trace"

    invoke-virtual {v0, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_8

    :cond_e
    const-string v13, "anr threads don\'t match pattern"

    invoke-static {v13}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object v14, v0

    :try_start_3
    throw v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v13, v14}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string v0, "anr event cannot be created"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v13, "native crash "

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_10

    sget-object v13, LTombstone;->B:LTombstone$Companion$ADAPTER$1;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lokio/Okio;->f(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v0

    new-instance v15, Lokio/RealBufferedSource;

    invoke-direct {v15, v0}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    new-instance v0, Lcom/squareup/wire/ProtoReader;

    invoke-direct {v0, v15}, Lcom/squareup/wire/ProtoReader;-><init>(Lokio/BufferedSource;)V

    invoke-virtual {v13, v0}, LTombstone$Companion$ADAPTER$1;->c(Lcom/squareup/wire/ProtoReader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LTombstone;

    goto :goto_7

    :cond_10
    move-object v0, v5

    :goto_7
    if-eqz v0, :cond_11

    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Lcom/dynatrace/agent/exitreason/convertor/ExitReasonConverter;->b(LTombstone;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_8

    :cond_11
    invoke-static {}, Lcom/dynatrace/agent/exitreason/convertor/ExitReasonConverter;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v13, "characteristics.has_crash"

    invoke-virtual {v0, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v13

    const-string v15, "applicationExitInfo.description is null"

    if-nez v13, :cond_12

    invoke-static {v15}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_8

    :cond_12
    invoke-virtual {v0, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_8

    :catch_1
    const-string v0, "native crash event cannot be created"

    invoke-static {v0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_13
    :goto_8
    if-eqz v0, :cond_14

    new-instance v13, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$EventWithTimestamp;

    invoke-virtual {v12}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v14

    invoke-direct {v13, v0, v14, v15}, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$EventWithTimestamp;-><init>(Lorg/json/JSONObject;J)V

    goto :goto_9

    :cond_14
    move-object v13, v5

    :goto_9
    if-eqz v13, :cond_b

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_15
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v12, v4

    move-object v5, v8

    :cond_16
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$EventWithTimestamp;

    iget-object v7, v5, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->f:Lcom/dynatrace/agent/RumEventDispatcher;

    iget-object v8, v1, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$EventWithTimestamp;->a:Lorg/json/JSONObject;

    iget-object v14, v12, Lcom/dynatrace/agent/storage/preference/MetricsData;->n:Ljava/lang/String;

    iget-object v15, v12, Lcom/dynatrace/agent/storage/preference/MetricsData;->o:Ljava/lang/String;

    sget-object v19, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;->PERFORMANCE:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    new-instance v13, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    const/16 v17, 0x1

    const/16 v18, 0x1

    const/16 v16, 0x1

    invoke-direct/range {v13 .. v19}, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZLcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;)V

    iget-wide v9, v1, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$EventWithTimestamp;->b:J

    move-object v11, v13

    invoke-interface/range {v7 .. v12}, Lcom/dynatrace/agent/RumEventDispatcher;->b(Lorg/json/JSONObject;JLcom/dynatrace/agent/metrics/SessionInformationMetrics;Lcom/dynatrace/agent/storage/preference/MetricsData;)V

    iget-object v4, v5, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;->b:Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;

    iget-wide v7, v1, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$EventWithTimestamp;->b:J

    iput-object v5, v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->b:Lcom/dynatrace/agent/exitreason/ExitReasonProcessor;

    iput-object v12, v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->c:Ljava/lang/Object;

    iput-object v0, v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->d:Ljava/lang/Object;

    iput v6, v2, Lcom/dynatrace/agent/exitreason/ExitReasonProcessor$processExitReasons$1;->g:I

    invoke-virtual {v4, v7, v8, v2}, Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;->b(JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_16

    :goto_b
    return-object v3

    :cond_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
