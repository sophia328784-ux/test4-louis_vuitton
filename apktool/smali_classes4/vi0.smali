.class public final synthetic Lvi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

.field public final synthetic d:Landroidx/navigation/NavHostController;

.field public final synthetic e:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Landroidx/navigation/NavHostController;Landroidx/compose/runtime/State;I)V
    .locals 0

    iput p4, p0, Lvi0;->b:I

    iput-object p1, p0, Lvi0;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

    iput-object p2, p0, Lvi0;->d:Landroidx/navigation/NavHostController;

    iput-object p3, p0, Lvi0;->e:Landroidx/compose/runtime/State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lvi0;->b:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    iget-object v3, p0, Lvi0;->e:Landroidx/compose/runtime/State;

    iget-object v4, p0, Lvi0;->d:Landroidx/navigation/NavHostController;

    iget-object p0, p0, Lvi0;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ModifyVariationClick;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->l:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    :cond_1
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->Q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ModifyVariationClick;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;->c0(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;)V

    invoke-virtual {v4}, Landroidx/navigation/NavController;->e()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$RequestReturnClick;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->l:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    if-eqz v3, :cond_2

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_3

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v5, v3}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v5, v2

    :goto_2
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->Q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$RequestReturnClick;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;->c0(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ReturnSummary;->INSTANCE:Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ReturnSummary;

    invoke-static {v4, p0, v2, v1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$RequestExchangeClick;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->l:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    if-eqz v5, :cond_4

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    if-eqz v5, :cond_4

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    sget-object v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object v5, v2

    :goto_3
    if-eqz v5, :cond_5

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v6, v5}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object v6, v2

    :goto_4
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->Q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$RequestExchangeClick;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;->c0(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->c:Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel;

    instance-of v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Skip;

    if-eqz v0, :cond_8

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;->E2()V

    new-instance p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ExchangeReview;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->l:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    goto :goto_5

    :cond_6
    move-object v0, v2

    :goto_5
    if-nez v0, :cond_7

    const-string v0, ""

    :cond_7
    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ExchangeReview;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    sget-object p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ExchangeVariation;->INSTANCE:Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ExchangeVariation;

    :goto_6
    invoke-static {v4, p0, v2, v1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;->o3()V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->f:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    sget-object v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v7, v6}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnContinueClick;

    invoke-direct {v0, v5}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnContinueClick;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;->c0(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->p:Z

    if-eqz p0, :cond_a

    sget-object p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$Selection;->INSTANCE:Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$Selection;

    goto :goto_8

    :cond_a
    sget-object p0, Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ReturnSummary;->INSTANCE:Lcom/vuitton/android/presentation/screen/orders/components/exchange/ReturnOrExchangeRoute$ReturnSummary;

    :goto_8
    invoke-static {v4, p0, v2, v1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
