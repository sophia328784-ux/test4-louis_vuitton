.class public abstract Lcom/vuitton/android/data/dto/account/orders/mapper/OrdersMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/account/orders/mapper/OrdersMapperKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
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
.method public static final a(Lcom/vuitton/android/data/dto/account/orders/DeliveryStateDto;)Lcom/vuitton/foundation/model/domain/model/account/orders/DeliveryState;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/account/orders/DeliveryState;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/DeliveryStateDto;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/account/orders/DeliveryStateDto;->b:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/account/orders/DeliveryStateDto;->c:Z

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/orders/DeliveryStateDto;->d:Lcom/vuitton/android/data/dto/account/orders/StateDto;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/vuitton/android/data/dto/account/orders/mapper/OrdersMapperKt$WhenMappings;->c:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v4, p0

    const/4 v4, 0x1

    if-eq p0, v4, :cond_3

    const/4 v4, 0x2

    if-eq p0, v4, :cond_2

    const/4 v4, 0x3

    if-ne p0, v4, :cond_1

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/account/orders/State;->FUTURE:Lcom/vuitton/foundation/model/domain/model/account/orders/State;

    goto :goto_0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/account/orders/State;->CURRENT:Lcom/vuitton/foundation/model/domain/model/account/orders/State;

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/account/orders/State;->PAST:Lcom/vuitton/foundation/model/domain/model/account/orders/State;

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/vuitton/foundation/model/domain/model/account/orders/DeliveryState;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/account/orders/State;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/android/data/dto/account/orders/ValidationDto;)Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/account/orders/mapper/OrdersMapperKt$WhenMappings;->d:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;->CANCELLED:Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;->PENDING:Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;

    return-object p0

    :cond_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;->VALIDATED:Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;

    return-object p0
.end method

