.class final Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;",
        "Ljava/lang/Integer;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Result<",
        "+",
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
        "params",
        "Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;",
        "page",
        ""
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
    c = "com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModelImpl$storeDelegate$1"
    f = "PSPStoreModeViewModelImpl.kt"
    l = {
        0x84
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:I

.field public synthetic d:Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;

.field public synthetic e:I

.field public final synthetic f:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;

.field public final synthetic h:Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->f:Lcom/vuitton/android/domain/monitoring/Monitor;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->g:Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->h:Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->g:Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->h:Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->f:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-direct {v0, p0, v1, v2, p3}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->d:Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;

    iput p2, v0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->e:I

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->d:Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;

    iget v5, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->e:I

    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->g:Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->g:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v4, Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Action$SearchLoading;->a:Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Action$SearchLoading;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->f:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-interface {v6, v1, v4}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v9

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    const-string v4, "pageNumber"

    invoke-virtual {v9, v1, v4}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "search"

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;->a:Ljava/lang/String;

    invoke-virtual {v9, v4, v1}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "isStoreMode"

    const-string v4, "true"

    invoke-virtual {v9, v4, v1}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "rmsCode"

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->d0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4, v1}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;->a:Ljava/lang/String;

    move v4, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;->d0()Ljava/lang/String;

    move-result-object v6

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->d:Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;

    iput-object v9, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->e:I

    iput v4, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->c:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl$storeDelegate$1;->h:Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;

    move-object v7, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_2

    return-object v8

    :cond_2
    move-object p0, v9

    :goto_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    if-nez v5, :cond_4

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->d:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const-string v1, "ResultType"

    if-nez v0, :cond_3

    sget-object v0, Lcom/vuitton/android/domain/monitoring/search/ResultType;->GOOD:Lcom/vuitton/android/domain/monitoring/search/ResultType;

    invoke-virtual {v0}, Lcom/vuitton/android/domain/monitoring/search/ResultType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/vuitton/android/domain/monitoring/search/ResultType;->NONE:Lcom/vuitton/android/domain/monitoring/search/ResultType;

    invoke-virtual {v0}, Lcom/vuitton/android/domain/monitoring/search/ResultType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_4
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Error$SearchLoadingError;

    invoke-direct {v1, v0}, Lcom/vuitton/android/domain/monitoring/search/SearchMonitoring$Error$SearchLoadingError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_5
    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    return-object v0
.end method
