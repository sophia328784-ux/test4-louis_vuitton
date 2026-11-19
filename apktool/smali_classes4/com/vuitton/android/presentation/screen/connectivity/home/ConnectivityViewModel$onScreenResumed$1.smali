.class final Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$onScreenResumed$1;
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
    c = "com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel$onScreenResumed$1"
    f = "ConnectivityViewModel.kt"
    l = {
        0x4b
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

.field public c:I

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$onScreenResumed$1;->d:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$onScreenResumed$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$onScreenResumed$1;->d:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$onScreenResumed$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$onScreenResumed$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$onScreenResumed$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$onScreenResumed$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$onScreenResumed$1;->c:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$onScreenResumed$1;->b:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$onScreenResumed$1;->d:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->f:Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;

    new-instance v3, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$Params;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$Params;-><init>(ZZ)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$onScreenResumed$1;->b:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    iput v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$onScreenResumed$1;->c:I

    invoke-virtual {v1, v3, p0}, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;->a(Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$Params;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    :goto_0
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/connectivity/ConnectedObject;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModelKt;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/ConnectedObject;)Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->Cc(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;Ljava/util/ArrayList;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
