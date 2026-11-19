.class public abstract Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;)Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;->c:Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryType;

    sget-object v3, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt$WhenMappings;->e:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;->IMAGE:Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;

    :goto_0
    move-object v3, v0

    move-object v0, v4

    goto :goto_1

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;->TEXT:Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;

    goto :goto_0

    :goto_1
    iget-boolean v4, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;->d:Z

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;->f:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {p0, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryOption;

    new-instance v8, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    iget-object v9, v7, Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryOption;->a:Ljava/lang/String;

    iget-object v10, v7, Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryOption;->b:Ljava/lang/String;

    iget-object v11, v7, Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryOption;->c:Ljava/lang/String;

    iget-boolean v12, v7, Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryOption;->d:Z

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/account/orders/CategoryOption;->e:Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;

    if-eqz v7, :cond_2

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/account/orders/ProductExchangeCategory;)Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    move-result-object v7

    move-object v13, v7

    goto :goto_3

    :cond_2
    move-object v13, v0

    :goto_3
    invoke-direct/range {v8 .. v13}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;ZLjava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Z)Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_8

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;->a:Ljava/util/List;

    if-eqz v1, :cond_8

    if-eqz p2, :cond_2

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;->c:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;->a:Ljava/time/LocalDateTime;

    sget-object v6, Ljava/time/format/FormatStyle;->LONG:Ljava/time/format/FormatStyle;

    move-object/from16 v7, p1

    invoke-static {v7, v5, v6}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/time/LocalDateTime;Ljava/time/format/FormatStyle;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v4, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;->a:Ljava/time/LocalDateTime;

    iget-object v11, v4, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;->b:Ljava/lang/String;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;->c:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v5, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;

    iget-boolean v8, v4, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;->f:Z

    invoke-static {v6, v8}, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt;->e(Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;Z)Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v13, v4, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;->d:Ljava/lang/String;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;->e:Lcom/vuitton/foundation/model/domain/model/account/orders/Channel;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    sget-object v8, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt$WhenMappings;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v8, v5

    const/4 v8, 0x1

    if-eq v5, v8, :cond_6

    const/4 v8, 0x2

    if-eq v5, v8, :cond_5

    const/4 v8, 0x3

    if-eq v5, v8, :cond_4

    goto :goto_3

    :cond_4
    sget-object v6, Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;->CONTACT_CENTER:Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;

    goto :goto_3

    :cond_5
    sget-object v6, Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;->WEB:Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;

    goto :goto_3

    :cond_6
    sget-object v6, Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;->RETAIL:Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;

    :cond_7
    :goto_3
    move-object v14, v6

    iget-boolean v15, v4, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;->f:Z

    iget-boolean v5, v4, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;->h:Z

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;->g:Ljava/lang/String;

    new-instance v8, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    move-object/from16 v17, v4

    move/from16 v16, v5

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;-><init>(Ljava/lang/String;Ljava/time/LocalDateTime;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;ZZLjava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_9
    if-eqz v0, :cond_a

    iget v0, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;->b:I

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    new-instance v1, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;-><init>(Ljava/util/List;I)V

    return-object v1
.end method

.method public static final c(Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;)Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt$WhenMappings;->c:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    sget-object v1, Lcom/vuitton/android/presentation/screen/orders/models/ValidationUiModel;->CANCELLED:Lcom/vuitton/android/presentation/screen/orders/models/ValidationUiModel;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_1
    sget-object v1, Lcom/vuitton/android/presentation/screen/orders/models/ValidationUiModel;->PENDING:Lcom/vuitton/android/presentation/screen/orders/models/ValidationUiModel;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/vuitton/android/presentation/screen/orders/models/ValidationUiModel;->VALIDATED:Lcom/vuitton/android/presentation/screen/orders/models/ValidationUiModel;

    :goto_0
    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v0, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v7, 0x0

    move v10, v7

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v17, v10, 0x1

    if-ltz v10, :cond_6

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/account/orders/DeliveryState;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v7, Lcom/vuitton/foundation/model/domain/model/account/orders/DeliveryState;->a:Ljava/lang/String;

    new-instance v12, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;

    iget-object v8, v7, Lcom/vuitton/foundation/model/domain/model/account/orders/DeliveryState;->b:Ljava/lang/String;

    invoke-direct {v12, v2, v8, v5, v2}, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;-><init>(Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-boolean v13, v7, Lcom/vuitton/foundation/model/domain/model/account/orders/DeliveryState;->c:Z

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/account/orders/DeliveryState;->d:Lcom/vuitton/foundation/model/domain/model/account/orders/State;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt$WhenMappings;->d:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v8, v7

    if-eq v7, v5, :cond_5

    if-eq v7, v4, :cond_4

    if-ne v7, v3, :cond_3

    sget-object v7, Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;->FUTURE:Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;

    :goto_2
    move-object v14, v7

    goto :goto_3

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_4
    sget-object v7, Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;->CURRENT:Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;

    goto :goto_2

    :cond_5
    sget-object v7, Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;->PAST:Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;

    goto :goto_2

    :goto_3
    new-instance v8, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;

    const/4 v15, 0x4

    const/16 v16, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v8 .. v16}, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;-><init>(Ljava/lang/String;ILjava/lang/Integer;Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;ZLcom/vuitton/android/presentation/screen/orders/models/StateUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v10, v17

    goto :goto_1

    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v2

    :cond_7
    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;

    invoke-direct {v0, v1, v6}, Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/ValidationUiModel;Ljava/util/List;)V

    return-object v0
.end method

.method public static final d(Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;)Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;
    .locals 23

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->e:Ljava/lang/String;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->f:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->j:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->k:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->g:Ljava/util/List;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->h:Lcom/vuitton/foundation/model/domain/model/account/orders/Price;

    new-instance v9, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    iget-wide v3, v2, Lcom/vuitton/foundation/model/domain/model/account/orders/Price;->a:D

    iget-object v8, v2, Lcom/vuitton/foundation/model/domain/model/account/orders/Price;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/account/orders/Price;->c:Ljava/lang/String;

    invoke-direct {v9, v3, v4, v8, v2}, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;-><init>(DLjava/lang/String;Ljava/lang/String;)V

    iget v10, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->i:I

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->c:Lcom/vuitton/foundation/model/domain/model/account/orders/Price;

    new-instance v3, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    iget-wide v13, v2, Lcom/vuitton/foundation/model/domain/model/account/orders/Price;->a:D

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/account/orders/Price;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/account/orders/Price;->c:Ljava/lang/String;

    invoke-direct {v3, v13, v14, v4, v2}, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;-><init>(DLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v14, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->m:Z

    iget-boolean v13, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->l:Z

    iget-boolean v4, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->d:Z

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->o:Ljava/util/List;

    if-eqz v2, :cond_4

    check-cast v2, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/account/orders/Customization;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v16, v1

    iget-object v1, v8, Lcom/vuitton/foundation/model/domain/model/account/orders/Customization;->c:Ljava/lang/String;

    move-object/from16 v18, v2

    iget-object v2, v8, Lcom/vuitton/foundation/model/domain/model/account/orders/Customization;->b:Ljava/lang/String;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/account/orders/Customization;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Color;

    invoke-direct {v2, v8, v1}, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Color;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    new-instance v1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Text;

    invoke-direct {v1, v8, v2}, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Text;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v1, v16

    move-object/from16 v2, v18

    goto :goto_0

    :cond_3
    :goto_2
    move-object/from16 v16, v1

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    :goto_3
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->n:Lcom/vuitton/foundation/model/domain/model/common/StringResource;

    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->c(Lcom/vuitton/foundation/model/domain/model/common/StringResource;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    move-result-object v1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;)Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;

    move-result-object v8

    move-object v2, v8

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    const v20, 0x70080

    const/16 v21, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v22, v15

    move-object v15, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v22

    invoke-direct/range {v0 .. v21}, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;ILjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/util/List;ZLcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final e(Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;Z)Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;->e:Ljava/util/List;

    move-object v3, v2

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;->c:Lcom/vuitton/foundation/model/domain/model/account/orders/ShippingType;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt$WhenMappings;->b:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    const/4 v7, 0x2

    if-ne v4, v7, :cond_0

    sget-object v4, Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;->CLICK_COLLECT:Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v5

    :cond_1
    sget-object v4, Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;->STANDARD:Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;

    :goto_0
    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;->d:Ljava/lang/String;

    check-cast v3, Ljava/lang/Iterable;

    move-object v8, v5

    new-instance v5, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v3, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;)Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;->f:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;->g:Lcom/vuitton/foundation/model/domain/model/account/orders/Delivery;

    if-eqz v10, :cond_3

    iget-object v12, v10, Lcom/vuitton/foundation/model/domain/model/account/orders/Delivery;->a:Ljava/lang/String;

    iget-object v15, v10, Lcom/vuitton/foundation/model/domain/model/account/orders/Delivery;->d:Ljava/lang/String;

    iget-object v8, v10, Lcom/vuitton/foundation/model/domain/model/account/orders/Delivery;->e:Ljava/lang/String;

    iget-object v13, v10, Lcom/vuitton/foundation/model/domain/model/account/orders/Delivery;->b:Ljava/lang/String;

    iget-object v14, v10, Lcom/vuitton/foundation/model/domain/model/account/orders/Delivery;->c:Ljava/lang/String;

    iget-object v10, v10, Lcom/vuitton/foundation/model/domain/model/account/orders/Delivery;->f:Ljava/lang/String;

    new-instance v11, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;

    move-object/from16 v16, v8

    move-object/from16 v17, v10

    invoke-direct/range {v11 .. v17}, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v11

    :cond_3
    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;->h:Ljava/lang/String;

    if-eqz p1, :cond_6

    instance-of v10, v3, Ljava/util/Collection;

    if-eqz v10, :cond_4

    move-object v10, v3

    check-cast v10, Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;

    iget-boolean v10, v10, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->m:Z

    if-eqz v10, :cond_5

    :goto_2
    move-object v3, v4

    move-object v4, v7

    move-object v7, v8

    move-object v8, v0

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v6, 0x0

    goto :goto_2

    :goto_4
    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    move-object/from16 v18, v9

    move v9, v6

    move-object/from16 v6, v18

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;Ljava/lang/String;Z)V

    return-object v0
.end method
