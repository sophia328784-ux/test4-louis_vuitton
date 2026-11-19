.class final Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$delegate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase;Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;)V
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
        "params",
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
    c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPExclusiveViewModelImpl$delegate$1"
    f = "PLPExclusiveViewModelImpl.kt"
    l = {
        0x74
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

.field public synthetic d:I

.field public final synthetic e:Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$delegate$1;->e:Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$delegate$1;->f:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$delegate$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$delegate$1;->e:Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$delegate$1;->f:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl;

    invoke-direct {v0, v1, p0, p3}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$delegate$1;-><init>(Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$delegate$1;->c:Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

    iput p2, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$delegate$1;->d:I

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$delegate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$delegate$1;->c:Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$delegate$1;->d:I

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$delegate$1;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$delegate$1;->c:Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

    iput v1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$delegate$1;->d:I

    iput v5, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$delegate$1;->b:I

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$delegate$1;->e:Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;

    invoke-virtual {v3, p1, v1, p0}, Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;->a(Ljava/lang/String;ILkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_3

    move-object v1, p1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$delegate$1;->f:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl;

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$getDynamicYieldChooseVariation$1;

    invoke-direct {v2, p0, v0, v4}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl$getDynamicYieldChooseVariation$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {v1, v4, v4, v2, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$Screen;->a:Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$Screen;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl;->O0(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;)V

    :cond_3
    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
