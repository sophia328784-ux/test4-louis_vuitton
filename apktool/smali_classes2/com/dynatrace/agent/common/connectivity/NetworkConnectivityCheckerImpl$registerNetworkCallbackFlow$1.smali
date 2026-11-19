.class final Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Lcom/dynatrace/agent/common/connectivity/NetworkState;",
        ">;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Lcom/dynatrace/agent/common/connectivity/NetworkState;"
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
    c = "com.dynatrace.agent.common.connectivity.NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1"
    f = "NetworkConnectivityCheckerImpl.kt"
    l = {
        0x7a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1;->d:Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1;

    iget-object p0, p0, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1;->d:Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;

    invoke-direct {v0, p0, p2}, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1;-><init>(Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1;->c:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v1, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1$networkCallback$1;

    invoke-direct {v1, p1}, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1$networkCallback$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;)V

    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1;->d:Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;

    iget-object v5, v4, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;->b:Landroid/net/ConnectivityManager;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v3, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_2
    new-instance v3, Lt30;

    const/16 v5, 0x17

    invoke-direct {v3, v4, v1, v5}, Lt30;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iput v2, p0, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1;->b:I

    invoke-static {p1, v3, p0}, Lkotlinx/coroutines/channels/ProduceKt;->a(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
