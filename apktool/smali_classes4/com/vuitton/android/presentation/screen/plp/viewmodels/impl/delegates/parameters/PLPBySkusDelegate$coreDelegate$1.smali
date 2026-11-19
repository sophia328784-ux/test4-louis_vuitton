.class final Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate$coreDelegate$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate;-><init>(ZZLkotlinx/coroutines/CoroutineScope;Ljava/util/List;ZLcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/util/List<",
        "+",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        ">;",
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
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
        "skus",
        "",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "<unused var>",
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
    c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters.PLPBySkusDelegate$coreDelegate$1"
    f = "PLPBySkusDelegate.kt"
    l = {
        0x25
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/util/List;

.field public final synthetic d:Lcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate$coreDelegate$1;->d:Lcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate$coreDelegate$1;->e:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p2, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate$coreDelegate$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate$coreDelegate$1;->d:Lcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate$coreDelegate$1;->e:Lkotlin/jvm/functions/Function1;

    invoke-direct {p2, v0, p0, p3}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate$coreDelegate$1;-><init>(Lcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Ljava/util/List;

    iput-object p1, p2, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate$coreDelegate$1;->c:Ljava/util/List;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p2, p0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate$coreDelegate$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate$coreDelegate$1;->c:Ljava/util/List;

    check-cast v0, Ljava/util/List;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate$coreDelegate$1;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->b:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v5, v2}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate$coreDelegate$1;->c:Ljava/util/List;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate$coreDelegate$1;->b:I

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate$coreDelegate$1;->d:Lcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;

    invoke-virtual {v0, p1, p0}, Lcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;->a(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$Screen;->a:Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$Screen;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate$coreDelegate$1;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
