.class final Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1;
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
    c = "com.vuitton.android.presentation.screen.search.components.SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1"
    f = "SearchScreenComposable.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

.field public final synthetic c:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1;->b:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1;->c:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1;->b:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1;->c:Landroidx/compose/runtime/State;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1;->c:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->d:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const/16 v3, 0xa

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;->b:Ljava/util/List;

    if-eqz v2, :cond_6

    check-cast v2, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    if-eqz v6, :cond_1

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->d:Ljava/lang/String;

    goto :goto_2

    :cond_1
    move-object v6, v4

    :goto_2
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_4
    move-object v5, v4

    :goto_3
    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    move-object v5, v4

    :goto_4
    move-object v8, v5

    goto :goto_5

    :cond_6
    move-object v8, v4

    :goto_5
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->d:Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;

    if-eqz v2, :cond_7

    check-cast v1, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;

    goto :goto_6

    :cond_7
    move-object v1, v4

    :goto_6
    if-eqz v1, :cond_c

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/search/models/SearchListState$Result;->b:Ljava/util/List;

    if-eqz v1, :cond_c

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move/from16 v16, v3

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v16, 0x1

    if-ltz v16, :cond_a

    check-cast v3, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    iget-object v6, v3, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    if-eqz v6, :cond_8

    iget-object v7, v6, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->c:Ljava/lang/Double;

    move-object v14, v7

    goto :goto_8

    :cond_8
    move-object v14, v4

    :goto_8
    if-eqz v6, :cond_9

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->d:Ljava/lang/String;

    move-object v15, v6

    goto :goto_9

    :cond_9
    move-object v15, v4

    :goto_9
    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v12, v3, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v13, v3, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->b:Ljava/lang/String;

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;

    const/16 v17, 0x0

    const-string v10, "search_results"

    const-string v11, "Search results"

    invoke-direct/range {v9 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v16, v5

    goto :goto_7

    :cond_a
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v4

    :cond_b
    :goto_a
    move-object v11, v2

    goto :goto_b

    :cond_c
    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_a

    :goto_b
    new-instance v6, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$ViewItemListLoaded;

    const-string v7, "search"

    const-string v9, "search_results"

    const-string v10, "Search results"

    invoke-direct/range {v6 .. v11}, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$ViewItemListLoaded;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$SearchScreenComposable$1$4$1$3$11$1;->b:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    invoke-interface {v0, v6}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->j(Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
