.class public final synthetic Lru0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;I)V
    .locals 0

    iput p4, p0, Lru0;->b:I

    iput-object p1, p0, Lru0;->c:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    iput-object p2, p0, Lru0;->d:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lru0;->e:Landroidx/compose/runtime/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lru0;->b:I

    const/4 v2, 0x0

    iget-object v3, v0, Lru0;->e:Landroidx/compose/runtime/State;

    iget-object v4, v0, Lru0;->d:Lkotlin/jvm/functions/Function1;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->a:Ljava/lang/String;

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->b:Ljava/lang/String;

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    new-instance v11, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnResultCarouselProduct;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->g:Ljava/lang/String;

    invoke-direct {v11, v3, v7, v2}, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnResultCarouselProduct;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v6, v0, Lru0;->c:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    move-object v8, v13

    invoke-static/range {v6 .. v11}, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt;->c(Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;ILcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;)V

    iget-object v14, v1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->c:Ljava/lang/String;

    iget-object v15, v1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    new-instance v11, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    move-object v12, v7

    invoke-direct/range {v11 .. v18}, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;ILjava/time/LocalDateTime;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->a:Ljava/lang/String;

    iget-object v13, v1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->b:Ljava/lang/String;

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    new-instance v11, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnSuggestionsCarouselProduct;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->g:Ljava/lang/String;

    invoke-direct {v11, v3, v7, v2}, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnSuggestionsCarouselProduct;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v6, v0, Lru0;->c:Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    move-object v8, v13

    invoke-static/range {v6 .. v11}, Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt;->c(Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;ILcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;)V

    iget-object v14, v1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->c:Ljava/lang/String;

    iget-object v15, v1, Lcom/vuitton/android/presentation/screen/search/models/SuggestionItemUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    new-instance v11, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    move-object v12, v7

    invoke-direct/range {v11 .. v18}, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;ILjava/time/LocalDateTime;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v4, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
