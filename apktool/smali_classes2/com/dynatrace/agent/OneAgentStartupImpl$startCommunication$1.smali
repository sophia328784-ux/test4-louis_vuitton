.class final Lcom/dynatrace/agent/OneAgentStartupImpl$startCommunication$1;
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
    c = "com.dynatrace.agent.OneAgentStartupImpl$startCommunication$1"
    f = "OneAgentStartupImpl.kt"
    l = {
        0x73,
        0x75,
        0x77
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/dynatrace/agent/OneAgentStartupImpl;

.field public final synthetic d:Lcom/dynatrace/android/agent/conf/ServerConfiguration;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/OneAgentStartupImpl;Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$startCommunication$1;->c:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iput-object p2, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$startCommunication$1;->d:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/dynatrace/agent/OneAgentStartupImpl$startCommunication$1;

    iget-object v0, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$startCommunication$1;->c:Lcom/dynatrace/agent/OneAgentStartupImpl;

    iget-object p0, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$startCommunication$1;->d:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-direct {p1, v0, p0, p2}, Lcom/dynatrace/agent/OneAgentStartupImpl$startCommunication$1;-><init>(Lcom/dynatrace/agent/OneAgentStartupImpl;Lcom/dynatrace/android/agent/conf/ServerConfiguration;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/agent/OneAgentStartupImpl$startCommunication$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/OneAgentStartupImpl$startCommunication$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/OneAgentStartupImpl$startCommunication$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$startCommunication$1;->b:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$startCommunication$1;->c:Lcom/dynatrace/agent/OneAgentStartupImpl;

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v5, Lcom/dynatrace/agent/OneAgentStartupImpl;->m:Lkotlinx/coroutines/Job;

    if-eqz p1, :cond_4

    iput v4, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$startCommunication$1;->b:I

    invoke-interface {p1, p0}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    iput v3, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$startCommunication$1;->b:I

    invoke-static {v5, p0}, Lcom/dynatrace/agent/OneAgentStartupImpl;->d(Lcom/dynatrace/agent/OneAgentStartupImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast p1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    const-string v1, "starting BPv4 communication"

    invoke-static {v1}, Lcom/dynatrace/android/agent/util/Utility;->b(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/dynatrace/agent/OneAgentStartupImpl;->a:Lcom/dynatrace/agent/communication/CommunicationManager;

    iput v2, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$startCommunication$1;->b:I

    iget-object p0, p0, Lcom/dynatrace/agent/OneAgentStartupImpl$startCommunication$1;->d:Lcom/dynatrace/android/agent/conf/ServerConfiguration;

    invoke-interface {v1, p1, p0}, Lcom/dynatrace/agent/communication/CommunicationManager;->b(Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lcom/dynatrace/android/agent/conf/ServerConfiguration;)Lkotlin/Unit;

    move-result-object p0

    if-ne p0, v0, :cond_6

    :goto_2
    return-object v0

    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
