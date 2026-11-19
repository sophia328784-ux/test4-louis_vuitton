.class final Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$checkForHistory$1$1;
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
        "Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "historyItems",
        "",
        "Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;"
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
    c = "com.vuitton.android.presentation.screen.search.SearchViewModelImpl$checkForHistory$1$1"
    f = "SearchViewModelImpl.kt"
    l = {
        0xf5
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$checkForHistory$1$1;->d:Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$checkForHistory$1$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$checkForHistory$1$1;->d:Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$checkForHistory$1$1;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$checkForHistory$1$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$checkForHistory$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$checkForHistory$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$checkForHistory$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$checkForHistory$1$1;->d:Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->q:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$checkForHistory$1$1;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$checkForHistory$1$1;->b:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    if-ne v5, v6, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v7

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    if-eqz v5, :cond_e

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_3
    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, v8, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v8, Lcom/vuitton/android/presentation/screen/search/models/SearchState;->SUCCESS_SEARCH:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    if-eq v5, v8, :cond_5

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    sget-object v8, Lcom/vuitton/android/presentation/screen/search/models/SearchState;->NO_RESULT_SEARCH:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    if-eq v5, v8, :cond_5

    :cond_4
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    sget-object v8, Lcom/vuitton/android/presentation/screen/search/models/SearchState;->HISTORY:Lcom/vuitton/android/presentation/screen/search/models/SearchState;

    invoke-interface {v2, v5, v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_5
    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    :goto_0
    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;

    move-object v9, v3

    check-cast v9, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v14, v13, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;

    if-eqz v14, :cond_7

    sget-object v14, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;

    iget-object v15, v13, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->a:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    iget-object v14, v13, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->b:Ljava/lang/String;

    iget-object v6, v13, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->c:Ljava/lang/String;

    move-object/from16 v23, v7

    iget-object v7, v13, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->d:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModelKt;->b(Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;)I

    move-result v20

    iget-object v7, v13, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->e:Ljava/time/LocalDateTime;

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->f:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    if-eqz v13, :cond_6

    invoke-static {v13}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    move-result-object v13

    move-object/from16 v19, v13

    :goto_2
    move-object/from16 v16, v15

    goto :goto_3

    :cond_6
    move-object/from16 v19, v23

    goto :goto_2

    :goto_3
    new-instance v15, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;

    const/16 v22, 0x0

    move-object/from16 v18, v6

    move-object/from16 v21, v7

    move-object/from16 v17, v14

    invoke-direct/range {v15 .. v22}, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;ILjava/time/LocalDateTime;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_7
    move-object/from16 v23, v7

    instance-of v6, v13, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryTextResearch;

    if-eqz v6, :cond_8

    new-instance v15, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryResearchUiModel;

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryTextResearch;

    iget-object v6, v13, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryTextResearch;->a:Ljava/lang/String;

    iget-object v7, v13, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryTextResearch;->b:Ljava/time/LocalDateTime;

    invoke-direct {v15, v6, v7}, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryResearchUiModel;-><init>(Ljava/lang/String;Ljava/time/LocalDateTime;)V

    :goto_4
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v23

    const/4 v6, 0x1

    goto :goto_1

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-object v23

    :cond_9
    move-object/from16 v23, v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;

    invoke-direct {v5, v10}, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModel;-><init>(Ljava/util/List;)V

    invoke-interface {v8, v2, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;

    if-eqz v6, :cond_a

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->a:Ljava/lang/String;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v6, v5}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    move-object/from16 v5, v23

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$checkForHistory$1$1;->c:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$checkForHistory$1$1;->b:I

    invoke-static {v1, v3, v0}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;->Ac(Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;Ljava/util/ArrayList;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_f

    return-object v4

    :cond_d
    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_e
    :goto_7
    if-eqz v3, :cond_f

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getTrending$1;

    const/4 v5, 0x0

    invoke-direct {v2, v1, v5}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl$getTrending$1;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x3

    invoke-static {v0, v5, v5, v2, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_f
    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
