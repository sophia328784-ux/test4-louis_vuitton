.class final Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1;
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
    c = "com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1"
    f = "ConnectivitySectionDetailViewModelImpl.kt"
    l = {
        0x70
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1;->d:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1;->d:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1;->d:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->r:Landroidx/lifecycle/MutableLiveData;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1;->c:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpVideoUseCase;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1;->c:Ljava/lang/Object;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl$getLightUpVideo$1;->b:I

    invoke-virtual {p1, p0}, Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpVideoUseCase;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;

    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_3

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/connectivity/ConnectivityMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/common/Video;)Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;

    move-result-object p0

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
