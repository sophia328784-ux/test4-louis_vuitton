.class public final Lcom/dynatrace/agent/metrics/MetricsRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/metrics/MetricsRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0010B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/dynatrace/agent/metrics/MetricsRepository;",
        "",
        "Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;",
        "metricsDataSource",
        "Lcom/dynatrace/agent/di/SessionInformationProvider;",
        "sessionProvider",
        "Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;",
        "oneAgentMetricsProvider",
        "Lcom/dynatrace/agent/metrics/SecondGenMetricsProvider;",
        "secondGenMetricsProvider",
        "Lkotlin/time/Duration;",
        "interval",
        "Lkotlinx/coroutines/CoroutineScope;",
        "coroutineScope",
        "<init>",
        "(Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;Lcom/dynatrace/agent/metrics/SecondGenMetricsProvider;JLkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Companion",
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
.field public final a:Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;

.field public final b:Lcom/dynatrace/agent/di/SessionInformationProvider;

.field public final c:Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;

.field public final d:Lcom/dynatrace/agent/metrics/SecondGenMetricsProvider;

.field public final e:J

.field public final f:Lkotlinx/coroutines/CoroutineScope;

.field public g:Lkotlinx/coroutines/Job;

.field public volatile h:Lcom/dynatrace/agent/storage/preference/MetricsData;

.field public volatile i:Lcom/dynatrace/agent/storage/preference/MetricsData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/metrics/MetricsRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/metrics/MetricsRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;Lcom/dynatrace/agent/metrics/SecondGenMetricsProvider;JLkotlinx/coroutines/CoroutineScope;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lkotlin/time/Duration;->c:Lkotlin/time/Duration$Companion;

    const/4 v0, 0x5

    sget-object v1, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->g(ILkotlin/time/DurationUnit;)J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v7, p5

    :goto_0
    const/4 v10, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v9, p7

    .line 131
    invoke-direct/range {v2 .. v10}, Lcom/dynatrace/agent/metrics/MetricsRepository;-><init>(Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;Lcom/dynatrace/agent/metrics/SecondGenMetricsProvider;JLkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;Lcom/dynatrace/agent/metrics/SecondGenMetricsProvider;JLkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/dynatrace/agent/metrics/MetricsRepository;->a:Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;

    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/dynatrace/agent/metrics/MetricsRepository;->b:Lcom/dynatrace/agent/di/SessionInformationProvider;

    iput-object v1, v0, Lcom/dynatrace/agent/metrics/MetricsRepository;->c:Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;

    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/dynatrace/agent/metrics/MetricsRepository;->d:Lcom/dynatrace/agent/metrics/SecondGenMetricsProvider;

    move-wide/from16 v4, p5

    iput-wide v4, v0, Lcom/dynatrace/agent/metrics/MetricsRepository;->e:J

    iput-object v2, v0, Lcom/dynatrace/agent/metrics/MetricsRepository;->f:Lkotlinx/coroutines/CoroutineScope;

    iget-object v4, v1, Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v8, v4, Landroid/content/res/Configuration;->orientation:I

    iget-object v12, v1, Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;->d:Ljava/lang/String;

    iget-object v13, v1, Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;->e:Ljava/lang/String;

    iget-object v4, v1, Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;->f:Ljava/lang/String;

    iget-object v5, v1, Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;->a:Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;

    invoke-interface {v1}, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;->b()Lcom/dynatrace/agent/common/connectivity/NetworkState;

    move-result-object v1

    iget-object v1, v1, Lcom/dynatrace/agent/common/connectivity/NetworkState;->b:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    invoke-virtual {v1}, Lcom/dynatrace/agent/common/connectivity/NetworkType;->a()Ljava/lang/String;

    move-result-object v21

    invoke-interface {v3}, Lcom/dynatrace/agent/metrics/SecondGenMetricsProvider;->a()Lcom/dynatrace/agent/metrics/AppVersion;

    move-result-object v18

    invoke-interface {v3}, Lcom/dynatrace/agent/metrics/SecondGenMetricsProvider;->b()I

    move-result v9

    new-instance v5, Lcom/dynatrace/agent/storage/preference/MetricsData;

    const v24, 0x36333

    const/16 v25, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v5 .. v25}, Lcom/dynatrace/agent/storage/preference/MetricsData;-><init>(IIIILjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/agent/metrics/AppVersion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v5, v0, Lcom/dynatrace/agent/metrics/MetricsRepository;->h:Lcom/dynatrace/agent/storage/preference/MetricsData;

    new-instance v1, Lcom/dynatrace/agent/metrics/MetricsRepository$loadMetrics$1;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Lcom/dynatrace/agent/metrics/MetricsRepository$loadMetrics$1;-><init>(Lcom/dynatrace/agent/metrics/MetricsRepository;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {v2, v3, v3, v1, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/dynatrace/agent/metrics/MetricsRepository;->g:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lcom/dynatrace/agent/metrics/MetricsRepository;->g:Lkotlinx/coroutines/Job;

    new-instance v0, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;

    invoke-direct {v0, p0, v1}, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;-><init>(Lcom/dynatrace/agent/metrics/MetricsRepository;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dynatrace/agent/metrics/MetricsRepository;->f:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v3, v1, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, p0, Lcom/dynatrace/agent/metrics/MetricsRepository;->g:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final b(Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;)V
    .locals 14

    move-object v0, p1

    iget-object v1, p0, Lcom/dynatrace/agent/metrics/MetricsRepository;->h:Lcom/dynatrace/agent/storage/preference/MetricsData;

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->a:I

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/dynatrace/android/lifecycle/activitytracking/metrics/ScreenMetrics;->b:I

    :cond_1
    const/4 v12, 0x0

    const v13, 0x3fffc

    move-object v0, v1

    move v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v0 .. v13}, Lcom/dynatrace/agent/storage/preference/MetricsData;->a(Lcom/dynatrace/agent/storage/preference/MetricsData;IIIILjava/lang/Double;Ljava/lang/Double;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/dynatrace/agent/storage/preference/MetricsData;

    move-result-object v0

    iput-object v0, p0, Lcom/dynatrace/agent/metrics/MetricsRepository;->h:Lcom/dynatrace/agent/storage/preference/MetricsData;

    return-void
.end method
