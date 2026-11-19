.class final Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/core/events/AppEvent;",
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
        "Lcom/vuitton/android/core/events/AppEvent;"
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
    c = "com.vuitton.android.presentation.screen.connectivity.home.ConnectivityFragment$onCreate$1$1$2"
    f = "ConnectivityFragment.kt"
    l = {
        0x83
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2;->d:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2;->d:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/core/events/AppEvent;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/core/events/AppEvent;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/core/events/AppEvent$ConnectivityRefreshFromServerEvent;->a:Lcom/vuitton/android/core/events/AppEvent$ConnectivityRefreshFromServerEvent;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2;->d:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;

    if-eqz p1, :cond_2

    iput-boolean v4, v2, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->P:Z

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/vuitton/android/core/events/AppEvent$RefreshTrunkSpeakerItemEvent;->a:Lcom/vuitton/android/core/events/AppEvent$RefreshTrunkSpeakerItemEvent;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2$1;

    invoke-direct {v0, v2, v3}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;Lkotlin/coroutines/Continuation;)V

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2;->c:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment$onCreate$1$1$2;->b:I

    invoke-static {p1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
