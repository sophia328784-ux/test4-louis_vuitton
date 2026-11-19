.class public abstract Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 23

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ListPage;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ListPage;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ListPage;->a:Ljava/util/List;

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x7

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    add-int/lit8 v10, v10, 0x1

    if-ge v10, v12, :cond_0

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->e:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v11, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ListPage;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v0, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v8, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    iget-object v11, v9, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->f:Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->e:Ljava/lang/String;

    sget-object v13, Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;->RETAIL:Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;

    if-ne v11, v13, :cond_2

    add-int/lit8 v8, v8, 0x1

    const/4 v11, 0x5

    if-ge v8, v11, :cond_3

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, 0x1

    if-ge v10, v12, :cond_3

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    sget-object v9, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v0, 0x6

    const-string v7, ""

    const-string v9, ",+..."

    if-le v10, v0, :cond_5

    move-object v0, v9

    goto :goto_3

    :cond_5
    move-object v0, v7

    :goto_3
    const/4 v13, 0x4

    if-le v8, v13, :cond_6

    move-object v14, v9

    goto :goto_4

    :cond_6
    move-object v14, v7

    :goto_4
    new-instance v15, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalDigitalOrders;

    invoke-direct {v12, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalDigitalOrders;-><init>(I)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalRetailOrders;

    invoke-direct {v7, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$TotalRetailOrders;-><init>(I)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$DigitalPurchaseId;

    const/4 v10, 0x0

    const/16 v11, 0x3e

    move-object v9, v7

    const-string v7, ","

    move-object/from16 v16, v8

    const/4 v8, 0x0

    move-object/from16 v17, v9

    const/4 v9, 0x0

    move-object/from16 v4, v16

    const/16 v16, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$DigitalPurchaseId;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$RetailPurchaseId;

    const/4 v11, 0x0

    move-object v6, v12

    const/16 v12, 0x3e

    const-string v8, ","

    move-object v7, v1

    invoke-static/range {v7 .. v12}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$RetailPurchaseId;-><init>(Ljava/lang/String;)V

    new-array v1, v13, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v6, v1, v16

    aput-object v17, v1, v5

    aput-object v4, v1, v3

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v16, 0x0

    const-string v17, "LVPass/MyLV/Dashboard/MyOrders"

    const-string v18, "mylv/my_orders"

    const-string v19, "mylv"

    invoke-direct/range {v15 .. v22}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v15

    :cond_7
    const/16 v16, 0x0

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnClick;

    if-eqz v1, :cond_8

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v14, 0x61

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "LVPass/MyLV/Dashboard/my_orders"

    const-string v9, "return_order"

    const-string v10, "MyLV"

    const-string v11, "my_order"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_8
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$InvoiceClick;

    if-eqz v1, :cond_9

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v14, 0x61

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "LVPass/MyLV/Dashboard/my_orders/detail"

    const-string v9, "invoice"

    const-string v10, "MyLV"

    const-string v11, "my_order"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_9
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnOrExchangeDetailClick;

    if-eqz v1, :cond_b

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnOrExchangeDetailClick;

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnOrExchangeDetailClick;->b:Z

    if-eqz v1, :cond_a

    const-string v1, "request_exchange"

    :goto_5
    move-object v9, v1

    goto :goto_6

    :cond_a
    const-string v1, "return_intention"

    goto :goto_5

    :goto_6
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnOrExchangeDetailClick;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "my_order_details"

    const-string v10, "my_orders"

    const-string v11, "click"

    const-string v12, "return_or_exchange"

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_b
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnFormScreen;

    if-eqz v1, :cond_c

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnFormScreen;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnFormScreen;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v7, 0x0

    const-string v8, "LVPass/MyLV/Dashboard/my_orders/my_return_fom"

    const-string v9, "mylv/my_orders"

    const-string v10, "mylv"

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_c
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnReviewScreen;

    if-eqz v1, :cond_d

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnReviewScreen;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnReviewScreen;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v7, 0x0

    const-string v8, "LVPass/MyLV/Dashboard/my_orders/my_return_review"

    const-string v9, "mylv/my_orders"

    const-string v10, "mylv"

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_d
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnSuccessScreen;

    if-eqz v1, :cond_e

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v12, 0x11

    const/4 v13, 0x0

    const/4 v7, 0x0

    const-string v8, "LVPass/MyLV/Dashboard/my_orders/my_return_success"

    const-string v9, "mylv/my_orders"

    const-string v10, "mylv"

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_e
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeSelectionScreen;

    if-eqz v1, :cond_10

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v1

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeSelectionScreen;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeSelectionScreen;->a:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeSelectionScreen;->b:Z

    if-nez v0, :cond_f

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    const-string v2, "exchange_disable"

    invoke-direct {v0, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_f
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v8

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/4 v4, 0x0

    const-string v5, "return_or_exchange_selection"

    const-string v6, "mylv_my_orders"

    const-string v7, "return_or_exchange"

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :cond_10
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeVariationScreen;

    if-eqz v1, :cond_11

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeVariationScreen;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeVariationScreen;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v7, 0x0

    const-string v8, "exchange_variation_selection"

    const-string v9, "mylv_my_orders"

    const-string v10, "return_or_exchange"

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_11
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeReviewScreen;

    if-eqz v1, :cond_12

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeReviewScreen;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeReviewScreen;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v7, 0x0

    const-string v8, "exchange_review"

    const-string v9, "mylv_my_orders"

    const-string v10, "return_or_exchange"

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_12
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeSuccessBottomSheet;

    if-eqz v1, :cond_13

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeSuccessBottomSheet;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeSuccessBottomSheet;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v7, 0x0

    const-string v8, "exchange_confirmation"

    const-string v9, "mylv_my_orders"

    const-string v10, "return_or_exchange"

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_13
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ProductSelectionForReturn;

    if-eqz v1, :cond_14

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ProductSelectionForReturn;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ProductSelectionForReturn;->a:Ljava/lang/String;

    invoke-static {v0}, Ln00;->v(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/16 v14, 0x21

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "LVPass/MyLV/Dashboard/my_orders/my_return_fom"

    const-string v9, "select_item"

    const-string v10, "MyLV"

    const-string v11, "my_order"

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_14
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnContinueClick;

    if-eqz v1, :cond_15

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnContinueClick;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnContinueClick;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/16 v14, 0x21

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "LVPass/MyLV/Dashboard/my_orders/my_return_fom"

    const-string v9, "continue_return"

    const-string v10, "MyLV"

    const-string v11, "my_order"

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_15
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnConfirmClick;

    if-eqz v1, :cond_16

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnConfirmClick;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnConfirmClick;->a:Ljava/util/List;

    invoke-direct {v1, v4}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnConfirmClick;->b:Ljava/lang/String;

    invoke-direct {v4, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Quantity;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderReturnReasons;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnConfirmClick;->c:Ljava/util/List;

    invoke-direct {v7, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderReturnReasons;-><init>(Ljava/util/List;)V

    new-array v0, v2, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v16

    aput-object v4, v0, v5

    aput-object v7, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/16 v14, 0x21

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "LVPass/MyLV/Dashboard/my_orders/my_return_review"

    const-string v9, "confirm_return"

    const-string v10, "MyLV"

    const-string v11, "my_order"

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_16
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnCancelClick;

    if-eqz v1, :cond_17

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnCancelClick;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnCancelClick;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/16 v14, 0x21

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "LVPass/MyLV/Dashboard/my_orders/my_return_review"

    const-string v9, "cancel_return"

    const-string v10, "MyLV"

    const-string v11, "my_order"

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_17
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnValidationClick;

    if-eqz v1, :cond_18

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnValidationClick;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ReturnValidationClick;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/16 v14, 0x21

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "LVPass/MyLV/Dashboard/my_orders/my_return_review"

    const-string v9, "return_success"

    const-string v10, "MyLV"

    const-string v11, "my_order"

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_18
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$TrackingLinkClick;

    if-eqz v1, :cond_19

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$TrackingLinkClick;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$TrackingLinkClick;->a:Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModelKt;->a(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/16 v14, 0x21

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "my_order_details"

    const-string v9, "track_the_order"

    const-string v10, "my_orders"

    const-string v11, "click"

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_19
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$DetailImageClick;

    if-eqz v1, :cond_1a

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$DetailImageClick;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$DetailImageClick;->a:Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModelKt;->a(Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingDataUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderItem;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/16 v14, 0x21

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "my_order_details"

    const-string v9, "zoom_photo"

    const-string v10, "my_orders"

    const-string v11, "click"

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_1a
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$RequestExchangeClick;

    if-eqz v1, :cond_1b

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$RequestExchangeClick;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$RequestExchangeClick;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "return_or_exchange_selection"

    const-string v9, "request_an_exchange_cta"

    const-string v10, "my_orders"

    const-string v11, "click"

    const-string v12, "return_or_exchange"

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_1b
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$RequestReturnClick;

    if-eqz v1, :cond_1c

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$RequestReturnClick;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$RequestReturnClick;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "return_or_exchange_selection"

    const-string v9, "request_a_return_cta"

    const-string v10, "my_orders"

    const-string v11, "click"

    const-string v12, "return_or_exchange"

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_1c
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ContactUsFromSelectionClick;

    if-eqz v1, :cond_1d

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v14, 0x41

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "return_or_exchange_selection"

    const-string v9, "contact_us"

    const-string v10, "my_orders"

    const-string v11, "click"

    const-string v12, "return_or_exchange"

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_1d
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ContactUsFromVariationClick;

    if-eqz v1, :cond_1e

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v14, 0x41

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "exchange_variation_selection"

    const-string v9, "contact_us"

    const-string v10, "my_orders"

    const-string v11, "click"

    const-string v12, "return_or_exchange"

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_1e
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ContactUsFromReviewClick;

    if-eqz v1, :cond_1f

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v14, 0x41

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "exchange_review"

    const-string v9, "contact_us"

    const-string v10, "my_orders"

    const-string v11, "click"

    const-string v12, "return_or_exchange"

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_1f
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangePolicyClick;

    if-eqz v1, :cond_20

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v14, 0x41

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "return_or_exchange_selection"

    const-string v9, "view_return_and_exchange_policy"

    const-string v10, "my_orders"

    const-string v11, "click"

    const-string v12, "return_or_exchange"

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_20
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$OpenSizeGuideClick;

    if-eqz v1, :cond_21

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v14, 0x41

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "exchange_variation_selection"

    const-string v9, "view_guide_size"

    const-string v10, "my_orders"

    const-string v11, "click"

    const-string v12, "return_or_exchange"

    const/4 v13, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_21
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$SelectVariationClick;

    if-eqz v1, :cond_22

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$SelectVariationClick;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$SelectVariationClick;->a:Ljava/lang/String;

    const-string v2, "select_"

    const-string v3, "_intention"

    invoke-static {v2, v1, v3}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$SelectVariationClick;->b:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "exchange_variation_selection"

    const-string v10, "my_orders"

    const-string v11, "click"

    const-string v12, "return_or_exchange"

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_22
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ConfirmVariationClick;

    if-eqz v1, :cond_23

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ConfirmVariationClick;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ConfirmVariationClick;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "exchange_variation_selection"

    const-string v9, "request_an_exchange_continue_cta"

    const-string v10, "my_orders"

    const-string v11, "click"

    const-string v12, "return_or_exchange"

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_23
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ModifyVariationClick;

    if-eqz v1, :cond_24

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ModifyVariationClick;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ModifyVariationClick;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "exchange_review"

    const-string v9, "modify_exchange"

    const-string v10, "my_orders"

    const-string v11, "click"

    const-string v12, "return_or_exchange"

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_24
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ConfirmExchangeClick;

    if-eqz v1, :cond_25

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ConfirmExchangeClick;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ConfirmExchangeClick;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ConfirmExchangeClick;->b:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v16

    aput-object v2, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v7, 0x0

    const-string v8, "exchange_review"

    const-string v9, "request_an_exchange_confirm_cta"

    const-string v10, "my_orders"

    const-string v11, "click"

    const-string v12, "return_or_exchange"

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :cond_25
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ValidateBottomSheetClick;

    if-eqz v1, :cond_26

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ValidateBottomSheetClick;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ValidateBottomSheetClick;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "exchange_confirmation"

    const-string v5, "exchange_success_popin"

    const-string v6, "my_orders"

    const-string v7, "click"

    const-string v8, "return_or_exchange"

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_26
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeFailure;

    if-eqz v1, :cond_27

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeFailure;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeFailure;->b:Ljava/lang/String;

    const-string v3, "error_"

    invoke-static {v3, v1}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderTrackingUiModel$ExchangeFailure;->a:Ljava/util/List;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ProductSku;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "exchange_confirmation"

    const-string v6, "my_orders"

    const-string v7, "event"

    const-string v8, "return_or_exchange"

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_27
    invoke-static {}, Lv40;->g()V

    const/4 v0, 0x0

    return-object v0
.end method
