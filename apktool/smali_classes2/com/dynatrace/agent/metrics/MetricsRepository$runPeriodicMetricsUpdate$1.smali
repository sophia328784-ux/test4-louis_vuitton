.class final Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.dynatrace.agent.metrics.MetricsRepository$runPeriodicMetricsUpdate$1"
    f = "MetricsRepository.kt"
    l = {
        0x45,
        0x46
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/dynatrace/agent/metrics/MetricsRepository;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/metrics/MetricsRepository;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;->d:Lcom/dynatrace/agent/metrics/MetricsRepository;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;

    iget-object p0, p0, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;->d:Lcom/dynatrace/agent/metrics/MetricsRepository;

    invoke-direct {v0, p0, p2}, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;-><init>(Lcom/dynatrace/agent/metrics/MetricsRepository;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;->c:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v2, v0, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;->c:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;->c:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    :cond_3
    :goto_0
    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->e(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;->d:Lcom/dynatrace/agent/metrics/MetricsRepository;

    iput-object v2, v0, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;->c:Ljava/lang/Object;

    iput v4, v0, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;->b:I

    iget-object v6, v5, Lcom/dynatrace/agent/metrics/MetricsRepository;->b:Lcom/dynatrace/agent/di/SessionInformationProvider;

    invoke-interface {v6}, Lcom/dynatrace/agent/di/SessionInformationProvider;->a()Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    move-result-object v6

    sget-object v7, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->h:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v5, "cannot update metrics without a session"

    invoke-static {v5}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto/16 :goto_1

    :cond_4
    iget-object v7, v5, Lcom/dynatrace/agent/metrics/MetricsRepository;->h:Lcom/dynatrace/agent/storage/preference/MetricsData;

    iget-object v8, v5, Lcom/dynatrace/agent/metrics/MetricsRepository;->c:Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;

    iget-object v8, v8, Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;->b:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v10, v8, Landroid/content/res/Configuration;->orientation:I

    iget-object v8, v5, Lcom/dynatrace/agent/metrics/MetricsRepository;->c:Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;

    iget-object v9, v8, Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;->c:Lkotlin/jvm/functions/Function1;

    iget-object v8, v8, Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;->b:Landroid/content/Context;

    invoke-interface {v9, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    iget-object v8, v5, Lcom/dynatrace/agent/metrics/MetricsRepository;->c:Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;

    iget-object v8, v8, Lcom/dynatrace/agent/metrics/OneAgentMetricsProvider;->a:Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;

    invoke-interface {v8}, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;->b()Lcom/dynatrace/agent/common/connectivity/NetworkState;

    move-result-object v8

    iget-object v8, v8, Lcom/dynatrace/agent/common/connectivity/NetworkState;->b:Lcom/dynatrace/agent/common/connectivity/NetworkType;

    invoke-virtual {v8}, Lcom/dynatrace/agent/common/connectivity/NetworkType;->a()Ljava/lang/String;

    move-result-object v17

    iget-object v8, v5, Lcom/dynatrace/agent/metrics/MetricsRepository;->d:Lcom/dynatrace/agent/metrics/SecondGenMetricsProvider;

    invoke-interface {v8}, Lcom/dynatrace/agent/metrics/SecondGenMetricsProvider;->b()I

    move-result v11

    iget-object v15, v6, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->a:Ljava/lang/String;

    iget-object v8, v6, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->b:Ljava/lang/String;

    iget-boolean v9, v6, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->d:Z

    iget-boolean v12, v6, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->e:Z

    const/4 v13, 0x0

    const/16 v20, 0x1ef3

    move-object/from16 v16, v8

    const/4 v8, 0x0

    move/from16 v18, v9

    const/4 v9, 0x0

    move/from16 v19, v12

    const/4 v12, 0x0

    invoke-static/range {v7 .. v20}, Lcom/dynatrace/agent/storage/preference/MetricsData;->a(Lcom/dynatrace/agent/storage/preference/MetricsData;IIIILjava/lang/Double;Ljava/lang/Double;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/dynatrace/agent/storage/preference/MetricsData;

    move-result-object v7

    iput-object v7, v5, Lcom/dynatrace/agent/metrics/MetricsRepository;->h:Lcom/dynatrace/agent/storage/preference/MetricsData;

    const-string v7, "updated and stored metrics"

    invoke-static {v7}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v6, v6, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->f:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    sget-object v7, Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;->USER_BEHAVIOR:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    iget-object v8, v5, Lcom/dynatrace/agent/metrics/MetricsRepository;->h:Lcom/dynatrace/agent/storage/preference/MetricsData;

    if-eq v6, v7, :cond_5

    const/16 v20, 0x0

    const v21, 0x3ffcf

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v8 .. v21}, Lcom/dynatrace/agent/storage/preference/MetricsData;->a(Lcom/dynatrace/agent/storage/preference/MetricsData;IIIILjava/lang/Double;Ljava/lang/Double;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Lcom/dynatrace/agent/storage/preference/MetricsData;

    move-result-object v8

    :cond_5
    iget-object v5, v5, Lcom/dynatrace/agent/metrics/MetricsRepository;->a:Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;

    invoke-virtual {v5, v8, v0}, Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;->b(Lcom/dynatrace/agent/storage/preference/MetricsData;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v5, v6, :cond_6

    goto :goto_1

    :cond_6
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_1
    if-ne v5, v1, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v5, v0, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;->d:Lcom/dynatrace/agent/metrics/MetricsRepository;

    iget-wide v5, v5, Lcom/dynatrace/agent/metrics/MetricsRepository;->e:J

    iput-object v2, v0, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;->c:Ljava/lang/Object;

    iput v3, v0, Lcom/dynatrace/agent/metrics/MetricsRepository$runPeriodicMetricsUpdate$1;->b:I

    invoke-static {v5, v6, v0}, Lkotlinx/coroutines/DelayKt;->c(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_3

    :goto_3
    return-object v1

    :cond_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
