.class public abstract Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/mapper/CheckoutConfirmationMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
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
.method public static final a(Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;)Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;
    .locals 27

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->r:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationUserDataDto;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationUserDataDto;->b:Ljava/lang/String;

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->c:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, ""

    :cond_1
    iget-object v5, v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->d:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;

    iget-object v7, v5, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->a:Ljava/lang/String;

    iget-object v8, v5, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->b:Ljava/lang/String;

    iget v9, v5, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->c:I

    iget-object v10, v5, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->d:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->e:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;

    if-eqz v5, :cond_2

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethodAdditionalInformation;

    iget-object v13, v5, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;->b:Ljava/lang/String;

    invoke-direct {v11, v13, v5}, Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethodAdditionalInformation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :goto_0
    invoke-direct/range {v6 .. v11}, Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethodAdditionalInformation;)V

    iget-object v5, v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->e:Lcom/vuitton/android/data/dto/address/AddressDto;

    invoke-static {v5}, Lcom/vuitton/android/data/dto/address/mapper/AddressDtoMapperKt;->b(Lcom/vuitton/android/data/dto/address/AddressDto;)Lcom/vuitton/foundation/model/domain/model/profile/Address;

    move-result-object v5

    iget-object v7, v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->f:Lcom/vuitton/android/data/dto/address/AddressDto;

    invoke-static {v7}, Lcom/vuitton/android/data/dto/address/mapper/AddressDtoMapperKt;->b(Lcom/vuitton/android/data/dto/address/AddressDto;)Lcom/vuitton/foundation/model/domain/model/profile/Address;

    move-result-object v7

    iget-object v8, v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->g:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    move-object v9, v4

    move-object v4, v6

    move-object v6, v7

    new-instance v7, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v7, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;

    iget-object v14, v11, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->a:Ljava/lang/String;

    iget-object v15, v11, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->b:Ljava/lang/String;

    iget v10, v11, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->c:I

    iget-object v12, v11, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->d:Lcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v24, v1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/product/ProductImage;

    iget-object v12, v12, Lcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;->a:Ljava/lang/String;

    move-object/from16 v25, v2

    const/4 v2, 0x2

    move-object/from16 v26, v4

    const/4 v4, 0x0

    invoke-direct {v1, v12, v4, v2, v4}, Lcom/vuitton/foundation/model/domain/model/product/ProductImage;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, v11, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->e:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartPriceMapperKt;->a(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;)Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    move-result-object v18

    iget-object v2, v11, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->f:Ljava/lang/String;

    iget-object v12, v11, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->g:Ljava/lang/String;

    iget-object v4, v11, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->h:Ljava/lang/String;

    iget-object v11, v11, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->i:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;

    if-eqz v11, :cond_3

    iget-object v11, v11, Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;->a:Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;

    if-eqz v11, :cond_3

    invoke-static {v11}, Lcom/vuitton/android/data/dto/pdp/mapper/ProductCustomizationMapperKt;->b(Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;

    move-result-object v11

    move-object/from16 v22, v11

    goto :goto_2

    :cond_3
    const/16 v22, 0x0

    :goto_2
    const/16 v23, 0x0

    move-object/from16 v17, v1

    move-object/from16 v19, v2

    move-object/from16 v21, v4

    move/from16 v16, v10

    move-object/from16 v20, v12

    invoke-direct/range {v13 .. v23}, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/foundation/model/domain/model/product/ProductImage;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v4, v26

    const/16 v10, 0xa

    goto :goto_1

    :cond_4
    move-object/from16 v24, v1

    move-object/from16 v25, v2

    move-object/from16 v26, v4

    iget-object v1, v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->h:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartPriceMapperKt;->a(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;)Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    move-result-object v2

    iget-object v4, v1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->b:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartPriceMapperKt;->a(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;)Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    move-result-object v4

    iget-object v8, v1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->c:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-static {v8}, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartPriceMapperKt;->a(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;)Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    move-result-object v8

    iget-object v1, v1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->d:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v1, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/TaxInfoDto;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/cart/TaxInfo;

    iget-object v13, v11, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/TaxInfoDto;->a:Ljava/lang/String;

    iget-object v14, v11, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/TaxInfoDto;->b:Ljava/lang/String;

    iget-object v11, v11, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/TaxInfoDto;->c:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-static {v11}, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartPriceMapperKt;->a(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;)Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    move-result-object v11

    invoke-direct {v12, v13, v14, v11}, Lcom/vuitton/foundation/model/domain/model/cart/TaxInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;

    invoke-direct {v1, v2, v4, v8, v10}, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;-><init>(Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Ljava/util/List;)V

    move-object v4, v9

    iget-boolean v9, v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->i:Z

    iget-object v10, v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->j:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->k:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->l:Lcom/vuitton/android/data/dto/account/orders/TimelineDto;

    iget-object v8, v2, Lcom/vuitton/android/data/dto/account/orders/TimelineDto;->a:Lcom/vuitton/android/data/dto/account/orders/ValidationDto;

    invoke-static {v8}, Lcom/vuitton/android/data/dto/account/orders/mapper/OrdersMapperKt;->b(Lcom/vuitton/android/data/dto/account/orders/ValidationDto;)Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;

    move-result-object v8

    iget-object v2, v2, Lcom/vuitton/android/data/dto/account/orders/TimelineDto;->b:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v2, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/data/dto/account/orders/DeliveryStateDto;

    invoke-static {v13}, Lcom/vuitton/android/data/dto/account/orders/mapper/OrdersMapperKt;->a(Lcom/vuitton/android/data/dto/account/orders/DeliveryStateDto;)Lcom/vuitton/foundation/model/domain/model/account/orders/DeliveryState;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    new-instance v2, Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;

    invoke-direct {v2, v8, v12}, Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;-><init>(Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;Ljava/util/List;)V

    iget-object v8, v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->m:Ljava/util/List;

    check-cast v8, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v8, v12}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v13, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;

    iget-object v15, v12, Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto;->a:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v12, Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto;->b:Ljava/lang/String;

    move-object/from16 v17, v1

    iget-object v1, v12, Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto;->c:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v12, Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto;->e:Ljava/lang/String;

    iget-boolean v12, v12, Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto;->d:Z

    move-object/from16 v16, v15

    move-object/from16 v19, v1

    move/from16 v20, v12

    invoke-direct/range {v14 .. v20}, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v21

    goto :goto_5

    :cond_7
    move-object/from16 v21, v1

    iget-boolean v14, v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->n:Z

    iget-object v15, v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->o:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->p:Ljava/util/List;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->q:Ljava/util/List;

    if-eqz v3, :cond_8

    iget-object v12, v3, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationUserDataDto;->a:Ljava/lang/String;

    move-object/from16 v18, v12

    :goto_6
    move-object/from16 v17, v0

    goto :goto_7

    :cond_8
    const/16 v18, 0x0

    goto :goto_6

    :goto_7
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;

    move-object/from16 v16, v1

    move-object v12, v2

    move-object v3, v4

    move-object/from16 v8, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v4, v26

    invoke-direct/range {v0 .. v18}, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;Lcom/vuitton/foundation/model/domain/model/profile/Address;Lcom/vuitton/foundation/model/domain/model/profile/Address;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;Ljava/util/List;ZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method
