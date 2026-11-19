.class public final synthetic Lzi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p4, p0, Lzi0;->b:I

    iput-object p1, p0, Lzi0;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

    iput-object p2, p0, Lzi0;->d:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lzi0;->e:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lzi0;->b:I

    const/4 v1, 0x0

    iget-object v2, p0, Lzi0;->e:Landroidx/compose/runtime/MutableState;

    iget-object v3, p0, Lzi0;->d:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lzi0;->c:Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ValidateBottomSheetClick;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->l:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v4, v2}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v4, v1

    :goto_1
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->Q(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ValidateBottomSheetClick;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;->c0(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;)V

    invoke-interface {p0, v1}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;->X7(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet;)V

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-interface {p0, v1}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;->X7(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet;)V

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->f:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;->a:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->g:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v4, v2}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnValidationClick;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnValidationClick;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModel;->c0(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;)V

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
