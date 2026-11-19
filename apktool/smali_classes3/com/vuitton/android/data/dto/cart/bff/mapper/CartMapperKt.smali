.class public abstract Lcom/vuitton/android/data/dto/cart/bff/mapper/CartMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/cart/bff/mapper/CartMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/data/dto/cart/common/CartErrorDto;)Lcom/vuitton/foundation/model/domain/error/cart/CartMultipleError;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/error/cart/CartMultipleError;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/common/CartErrorDto;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/cart/common/CartErrorDto;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/common/CartErrorDto;->a:Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v3, p0

    :goto_0
    const/4 v3, 0x1

    const-string v4, ""

    if-eq p0, v3, :cond_8

    const/4 v3, 0x2

    if-eq p0, v3, :cond_6

    const/4 v3, 0x3

    if-eq p0, v3, :cond_4

    const/4 v3, 0x4

    if-eq p0, v3, :cond_2

    new-instance p0, Lcom/vuitton/foundation/model/domain/error/cart/GenericCartError;

    if-nez v2, :cond_1

    move-object v2, v4

    :cond_1
    invoke-direct {p0, v2}, Lcom/vuitton/foundation/model/domain/error/cart/GenericCartError;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/cart/OutOfStockError;

    if-nez v2, :cond_3

    move-object v2, v4

    :cond_3
    invoke-direct {p0, v2}, Lcom/vuitton/foundation/model/domain/error/cart/OutOfStockError;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/cart/MaxPersonalizationQuantityReached;

    if-nez v2, :cond_5

    move-object v2, v4

    :cond_5
    invoke-direct {p0, v2}, Lcom/vuitton/foundation/model/domain/error/cart/MaxPersonalizationQuantityReached;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/cart/MaxSkuQuantityReached;

    if-nez v2, :cond_7

    move-object v2, v4

    :cond_7
    invoke-direct {p0, v2}, Lcom/vuitton/foundation/model/domain/error/cart/MaxSkuQuantityReached;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/cart/MaxQuantityReached;

    if-nez v2, :cond_9

    move-object v2, v4

    :cond_9
    invoke-direct {p0, v2}, Lcom/vuitton/foundation/model/domain/error/cart/MaxQuantityReached;-><init>(Ljava/lang/String;)V

    :goto_1
    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/vuitton/foundation/model/domain/error/cart/CartMultipleError;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/error/cart/CartError;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/android/data/dto/cart/bff/CartDto;)Lcom/vuitton/foundation/model/domain/model/cart/Cart;
    .locals 56

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->h:Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->e:Ljava/lang/String;

    const-string v4, ""

    if-nez v1, :cond_0

    move-object v6, v4

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    iget v7, v0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->b:I

    iget-object v1, v0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->c:Ljava/util/List;

    const/16 v8, 0xa

    if-eqz v1, :cond_17

    check-cast v1, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v1, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->o:Ljava/lang/Boolean;

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v15, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->p:Ljava/lang/Boolean;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const/16 v17, 0x1

    goto :goto_2

    :cond_1
    const/16 v17, 0x0

    :goto_2
    if-nez v16, :cond_3

    if-eqz v17, :cond_2

    goto :goto_3

    :cond_2
    const/16 v44, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/16 v44, 0x1

    :goto_4
    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x1

    goto :goto_5

    :cond_4
    const/4 v14, 0x0

    :goto_5
    if-nez v16, :cond_6

    if-eqz v14, :cond_5

    goto :goto_6

    :cond_5
    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v45, 0x1

    goto :goto_7

    :cond_6
    :goto_6
    const/16 v45, 0x0

    :goto_7
    iget-object v5, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->a:Ljava/lang/String;

    if-nez v5, :cond_7

    move-object/from16 v28, v4

    goto :goto_8

    :cond_7
    move-object/from16 v28, v5

    :goto_8
    sget-object v5, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    iget-object v14, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v14, :cond_8

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->b:Ljava/lang/String;

    :cond_8
    move-object/from16 v29, v14

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v14, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v14, :cond_9

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->b:Ljava/lang/String;

    :cond_9
    move-object/from16 v19, v14

    iget-object v5, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->n:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

    invoke-static {v5}, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartPriceInformationMapperKt;->a(Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;)Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    move-result-object v20

    iget-boolean v5, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->i:Z

    iget v14, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->m:I

    const/16 v16, 0x1

    iget-object v10, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->f:Ljava/lang/String;

    iget-object v9, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->g:Ljava/lang/String;

    iget-object v8, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->j:Ljava/lang/String;

    move-object/from16 v52, v1

    iget-object v1, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->d:Ljava/lang/String;

    if-nez v1, :cond_a

    move-object/from16 v26, v4

    goto :goto_9

    :cond_a
    move-object/from16 v26, v1

    :goto_9
    iget-object v1, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->h:Ljava/lang/String;

    if-nez v1, :cond_b

    move-object/from16 v27, v4

    goto :goto_a

    :cond_b
    move-object/from16 v27, v1

    :goto_a
    iget-object v1, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->k:Ljava/util/List;

    if-eqz v1, :cond_d

    check-cast v1, Ljava/lang/Iterable;

    move-object/from16 v53, v4

    new-instance v4, Ljava/util/ArrayList;

    move/from16 v21, v5

    move-object/from16 v54, v6

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/product/ProductImage;

    iget-object v5, v5, Lcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;->a:Ljava/lang/String;

    move-object/from16 v18, v1

    const/4 v1, 0x2

    move/from16 v55, v7

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7, v1, v7}, Lcom/vuitton/foundation/model/domain/model/product/ProductImage;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v18

    move/from16 v7, v55

    goto :goto_b

    :cond_c
    move/from16 v55, v7

    const/4 v7, 0x0

    move-object/from16 v30, v4

    goto :goto_c

    :cond_d
    move-object/from16 v53, v4

    move/from16 v21, v5

    move-object/from16 v54, v6

    move/from16 v55, v7

    const/4 v7, 0x0

    move-object/from16 v30, v7

    :goto_c
    iget-object v1, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->e:Ljava/lang/String;

    iget-boolean v4, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->l:Z

    if-nez v4, :cond_f

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-static {v15, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_d

    :cond_e
    const/16 v34, 0x0

    goto :goto_e

    :cond_f
    :goto_d
    move/from16 v34, v16

    :goto_e
    iget-object v4, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->s:Lcom/vuitton/android/data/dto/cart/bff/BundleDto;

    if-eqz v4, :cond_10

    move/from16 v35, v16

    goto :goto_f

    :cond_10
    const/16 v35, 0x0

    :goto_f
    if-nez v4, :cond_11

    move/from16 v36, v16

    goto :goto_10

    :cond_11
    const/16 v36, 0x0

    :goto_10
    if-eqz v4, :cond_12

    iget-object v4, v4, Lcom/vuitton/android/data/dto/cart/bff/BundleDto;->a:Ljava/lang/String;

    goto :goto_11

    :cond_12
    move-object v4, v7

    :goto_11
    if-nez v4, :cond_13

    move-object/from16 v38, v53

    goto :goto_12

    :cond_13
    move-object/from16 v38, v4

    :goto_12
    sget-object v39, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    iget-object v4, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->q:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    if-eqz v4, :cond_14

    invoke-static {v4}, Lcom/vuitton/android/data/dto/pdp/mapper/ProductDisclaimersMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;)Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;

    move-result-object v4

    move-object/from16 v46, v4

    goto :goto_13

    :cond_14
    move-object/from16 v46, v7

    :goto_13
    iget-object v4, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->t:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;

    if-eqz v4, :cond_15

    iget-object v4, v4, Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;->a:Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;

    if-eqz v4, :cond_15

    invoke-static {v4}, Lcom/vuitton/android/data/dto/pdp/mapper/ProductCustomizationMapperKt;->b(Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;

    move-result-object v4

    move-object/from16 v47, v4

    goto :goto_14

    :cond_15
    move-object/from16 v47, v7

    :goto_14
    iget-boolean v4, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->u:Z

    iget-boolean v5, v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->v:Z

    new-instance v18, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;

    const v50, 0x1c04000

    const/16 v51, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    const/16 v37, 0x0

    const-string v40, ""

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v31, v1

    move/from16 v48, v4

    move/from16 v49, v5

    move-object/from16 v25, v8

    move-object/from16 v24, v9

    move-object/from16 v23, v10

    move/from16 v22, v14

    invoke-direct/range {v18 .. v51}, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZZZZZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;ZZLcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v18

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v52

    move-object/from16 v4, v53

    move-object/from16 v6, v54

    move/from16 v7, v55

    const/16 v8, 0xa

    goto/16 :goto_1

    :cond_16
    move/from16 v55, v7

    const/4 v7, 0x0

    :goto_15
    move-object/from16 v54, v6

    const/16 v16, 0x1

    goto :goto_16

    :cond_17
    move/from16 v55, v7

    const/4 v7, 0x0

    move-object v11, v7

    goto :goto_15

    :goto_16
    if-nez v11, :cond_18

    sget-object v11, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_18
    move-object v8, v11

    iget-object v1, v0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->d:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

    if-eqz v1, :cond_19

    invoke-static {v1}, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartPriceInformationMapperKt;->a(Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;)Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    move-result-object v1

    move-object v9, v1

    goto :goto_17

    :cond_19
    move-object v9, v7

    :goto_17
    if-eqz v3, :cond_1a

    invoke-static {v3}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move/from16 v4, v16

    if-ne v1, v4, :cond_1a

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;

    invoke-direct {v1, v3}, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Message;-><init>(Ljava/lang/String;)V

    :goto_18
    move-object v10, v1

    goto :goto_19

    :cond_1a
    iget-object v1, v0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->f:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Blank;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$Blank;

    goto :goto_18

    :cond_1b
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$None;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$None;

    goto :goto_18

    :goto_19
    iget-object v1, v0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->g:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;

    iget-object v3, v1, Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;->a:Ljava/lang/Boolean;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iget-object v1, v1, Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;->b:Ljava/lang/Boolean;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {v12, v3, v1}, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;-><init>(ZZ)V

    if-eqz v2, :cond_1c

    iget-object v1, v2, Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;->b:Ljava/util/List;

    if-eqz v1, :cond_1c

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    if-ne v1, v4, :cond_1c

    const/4 v13, 0x1

    goto :goto_1a

    :cond_1c
    const/4 v13, 0x0

    :goto_1a
    if-eqz v2, :cond_1e

    iget-object v1, v2, Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;->b:Ljava/util/List;

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v17, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;

    iget-object v6, v5, Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto;->a:Ljava/lang/String;

    iget-object v7, v5, Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto;->b:Ljava/lang/String;

    iget-object v11, v5, Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto;->c:Ljava/lang/String;

    iget-object v14, v5, Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto;->e:Ljava/lang/String;

    iget-boolean v5, v5, Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto;->d:Z

    move-object/from16 v19, v6

    move/from16 v23, v5

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v11

    move-object/from16 v22, v14

    invoke-direct/range {v17 .. v23}, Lcom/vuitton/foundation/model/domain/model/cart/PerfumeSample;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v5, v17

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_1d
    iget v2, v2, Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;->a:I

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/16 v16, 0x1

    xor-int/lit8 v1, v1, 0x1

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/cart/CartSample;

    invoke-direct {v3, v4, v2, v1}, Lcom/vuitton/foundation/model/domain/model/cart/CartSample;-><init>(Ljava/util/List;IZ)V

    move-object v14, v3

    goto :goto_1c

    :cond_1e
    move-object v14, v7

    :goto_1c
    iget-object v0, v0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->i:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    move-object/from16 v6, v54

    move/from16 v7, v55

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/cart/Cart;-><init>(Ljava/lang/String;ILjava/util/List;Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;ZLcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;ZLcom/vuitton/foundation/model/domain/model/cart/CartSample;)V

    return-object v5
.end method

.method public static final c(Lcom/vuitton/android/data/dto/cart/bff/CartResponseMultipleDto;)Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartResponseMultipleDto;->a:Lcom/vuitton/android/data/dto/cart/bff/CartDto;

    invoke-static {v0}, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartMapperKt;->b(Lcom/vuitton/android/data/dto/cart/bff/CartDto;)Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartResponseMultipleDto;->b:Ljava/util/List;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/cart/common/CartErrorDto;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartMapperKt;->a(Lcom/vuitton/android/data/dto/cart/common/CartErrorDto;)Lcom/vuitton/foundation/model/domain/error/cart/CartMultipleError;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_1
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;

    invoke-direct {p0, v0, v1}, Lcom/vuitton/foundation/model/domain/model/cart/CartResponse;-><init>(Lcom/vuitton/foundation/model/domain/model/cart/Cart;Ljava/util/List;)V

    return-object p0
.end method