.method public static final c(Ljava/util/List;Z)Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;
    .locals 43

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;

    if-eqz p0, :cond_28

    move-object/from16 v0, p0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/android/data/dto/account/orders/OrderDto;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/account/orders/OrderDto;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/vuitton/android/data/dto/account/orders/OrderDto;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, v5, Lcom/vuitton/android/data/dto/account/orders/OrderDto;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/vuitton/foundation/util/StringKtExtKt;->d(Ljava/lang/String;)Ljava/time/LocalDateTime;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :goto_2
    sget-object v7, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v7, Lkotlin/Result$Failure;

    invoke-direct {v7, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v7

    :goto_3
    instance-of v7, v0, Lkotlin/Result$Failure;

    if-eqz v7, :cond_3

    const/4 v0, 0x0

    :cond_3
    move-object v8, v0

    check-cast v8, Ljava/time/LocalDateTime;

    if-nez v8, :cond_4

    move-object/from16 v42, v1

    move-object/from16 v41, v4

    const/4 v6, 0x0

    goto/16 :goto_22

    :cond_4
    iget-object v0, v5, Lcom/vuitton/android/data/dto/account/orders/OrderDto;->e:Ljava/util/List;

    const/4 v9, 0x1

    const-string v10, ""

    if-eqz v0, :cond_19

    check-cast v0, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v0, v12}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/data/dto/account/orders/ShippingGroupDto;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v13, Lcom/vuitton/android/data/dto/account/orders/ShippingGroupDto;->a:Ljava/lang/String;

    iget-object v14, v13, Lcom/vuitton/android/data/dto/account/orders/ShippingGroupDto;->b:Ljava/lang/String;

    iget-object v2, v13, Lcom/vuitton/android/data/dto/account/orders/ShippingGroupDto;->c:Lcom/vuitton/android/data/dto/account/orders/ShippingTypeDto;

    if-nez v2, :cond_5

    const/4 v2, -0x1

    goto :goto_5

    :cond_5
    sget-object v16, Lcom/vuitton/android/data/dto/account/orders/mapper/OrdersMapperKt$WhenMappings;->b:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v16, v2

    :goto_5
    if-ne v2, v9, :cond_6

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/account/orders/ShippingType;->CLICK_COLLECT:Lcom/vuitton/foundation/model/domain/model/account/orders/ShippingType;

    :goto_6
    move-object/from16 v17, v2

    goto :goto_7

    :cond_6
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/account/orders/ShippingType;->STANDARD:Lcom/vuitton/foundation/model/domain/model/account/orders/ShippingType;

    goto :goto_6

    :goto_7
    iget-object v2, v13, Lcom/vuitton/android/data/dto/account/orders/ShippingGroupDto;->d:Ljava/lang/String;

    iget-object v6, v13, Lcom/vuitton/android/data/dto/account/orders/ShippingGroupDto;->e:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v6, v12}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/data/dto/account/orders/ItemDto;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v9, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->a:Ljava/lang/String;

    move-object/from16 v40, v0

    iget-object v0, v9, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->e:Ljava/lang/String;

    sget-object v16, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    move-object/from16 v28, v0

    iget-object v0, v9, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->f:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v0, :cond_7

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->b:Ljava/lang/String;

    :cond_7
    move-object/from16 v29, v0

    iget-object v0, v9, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->j:Ljava/lang/String;

    if-nez v0, :cond_8

    move-object/from16 v33, v10

    goto :goto_9

    :cond_8
    move-object/from16 v33, v0

    :goto_9
    iget-object v0, v9, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->k:Ljava/lang/String;

    if-nez v0, :cond_9

    move-object/from16 v34, v10

    goto :goto_a

    :cond_9
    move-object/from16 v34, v0

    :goto_a
    iget-object v0, v9, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->g:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v30

    iget-object v0, v9, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->h:Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v18, v2

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/account/orders/Price;

    move-object/from16 v19, v14

    move-object/from16 v16, v15

    iget-wide v14, v0, Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;->a:D

    move-object/from16 v41, v4

    iget-object v4, v0, Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;->c:Ljava/lang/String;

    invoke-direct {v2, v14, v15, v4, v0}, Lcom/vuitton/foundation/model/domain/model/account/orders/Price;-><init>(DLjava/lang/String;Ljava/lang/String;)V

    iget v0, v9, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->i:I

    iget-object v4, v9, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->c:Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/account/orders/Price;

    move/from16 v32, v0

    move-object/from16 v42, v1

    iget-wide v0, v4, Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;->a:D

    iget-object v15, v4, Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;->b:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;->c:Ljava/lang/String;

    invoke-direct {v14, v0, v1, v15, v4}, Lcom/vuitton/foundation/model/domain/model/account/orders/Price;-><init>(DLjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v9, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->m:Z

    iget-boolean v1, v9, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->l:Z

    iget-boolean v4, v9, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->d:Z

    iget-object v15, v9, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->o:Ljava/util/List;

    if-eqz v15, :cond_d

    check-cast v15, Ljava/lang/Iterable;

    move/from16 v36, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move/from16 v35, v1

    move-object/from16 v1, v20

    check-cast v1, Lcom/vuitton/android/data/dto/account/orders/OrderCustomizationDto;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v31, v2

    iget-object v2, v1, Lcom/vuitton/android/data/dto/account/orders/OrderCustomizationDto;->a:Ljava/lang/String;

    if-eqz v2, :cond_a

    move/from16 v27, v4

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/account/orders/Customization;

    move-object/from16 v20, v6

    iget-object v6, v1, Lcom/vuitton/android/data/dto/account/orders/OrderCustomizationDto;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/account/orders/OrderCustomizationDto;->c:Ljava/lang/String;

    invoke-direct {v4, v2, v6, v1}, Lcom/vuitton/foundation/model/domain/model/account/orders/Customization;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_a
    move/from16 v27, v4

    move-object/from16 v20, v6

    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_b

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object/from16 v6, v20

    move/from16 v4, v27

    move-object/from16 v2, v31

    move/from16 v1, v35

    goto :goto_b

    :cond_c
    move/from16 v35, v1

    move-object/from16 v31, v2

    move/from16 v27, v4

    move-object/from16 v20, v6

    :goto_d
    move-object/from16 v38, v0

    goto :goto_e

    :cond_d
    move/from16 v36, v0

    move/from16 v35, v1

    move-object/from16 v31, v2

    move/from16 v27, v4

    move-object/from16 v20, v6

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_d

    :goto_e
    iget-object v0, v9, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->n:Ljava/lang/String;

    if-eqz v0, :cond_e

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/common/StringResource$Text;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/common/StringResource$Text;-><init>(Ljava/lang/String;)V

    move-object/from16 v37, v1

    goto :goto_f

    :cond_e
    const/16 v37, 0x0

    :goto_f
    iget-object v0, v9, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->b:Lcom/vuitton/android/data/dto/account/orders/TimelineDto;

    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/vuitton/android/data/dto/account/orders/TimelineDto;->a:Lcom/vuitton/android/data/dto/account/orders/ValidationDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/account/orders/mapper/OrdersMapperKt;->b(Lcom/vuitton/android/data/dto/account/orders/ValidationDto;)Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;

    move-result-object v1

    iget-object v0, v0, Lcom/vuitton/android/data/dto/account/orders/TimelineDto;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/data/dto/account/orders/DeliveryStateDto;

    invoke-static {v6}, Lcom/vuitton/android/data/dto/account/orders/mapper/OrdersMapperKt;->a(Lcom/vuitton/android/data/dto/account/orders/DeliveryStateDto;)Lcom/vuitton/foundation/model/domain/model/account/orders/DeliveryState;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_f
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;

    invoke-direct {v0, v1, v2}, Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;-><init>(Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;Ljava/util/List;)V

    move-object/from16 v25, v0

    goto :goto_11

    :cond_10
    const/16 v4, 0xa

    const/16 v25, 0x0

    :goto_11
    new-instance v23, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;

    const/16 v39, 0x0

    move-object/from16 v24, v12

    move-object/from16 v26, v14

    invoke-direct/range {v23 .. v39}, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;Lcom/vuitton/foundation/model/domain/model/account/orders/Price;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/account/orders/Price;ILjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/foundation/model/domain/model/common/StringResource;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v12, v4

    move-object/from16 v15, v16

    move-object/from16 v2, v18

    move-object/from16 v14, v19

    move-object/from16 v6, v20

    move-object/from16 v0, v40

    move-object/from16 v4, v41

    move-object/from16 v1, v42

    goto/16 :goto_8

    :cond_11
    move-object/from16 v40, v0

    move-object/from16 v42, v1

    move-object/from16 v18, v2

    move-object/from16 v41, v4

    move v4, v12

    move-object/from16 v19, v14

    move-object/from16 v16, v15

    iget-object v0, v13, Lcom/vuitton/android/data/dto/account/orders/ShippingGroupDto;->f:Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;->b:Ljava/lang/String;

    iget-object v1, v13, Lcom/vuitton/android/data/dto/account/orders/ShippingGroupDto;->g:Lcom/vuitton/android/data/dto/account/orders/DeliveryDto;

    if-eqz v1, :cond_17

    new-instance v23, Lcom/vuitton/foundation/model/domain/model/account/orders/Delivery;

    iget-object v2, v1, Lcom/vuitton/android/data/dto/account/orders/DeliveryDto;->a:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/android/data/dto/account/orders/DeliveryDto;->b:Ljava/lang/String;

    iget-object v9, v1, Lcom/vuitton/android/data/dto/account/orders/DeliveryDto;->c:Ljava/lang/String;

    iget-object v12, v1, Lcom/vuitton/android/data/dto/account/orders/DeliveryDto;->d:Ljava/lang/String;

    iget-object v14, v1, Lcom/vuitton/android/data/dto/account/orders/DeliveryDto;->e:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/account/orders/DeliveryDto;->f:Lcom/vuitton/android/data/dto/account/orders/DeliveryAddress;

    if-eqz v1, :cond_15

    iget-object v15, v1, Lcom/vuitton/android/data/dto/account/orders/DeliveryAddress;->h:Ljava/lang/String;

    iget-object v4, v1, Lcom/vuitton/android/data/dto/account/orders/DeliveryAddress;->g:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/account/orders/DeliveryAddress;->f:Ljava/lang/String;

    move-object/from16 v26, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/account/orders/DeliveryAddress;->e:Ljava/lang/String;

    move-object/from16 v27, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/account/orders/DeliveryAddress;->d:Ljava/lang/String;

    move-object/from16 v28, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/account/orders/DeliveryAddress;->b:Ljava/lang/String;

    move-object/from16 v29, v0

    iget-object v0, v1, Lcom/vuitton/android/data/dto/account/orders/DeliveryAddress;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/account/orders/DeliveryAddress;->c:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v31, v1

    move-object/from16 v25, v4

    move-object/from16 v24, v15

    filled-new-array/range {v24 .. v31}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    if-eqz v15, :cond_12

    invoke-static {v15}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_13

    goto :goto_12

    :cond_13
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_14
    const/16 v28, 0x0

    const/16 v29, 0x3f

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v24, v1

    invoke-static/range {v24 .. v29}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_15
    move-object/from16 v20, v0

    const/4 v0, 0x0

    :goto_13
    if-nez v0, :cond_16

    move-object/from16 v29, v10

    :goto_14
    move-object/from16 v24, v2

    move-object/from16 v25, v6

    move-object/from16 v26, v9

    move-object/from16 v27, v12

    move-object/from16 v28, v14

    goto :goto_15

    :cond_16
    move-object/from16 v29, v0

    goto :goto_14

    :goto_15
    invoke-direct/range {v23 .. v29}, Lcom/vuitton/foundation/model/domain/model/account/orders/Delivery;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, v23

    goto :goto_16

    :cond_17
    move-object/from16 v20, v0

    const/16 v21, 0x0

    :goto_16
    iget-object v0, v13, Lcom/vuitton/android/data/dto/account/orders/ShippingGroupDto;->h:Ljava/lang/String;

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;

    move-object/from16 v22, v0

    move-object/from16 v15, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v7

    invoke-direct/range {v14 .. v22}, Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/ShippingType;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/Delivery;Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v40

    move-object/from16 v4, v41

    move-object/from16 v1, v42

    const/4 v9, 0x1

    const/16 v12, 0xa

    goto/16 :goto_4

    :cond_18
    move-object/from16 v42, v1

    move-object/from16 v41, v4

    goto :goto_17

    :cond_19
    move-object/from16 v42, v1

    move-object/from16 v41, v4

    sget-object v11, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_17
    iget-object v0, v5, Lcom/vuitton/android/data/dto/account/orders/OrderDto;->b:Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;

    if-eqz v0, :cond_1a

    iget-object v0, v0, Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;->b:Ljava/lang/String;

    goto :goto_18

    :cond_1a
    const/4 v0, 0x0

    :goto_18
    if-nez v0, :cond_1b

    move-object v9, v10

    goto :goto_19

    :cond_1b
    move-object v9, v0

    :goto_19
    iget-object v0, v5, Lcom/vuitton/android/data/dto/account/orders/OrderDto;->a:Ljava/lang/String;

    if-nez v0, :cond_1c

    goto :goto_1a

    :cond_1c
    move-object v10, v0

    :goto_1a
    iget-object v0, v5, Lcom/vuitton/android/data/dto/account/orders/OrderDto;->d:Lcom/vuitton/android/data/dto/account/orders/ChannelDto;

    if-nez v0, :cond_1d

    const/4 v7, -0x1

    :goto_1b
    const/4 v0, 0x1

    goto :goto_1c

    :cond_1d
    sget-object v1, Lcom/vuitton/android/data/dto/account/orders/mapper/OrdersMapperKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v7, v1, v0

    goto :goto_1b

    :goto_1c
    if-eq v7, v0, :cond_20

    const/4 v1, 0x2

    if-eq v7, v1, :cond_1f

    const/4 v1, 0x3

    if-eq v7, v1, :cond_1e

    const/4 v12, 0x0

    goto :goto_1e

    :cond_1e
    sget-object v6, Lcom/vuitton/foundation/model/domain/model/account/orders/Channel;->CONTACT_CENTER:Lcom/vuitton/foundation/model/domain/model/account/orders/Channel;

    :goto_1d
    move-object v12, v6

    goto :goto_1e

    :cond_1f
    sget-object v6, Lcom/vuitton/foundation/model/domain/model/account/orders/Channel;->WEB:Lcom/vuitton/foundation/model/domain/model/account/orders/Channel;

    goto :goto_1d

    :cond_20
    sget-object v6, Lcom/vuitton/foundation/model/domain/model/account/orders/Channel;->RETAIL:Lcom/vuitton/foundation/model/domain/model/account/orders/Channel;

    goto :goto_1d

    :goto_1e
    iget-object v14, v5, Lcom/vuitton/android/data/dto/account/orders/OrderDto;->f:Ljava/lang/String;

    if-eqz p1, :cond_25

    move-object v1, v11

    check-cast v1, Ljava/lang/Iterable;

    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_21

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_20

    :cond_21
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;->e:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_23

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_1f

    :cond_23
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;

    iget-boolean v4, v4, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->m:Z

    if-eqz v4, :cond_24

    move v15, v0

    goto :goto_21

    :cond_25
    :goto_20
    const/4 v15, 0x0

    :goto_21
    new-instance v7, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;

    move-object v13, v11

    move-object v11, v10

    move-object v10, v13

    move/from16 v13, p1

    invoke-direct/range {v7 .. v15}, Lcom/vuitton/foundation/model/domain/model/account/orders/PurchasedOrder;-><init>(Ljava/time/LocalDateTime;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/Channel;ZLjava/lang/String;Z)V

    move-object v6, v7

    :goto_22
    if-eqz v6, :cond_26

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    move-object/from16 v4, v41

    move-object/from16 v1, v42

    goto/16 :goto_1

    :cond_27
    move-object/from16 v42, v1

    goto :goto_23

    :cond_28
    move-object/from16 v42, v1

    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_23
    check-cast v3, Ljava/lang/Iterable;

    new-instance v0, Lcom/vuitton/android/data/dto/account/orders/mapper/OrdersMapperKt$toOrderList$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/vuitton/android/data/dto/account/orders/mapper/OrdersMapperKt$toOrderList$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    if-eqz p0, :cond_29

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    :goto_24
    move-object/from16 v1, v42

    goto :goto_25

    :cond_29
    const/4 v2, 0x0

    goto :goto_24

    :goto_25
    invoke-direct {v1, v0, v2}, Lcom/vuitton/foundation/model/domain/model/account/orders/OrderList;-><init>(Ljava/util/List;I)V

    return-object v1
.end method
