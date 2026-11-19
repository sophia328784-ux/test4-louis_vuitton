.class final Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$viewState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;-><init>(ILkotlinx/coroutines/flow/Flow;ZLkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;ZZZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function6<",
        "Landroidx/paging/PagingData<",
        "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;",
        ">;",
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
        "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;",
        "Ljava/lang/Boolean;",
        "Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;",
        "<unused var>",
        "Landroidx/paging/PagingData;",
        "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;",
        "page",
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
        "currentGridMode",
        "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;",
        "changeGridVocalizationEnabled",
        "",
        "currentFocusedProduct",
        "Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;"
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
    c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core.PLPCoreDelegate$viewState$1"
    f = "PLPCoreDelegate.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

.field public synthetic c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

.field public synthetic d:Z

.field public synthetic e:Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$viewState$1;->f:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    const/4 p1, 0x6

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$viewState$1;->b:Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$viewState$1;->c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    iget-boolean v9, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$viewState$1;->d:Z

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$viewState$1;->e:Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->b:Ljava/lang/String;

    move-object v2, v1

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->c:Ljava/lang/String;

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, p1

    :goto_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$viewState$1;->f:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->n:Lkotlinx/coroutines/flow/Flow;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->q:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    if-eqz v1, :cond_2

    iget v1, v1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->g:I

    :goto_2
    move v7, v1

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :goto_3
    iget-boolean v5, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->c:Z

    iget-boolean v6, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->d:Z

    if-eqz v0, :cond_3

    iget p0, v0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->f:I

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    move-object v11, v1

    goto :goto_4

    :cond_3
    move-object v11, p1

    :goto_4
    if-eqz v0, :cond_4

    iget-object p0, v0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->e:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    if-eqz p0, :cond_4

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductListOptionMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    move-result-object p0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->c:Ljava/util/List;

    :cond_4
    if-nez p1, :cond_5

    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_5
    move-object v12, p1

    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    invoke-direct/range {v1 .. v12}, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/flow/Flow;ZZILcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;ZLcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;Ljava/lang/Integer;Ljava/util/List;)V

    return-object v1
.end method

.method public final l(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/paging/PagingData;

    check-cast p2, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    check-cast p3, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p5, Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;

    check-cast p6, Lkotlin/coroutines/Continuation;

    new-instance p4, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$viewState$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$viewState$1;->f:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    invoke-direct {p4, p0, p6}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$viewState$1;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;Lkotlin/coroutines/Continuation;)V

    iput-object p2, p4, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$viewState$1;->b:Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iput-object p3, p4, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$viewState$1;->c:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    iput-boolean p1, p4, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$viewState$1;->d:Z

    iput-object p5, p4, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$viewState$1;->e:Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p4, p0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$viewState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
