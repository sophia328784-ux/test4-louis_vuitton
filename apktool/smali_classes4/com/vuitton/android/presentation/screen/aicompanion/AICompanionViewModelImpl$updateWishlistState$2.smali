.class final Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$updateWishlistState$2;
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
    c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl$updateWishlistState$2"
    f = "AICompanionViewModelImpl.kt"
    l = {
        0x1dc,
        0x1dd
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$updateWishlistState$2;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$updateWishlistState$2;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$updateWishlistState$2;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$updateWishlistState$2;-><init>(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$updateWishlistState$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$updateWishlistState$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$updateWishlistState$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$updateWishlistState$2;->b:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$updateWishlistState$2;->c:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    const/4 v6, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v6, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$updateWishlistState$2;->b:I

    iget-object v2, v2, Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;->a:Lcom/vuitton/android/domain/repository/WishlistRepository;

    invoke-interface {v2}, Lcom/vuitton/android/domain/repository/WishlistRepository;->f()Lcom/vuitton/foundation/model/domain/model/common/ResultStrategyLazy;

    move-result-object v2

    if-ne v2, v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    check-cast v2, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl$updateWishlistState$2;->b:I

    invoke-interface {v2, v0}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4

    :goto_1
    return-object v1

    :cond_4
    :goto_2
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v1, v0, Lkotlin/Result$Failure;

    if-nez v1, :cond_d

    move-object v1, v0

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/wishlist/Wishlist;

    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/wishlist/Wishlist;->a:Ljava/util/List;

    :cond_5
    if-nez v4, :cond_6

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_6
    check-cast v4, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;->b:Ljava/lang/String;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v6, v4}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    iget-object v3, v5, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->t:Lkotlinx/coroutines/flow/MutableStateFlow;

    :goto_4
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->d:Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;->b:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v8, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;

    iget-object v11, v10, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->d:Ljava/util/List;

    check-cast v11, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v11, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel;

    instance-of v14, v13, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;

    if-eqz v14, :cond_9

    move-object v14, v13

    check-cast v14, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;

    iget-object v14, v14, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;->a:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    instance-of v15, v14, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;

    if-eqz v15, :cond_9

    check-cast v14, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;

    iget-object v13, v14, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;->b:Ljava/util/List;

    check-cast v13, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 p0, v0

    invoke-static {v13, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;

    sget-object v16, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v2, v13, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->a:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    move-object/from16 v16, v0

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v13, v0}, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->a(Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;Z)Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    const/16 v2, 0xa

    goto :goto_7

    :cond_8
    const/4 v0, 0x5

    invoke-static {v14, v15, v0}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;->b(Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;Ljava/util/ArrayList;I)Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$ProductCarouselUiModel;

    move-result-object v0

    new-instance v13, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;

    invoke-direct {v13, v0}, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageSectionUiModel$EditorialSection;-><init>(Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;)V

    goto :goto_8

    :cond_9
    move-object/from16 p0, v0

    :goto_8
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xa

    move-object/from16 v0, p0

    goto :goto_6

    :cond_a
    move-object/from16 p0, v0

    const/16 v0, 0x37

    invoke-static {v10, v12, v0}, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;Ljava/util/ArrayList;I)Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatMessageUiModel;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xa

    move-object/from16 v0, p0

    goto/16 :goto_5

    :cond_b
    move-object/from16 p0, v0

    invoke-static {v7, v9}, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;Ljava/util/ArrayList;)Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;

    move-result-object v10

    const/4 v15, 0x0

    const/16 v16, 0x1f7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v6 .. v16}, Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;ZLcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionOnboardingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatSessionUiModel;Ljava/util/List;Ljava/lang/Boolean;ZZLjava/util/List;I)Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionViewState;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_9

    :cond_c
    const/16 v2, 0xa

    move-object/from16 v0, p0

    goto/16 :goto_4

    :cond_d
    move-object/from16 p0, v0

    :goto_9
    invoke-static/range {p0 .. p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    sget-object v2, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;->v:Ljava/lang/String;

    const-string v3, "Unable to get wishlist"

    invoke-interface {v1, v2, v3, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
