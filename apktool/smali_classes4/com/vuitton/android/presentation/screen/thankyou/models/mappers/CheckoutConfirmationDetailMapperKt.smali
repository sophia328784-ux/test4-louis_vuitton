.class public abstract Lcom/vuitton/android/presentation/screen/thankyou/models/mappers/CheckoutConfirmationDetailMapperKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;)Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;
    .locals 30

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->g:Ljava/util/List;

    move-object v3, v2

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->b:Ljava/lang/String;

    move-object v4, v3

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->c:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->d:Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;

    new-instance v6, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;

    iget-object v7, v5, Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;->a:Ljava/lang/String;

    iget-object v8, v5, Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;->b:Ljava/lang/String;

    iget v9, v5, Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;->c:I

    iget-object v10, v5, Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;->d:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethod;->e:Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethodAdditionalInformation;

    if-eqz v5, :cond_0

    new-instance v11, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodAdditionalInformationUiModel;

    iget-object v13, v5, Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethodAdditionalInformation;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/cart/ShippingMethodAdditionalInformation;->b:Ljava/lang/String;

    invoke-direct {v11, v13, v5}, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodAdditionalInformationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    invoke-direct/range {v6 .. v11}, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodAdditionalInformationUiModel;)V

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->p:Ljava/util/List;

    move-object v7, v4

    move-object v4, v6

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->q:Ljava/util/List;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->e:Lcom/vuitton/foundation/model/domain/model/profile/Address;

    move-object v9, v7

    iget-object v7, v8, Lcom/vuitton/foundation/model/domain/model/profile/Address;->t:Ljava/lang/String;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/profile/Address;->r:Ljava/lang/String;

    check-cast v9, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;

    iget-object v15, v14, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->a:Ljava/lang/String;

    iget-object v12, v14, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->b:Ljava/lang/String;

    iget v11, v14, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->c:I

    move-object/from16 v27, v1

    iget-object v1, v14, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->d:Lcom/vuitton/foundation/model/domain/model/product/ProductImage;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/product/ProductImage;->a:Ljava/lang/String;

    move-object/from16 v19, v1

    iget-object v1, v14, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->e:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/cart/models/CartMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;)Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    move-result-object v20

    iget-object v1, v14, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->f:Ljava/lang/String;

    move-object/from16 v28, v2

    iget-object v2, v14, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->g:Ljava/lang/String;

    move-object/from16 v29, v3

    iget-object v3, v14, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->h:Ljava/lang/String;

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v21, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v22, v2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object/from16 v2, v22

    goto :goto_2

    :cond_2
    move-object/from16 v22, v2

    iget-object v2, v14, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->i:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductCustomizationMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    move-result-object v2

    move-object/from16 v25, v2

    :goto_3
    move-object/from16 v16, v15

    goto :goto_4

    :cond_3
    const/16 v25, 0x0

    goto :goto_3

    :goto_4
    new-instance v15, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutItemUiModel;

    const/16 v26, 0x0

    move-object/from16 v24, v1

    move-object/from16 v23, v3

    move/from16 v18, v11

    move-object/from16 v17, v12

    invoke-direct/range {v15 .. v26}, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    const/16 v11, 0xa

    goto/16 :goto_1

    :cond_4
    move-object/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;

    iget v3, v3, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->c:I

    add-int/2addr v2, v3

    goto :goto_5

    :cond_5
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->h:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;

    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;->a:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/cart/models/CartMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;)Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    move-result-object v3

    iget-object v9, v1, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;->b:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/cart/models/CartMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;)Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    move-result-object v9

    iget-object v11, v1, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;->c:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/cart/models/CartMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;)Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    move-result-object v11

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInfo;->d:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v1, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/cart/TaxInfo;

    new-instance v14, Lcom/vuitton/android/presentation/screen/thankyou/models/TaxInfoUiModel;

    iget-object v15, v13, Lcom/vuitton/foundation/model/domain/model/cart/TaxInfo;->a:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v13, Lcom/vuitton/foundation/model/domain/model/cart/TaxInfo;->b:Ljava/lang/String;

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/cart/TaxInfo;->c:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-static {v13}, Lcom/vuitton/android/presentation/screen/cart/models/CartMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;)Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    move-result-object v13

    invoke-direct {v14, v15, v1, v13}, Lcom/vuitton/android/presentation/screen/thankyou/models/TaxInfoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v16

    goto :goto_6

    :cond_6
    new-instance v1, Lcom/vuitton/android/presentation/screen/thankyou/models/CartPriceInfoUiModel;

    invoke-direct {v1, v3, v9, v11, v12}, Lcom/vuitton/android/presentation/screen/thankyou/models/CartPriceInfoUiModel;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Ljava/util/List;)V

    iget-boolean v12, v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->i:Z

    iget-object v13, v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->j:Ljava/lang/String;

    iget-object v14, v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->k:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->l:Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;)Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;

    move-result-object v15

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->m:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v3, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/cart/models/CartMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;)Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_7
    iget-boolean v3, v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->n:Z

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutConfirmationDetail;->r:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v0, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

    move-object v11, v1

    move/from16 v17, v3

    move-object/from16 v16, v9

    move-object v9, v10

    move-object/from16 v1, v27

    move-object/from16 v3, v29

    move v10, v2

    move-object/from16 v2, v28

    invoke-direct/range {v0 .. v18}, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/vuitton/android/presentation/screen/thankyou/models/CartPriceInfoUiModel;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;Ljava/util/List;ZLjava/lang/String;)V

    return-object v0
.end method
