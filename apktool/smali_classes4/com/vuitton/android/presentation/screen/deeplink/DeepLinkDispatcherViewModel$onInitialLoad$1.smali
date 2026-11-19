.class final Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;
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
    c = "com.vuitton.android.presentation.screen.deeplink.DeepLinkDispatcherViewModel$onInitialLoad$1"
    f = "DeepLinkDispatcherViewModel.kt"
    l = {
        0x22,
        0x2b,
        0x2c
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/util/Set;

.field public c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

.field public d:Z

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->g:Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->g:Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;-><init>(Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->g:Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;->c:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->f:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->e:I

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v9, :cond_2

    if-eq v5, v8, :cond_1

    if-ne v5, v7, :cond_0

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->d:Z

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->b:Ljava/util/Set;

    check-cast p0, Ljava/util/Set;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10

    :cond_1
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->b:Ljava/util/Set;

    check-cast v3, Ljava/util/Set;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v11, v3

    move-object v3, p1

    move-object p1, v11

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;->b:Lcom/vuitton/android/domain/repository/AppLinkRepository;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->f:Ljava/lang/Object;

    iput v9, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->e:I

    invoke-interface {p1, p0}, Lcom/vuitton/android/domain/repository/AppLinkRepository;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_4

    goto :goto_3

    :cond_4
    :goto_0
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v3, p1, Lkotlin/Result$Failure;

    if-eqz v3, :cond_5

    move-object p1, v10

    :cond_5
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_6

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    sget-object p1, Lkotlin/collections/EmptySet;->b:Lkotlin/collections/EmptySet;

    :goto_1
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;->a:Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;->a:Lcom/vuitton/android/domain/repository/AppConfigRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/AppConfigRepository;->c()Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState;

    sget-object p1, Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState$Failure;->a:Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState$Failure;

    invoke-interface {v2, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_8
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->EXCLUSIVE_OFFER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v3}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v3

    iput-object v10, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->f:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ljava/util/Set;

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->b:Ljava/util/Set;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput v8, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->e:I

    invoke-virtual {v1, v3, v6, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_9

    goto :goto_3

    :cond_9
    :goto_2
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->MY_CERTIFICATES:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v5}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v5

    iput-object v10, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->f:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/util/Set;

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->b:Ljava/util/Set;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->c:Lcom/vuitton/foundation/model/domain/model/config/AppConfig;

    iput-boolean v3, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->d:Z

    iput v7, p0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel$onInitialLoad$1;->e:I

    invoke-virtual {v1, v5, v6, p0}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v4, :cond_a

    :goto_3
    return-object v4

    :cond_a
    move-object v1, p1

    move-object p1, p0

    move-object p0, v1

    move-object v1, v0

    move v0, v3

    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_b
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState;

    new-instance v4, Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState$Success;

    new-instance v5, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;

    iget-object v6, v1, Lcom/vuitton/foundation/model/domain/model/config/AppConfig;->g:Ljava/lang/String;

    invoke-direct {v5, p0, v6, v0, p1}, Lcom/vuitton/android/presentation/link/models/LinkRoutingData;-><init>(Ljava/util/Set;Ljava/lang/String;ZZ)V

    invoke-direct {v4, v5}, Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState$Success;-><init>(Lcom/vuitton/android/presentation/link/models/LinkRoutingData;)V

    invoke-interface {v2, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
