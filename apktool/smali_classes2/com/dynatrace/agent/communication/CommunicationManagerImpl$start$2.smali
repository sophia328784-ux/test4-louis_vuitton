.class final Lcom/dynatrace/agent/communication/CommunicationManagerImpl$start$2;
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
    c = "com.dynatrace.agent.communication.CommunicationManagerImpl$start$2"
    f = "CommunicationManagerImpl.kt"
    l = {
        0x5c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$start$2;->c:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$start$2;

    iget-object p0, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$start$2;->c:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    invoke-direct {p1, p0, p2}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$start$2;-><init>(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$start$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$start$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$start$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$start$2;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_0

    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$start$2;->c:Lcom/dynatrace/agent/communication/CommunicationManagerImpl;

    iget-object v1, p1, Lcom/dynatrace/agent/communication/CommunicationManagerImpl;->f:Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;

    invoke-interface {v1}, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityChecker;->a()Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object v1

    new-instance v4, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$start$2$1;

    invoke-direct {v4, p1}, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$start$2$1;-><init>(Lcom/dynatrace/agent/communication/CommunicationManagerImpl;)V

    iput v3, p0, Lcom/dynatrace/agent/communication/CommunicationManagerImpl$start$2;->b:I

    invoke-interface {v1, v4, p0}, Lkotlinx/coroutines/flow/Flow;->f(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    invoke-static {}, Los;->d()V

    return-object v2
.end method
