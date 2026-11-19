.class final Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;
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
    c = "com.dynatrace.agent.OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1"
    f = "OneAgentStartupEventDispatcher.kt"
    l = {
        0x5b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;

.field public final synthetic e:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;->d:Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;

    iput-object p2, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;->e:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;

    iget-object v1, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;->d:Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;

    iget-object p0, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;->e:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    invoke-direct {v0, v1, p0, p2}, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;-><init>(Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;->c:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;->c:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    :try_start_1
    iget-object v1, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;->d:Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;

    iget-wide v4, v1, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;->a:J

    iput-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;->c:Ljava/lang/Object;

    iput v3, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;->b:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->b(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    :goto_0
    iget-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;->d:Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;

    iget-object p0, p0, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1;->e:Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    monitor-enter p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p1, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;->f:Lorg/json/JSONObject;

    if-eqz v1, :cond_4

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->e(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;->b:Lkotlinx/coroutines/CoroutineScope;

    new-instance v3, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$verifyDataPrivacyAndSendEvent$1;

    invoke-direct {v3, p1, v1, p0, v2}, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$verifyDataPrivacyAndSendEvent$1;-><init>(Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;Lorg/json/JSONObject;Lcom/dynatrace/agent/metrics/SessionInformationMetrics;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v3, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_1

    :cond_3
    const-string p0, "startup shouldn\'t be collected, DataCollectionLevel is Off"

    invoke-static {p0}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    iput-object v2, p1, Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;->f:Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit p1

    goto :goto_3

    :goto_2
    monitor-exit p1

    throw p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->a()V

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
