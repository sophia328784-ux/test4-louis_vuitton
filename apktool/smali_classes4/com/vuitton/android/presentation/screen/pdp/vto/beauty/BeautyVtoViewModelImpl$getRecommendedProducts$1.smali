.class final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getRecommendedProducts$1;
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
    c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$getRecommendedProducts$1"
    f = "BeautyVtoViewModelImpl.kt"
    l = {
        0x37e
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getRecommendedProducts$1;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getRecommendedProducts$1;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getRecommendedProducts$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getRecommendedProducts$1;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getRecommendedProducts$1;->d:Ljava/lang/String;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getRecommendedProducts$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getRecommendedProducts$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getRecommendedProducts$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getRecommendedProducts$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getRecommendedProducts$1;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->X:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getRecommendedProducts$1;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-ne v3, v5, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->j:Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getRecommendedProducts$1;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iput v5, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl$getRecommendedProducts$1;->b:I

    invoke-virtual {p1, v3, p0}, Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_2

    return-object v2

    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-nez p1, :cond_6

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    invoke-static {v3}, Lcom/vuitton/android/presentation/model/common/mapper/ProductTinyMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;)Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState;

    instance-of v5, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Success;

    if-eqz v5, :cond_4

    move-object v5, v3

    check-cast v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Success;

    goto :goto_2

    :cond_4
    move-object v5, v4

    :goto_2
    if-eqz v5, :cond_5

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Success;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Success;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialUiModel;

    const/16 v5, 0x7f

    invoke-static {v3, v2, v5}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialUiModel;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialUiModel;Ljava/util/ArrayList;I)Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialUiModel;

    move-result-object v3

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Success;

    invoke-direct {v5, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Success;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialUiModel;)V

    move-object v3, v5

    :cond_5
    invoke-interface {v1, p1, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_6
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_a

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_7
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState;

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Success;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Success;

    goto :goto_3

    :cond_8
    move-object v0, v4

    :goto_3
    if-eqz v0, :cond_9

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Success;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Success;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialUiModel;

    const/16 v0, 0x17f

    invoke-static {p1, v4, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialUiModel;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialUiModel;Ljava/util/ArrayList;I)Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialUiModel;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Success;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState$Success;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialUiModel;)V

    move-object p1, v0

    :cond_9
    invoke-interface {v1, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
