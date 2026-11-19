.class final Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$manageConnectedObject$2;
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel$manageConnectedObject$2"
    f = "ConnectivityViewModel.kt"
    l = {
        0x68,
        0x6c
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$manageConnectedObject$2;->c:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$manageConnectedObject$2;->d:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$manageConnectedObject$2;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$manageConnectedObject$2;->c:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$manageConnectedObject$2;->d:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$manageConnectedObject$2;-><init>(Ljava/util/ArrayList;Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$manageConnectedObject$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$manageConnectedObject$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$manageConnectedObject$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$manageConnectedObject$2;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->o:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$manageConnectedObject$2;->d:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/linkplay/core/app/LPDeviceManager;->getInstance()Lcom/linkplay/core/app/LPDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/linkplay/core/app/LPDeviceManager;->getDevices()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkRoomHelper;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$manageConnectedObject$2;->c:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;

    invoke-direct {v4, v1}, Lcom/vuitton/android/presentation/screen/connectivity/TrunkSpeakerConnectivityItem;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lbp;

    invoke-direct {v1, v3}, Lbp;-><init>(I)V

    iput v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$manageConnectedObject$2;->b:I

    invoke-virtual {p1, p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->zc(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    goto :goto_1

    :cond_4
    new-instance v1, Lp6;

    invoke-direct {v1, v3, v5}, Lp6;-><init>(ILjava/util/ArrayList;)V

    iput v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$manageConnectedObject$2;->b:I

    invoke-virtual {p1, p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->zc(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    :goto_1
    return-object v0

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
