.class public final Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "-",
        "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;",
        ">;",
        "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;",
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
        "\u0000\u0010\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0003\u001a\u00028\u0001H\n"
    }
    d2 = {
        "R",
        "T",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "it",
        "",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1"
    f = "PLPStoreModeViewModelImpl.kt"
    l = {
        0xbd
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Lkotlinx/coroutines/flow/FlowCollector;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1;->e:Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1;->e:Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;

    invoke-direct {v0, p3, p0}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, v0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1;->d:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1;->d:Ljava/lang/Object;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1;->b:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1;->e:Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;->yc()Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeProductListDelegate;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeProductListDelegate;->d:Lkotlinx/coroutines/flow/StateFlow;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1;->c:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1;->d:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$special$$inlined$flatMapLatest$1;->b:I

    invoke-static {v0, p1, p0}, Lkotlinx/coroutines/flow/FlowKt;->n(Lkotlinx/coroutines/flow/FlowCollector;Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
