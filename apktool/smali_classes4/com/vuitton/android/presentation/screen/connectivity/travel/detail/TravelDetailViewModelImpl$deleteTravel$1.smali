.class final Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl$deleteTravel$1;
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
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailViewModelImpl$deleteTravel$1"
    f = "TravelDetailViewModelImpl.kt"
    l = {
        0x22
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl$deleteTravel$1;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl$deleteTravel$1;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl$deleteTravel$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl$deleteTravel$1;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl$deleteTravel$1;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl$deleteTravel$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl$deleteTravel$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl$deleteTravel$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl$deleteTravel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl$deleteTravel$1;->c:Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl;->d:Landroidx/lifecycle/MutableLiveData;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl$deleteTravel$1;->b:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/travel/DeleteTravelUseCase;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl$deleteTravel$1;->b:I

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl$deleteTravel$1;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/vuitton/android/domain/usecase/travel/DeleteTravelUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_3

    move-object p1, p0

    check-cast p1, Lkotlin/Unit;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_3
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
