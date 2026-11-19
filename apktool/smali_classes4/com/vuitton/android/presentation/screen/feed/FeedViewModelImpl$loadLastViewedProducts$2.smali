.class final Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/util/List<",
        "+",
        "Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;",
        ">;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "productList",
        "",
        "Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;"
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
    c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$loadLastViewedProducts$2"
    f = "FeedViewModelImpl.kt"
    l = {
        0x2f5,
        0x2fa
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/util/ArrayList;

.field public c:Ljava/lang/Object;

.field public d:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/List;

.field public g:Ljava/util/Iterator;

.field public h:I

.field public i:I

.field public j:I

.field public synthetic k:Ljava/lang/Object;

.field public final synthetic l:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

.field public final synthetic m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->l:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->m:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->l:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->m:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;-><init>(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->k:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->j:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0xa

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->l:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    const/4 v8, 0x0

    if-eqz v3, :cond_2

    if-eq v3, v5, :cond_1

    if-ne v3, v4, :cond_0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->i:I

    iget v3, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->h:I

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->g:Ljava/util/Iterator;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->f:Ljava/util/List;

    check-cast v9, Ljava/util/List;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->e:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->d:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->c:Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v16, v11

    move-object v11, v10

    move-object/from16 v10, v16

    goto/16 :goto_3

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_1
    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->b:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    check-cast v3, Lkotlin/Result;

    iget-object v3, v3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->R:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/feed/models/FeedFeatureFlags;->d:Z

    if-eqz v3, :cond_b

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;

    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/model/product/LastViewedProduct;->a:Ljava/lang/String;

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v10, v9}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->k:Ljava/lang/Object;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->b:Ljava/util/ArrayList;

    iput v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->j:I

    invoke-virtual {v1, v3, v0}, Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;->a(Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_4

    goto/16 :goto_4

    :cond_4
    move-object/from16 v16, v3

    move-object v3, v1

    move-object/from16 v1, v16

    :goto_1
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v5, v3, Lkotlin/Result$Failure;

    if-nez v5, :cond_a

    move-object v5, v3

    check-cast v5, Ljava/util/List;

    move-object v9, v5

    check-cast v9, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-static {v9, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    iget-object v11, v11, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->e:Ljava/lang/String;

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v12, v11}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v1, v9}, Lkotlin/collections/CollectionsKt;->p0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->m:Ljava/lang/String;

    move-object v12, v3

    move v3, v9

    move-object v11, v10

    move-object v9, v5

    move-object v10, v7

    move-object v5, v1

    move v1, v3

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    iget-object v14, v10, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->C:Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->k:Ljava/lang/Object;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->b:Ljava/util/ArrayList;

    iput-object v12, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->c:Ljava/lang/Object;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->d:Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->e:Ljava/lang/String;

    move-object v15, v9

    check-cast v15, Ljava/util/List;

    iput-object v15, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->f:Ljava/util/List;

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->g:Ljava/util/Iterator;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->h:I

    iput v1, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->i:I

    iput v4, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->j:I

    invoke-virtual {v14, v13, v0}, Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase;->a(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v2, :cond_6

    :goto_4
    return-object v2

    :cond_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_9

    check-cast v9, Ljava/lang/Iterable;

    move-object v3, v12

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v9, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v12, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    invoke-static {v2}, Lcom/vuitton/android/presentation/model/common/mapper/ProductShortMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;)Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    const/4 v14, 0x0

    const/16 v15, 0x1c

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;I)V

    goto :goto_6

    :cond_9
    move-object v3, v12

    sget-object v12, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v14, 0x0

    const/16 v15, 0x1c

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;I)V

    :cond_a
    :goto_6
    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v2, v7, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const-string v3, "FeedViewModelImpl"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4, v1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v9, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v11, 0x0

    const/16 v12, 0x1c

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->m:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;I)V

    goto :goto_7

    :cond_b
    sget-object v9, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v11, 0x0

    const/16 v12, 0x1c

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl$loadLastViewedProducts$2;->m:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;->Mc(Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;I)V

    :cond_c
    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
