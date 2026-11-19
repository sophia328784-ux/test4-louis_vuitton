.class final Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;
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
        "Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;",
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
        "filterParams",
        "Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;",
        "pageIndex",
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
    c = "com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModelImpl$onlineDelegate$1"
    f = "PLPStoreModeViewModelImpl.kt"
    l = {
        0xc1
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:I

.field public synthetic d:Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

.field public synthetic e:I

.field public final synthetic f:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;

.field public final synthetic h:Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->f:Lcom/vuitton/android/domain/monitoring/Monitor;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->g:Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->h:Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->g:Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->h:Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->f:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-direct {v0, p0, v1, v2, p3}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->d:Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

    iput p2, v0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->e:I

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->d:Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

    iget v4, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->e:I

    sget-object v8, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

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

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->g:Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;->h:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v5, Lcom/vuitton/android/domain/monitoring/plp/PLPMonitoring$Action$LoadProductListScreen;->a:Lcom/vuitton/android/domain/monitoring/plp/PLPMonitoring$Action$LoadProductListScreen;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->f:Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-interface {v6, v1, v5}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v9

    const-string v1, "categoryId"

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;->zc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5, v1}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "rmsCode"

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;->d0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5, v1}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "isStoreMode"

    const-string v5, "true"

    invoke-virtual {v9, v5, v1}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    const-string v5, "pageNumber"

    invoke-virtual {v9, v1, v5}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v5, "sortBy"

    invoke-virtual {v9, v1, v5}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_2
    const-string v1, "filterId"

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->a:Ljava/lang/String;

    invoke-virtual {v9, v5, v1}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->b:Ljava/lang/String;

    iget-boolean v6, p1, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;->n:Z

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->d:Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

    iput-object v9, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->e:I

    iput v3, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->c:I

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl$onlineDelegate$1;->h:Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;

    move-object v7, p0

    move-object v3, v0

    invoke-virtual/range {v1 .. v7}, Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_3

    return-object v8

    :cond_3
    move-object p0, v9

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/vuitton/android/domain/monitoring/plp/PLPMonitoring$Error$LoadProductListError;

    invoke-direct {v1, v0}, Lcom/vuitton/android/domain/monitoring/plp/PLPMonitoring$Error$LoadProductListError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    :cond_4
    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    return-object v0
.end method
