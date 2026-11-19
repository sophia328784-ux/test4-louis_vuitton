.class final Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1$WhenMappings;
    }
.end annotation

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
    c = "com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel$getConnectedObjects$1"
    f = "ConnectivityViewModel.kt"
    l = {
        0x79,
        0x7f
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;ZLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1;->c:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1;->d:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1;->c:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1;->d:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;ZLkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1;->c:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->e:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    iget-object p1, p1, Lcom/vuitton/android/domain/service/authentication/UserSessionService;->g:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v5, :cond_5

    if-ne p1, v3, :cond_4

    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->c:Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1;->b:I

    iget-object v1, p1, Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;->a:Lcom/vuitton/android/domain/repository/LightUpRepository;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;->b:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->KEEP_ALL:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v2}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v2

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->SNEAKERS:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v3}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result p1

    invoke-interface {v1, v2, p1, p0}, Lcom/vuitton/android/domain/repository/LightUpRepository;->i(ZZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    goto :goto_3

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_5
    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->f:Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;

    new-instance v1, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$Params;

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1;->d:Z

    invoke-direct {v1, v5, v2}, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$Params;-><init>(ZZ)V

    iput v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel$getConnectedObjects$1;->b:I

    invoke-virtual {p1, v1, p0}, Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;->a(Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase$Params;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/io/Serializable;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_1
    return-object v0

    :cond_6
    :goto_2
    check-cast p1, Ljava/util/List;

    :goto_3
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/connectivity/ConnectedObject;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModelKt;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/ConnectedObject;)Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-static {v4, p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;->Cc(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;Ljava/util/ArrayList;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
