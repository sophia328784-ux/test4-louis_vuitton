.class public abstract Lcom/vuitton/android/presentation/screen/cart/models/CartItemMapperKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->b:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->d:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v5, :cond_0

    iget-wide v5, v5, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->a:D

    new-instance v7, Ljava/math/BigDecimal;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v7, v4

    :goto_0
    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->a:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;->d:I

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;->c:Ljava/lang/String;

    :cond_1
    move-object v8, v4

    const/4 v9, 0x0

    const-string v3, ""

    const/4 v5, 0x0

    move-object v4, v7

    move v7, p0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/cart/CartItem;ZZ)Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;
    .locals 39

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->C:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->b:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/cart/models/CartMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;)Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v5, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->c:Z

    iget v6, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->d:I

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->e:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->f:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->l:Ljava/util/List;

    if-eqz v9, :cond_1

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/product/ProductImage;

    if-eqz v9, :cond_1

    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/model/product/ProductImage;->a:Ljava/lang/String;

    if-nez v9, :cond_2

    :cond_1
    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->g:Ljava/lang/String;

    :cond_2
    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->h:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->i:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->j:Ljava/lang/String;

    sget-object v13, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    move-object v14, v13

    iget-object v13, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->k:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->l:Ljava/util/List;

    iget-object v15, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->m:Ljava/lang/String;

    move-object/from16 v16, v15

    iget-boolean v15, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->n:Z

    iget-boolean v4, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->o:Z

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->p:Z

    move/from16 v19, v1

    iget-boolean v1, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->q:Z

    move/from16 v20, v1

    iget-boolean v1, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->r:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->s:Z

    move/from16 v22, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->t:Ljava/lang/String;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->u:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    move-object/from16 v24, v2

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v25, v3

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    sget-object v26, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    move-object/from16 v26, v1

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v1, v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v26

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->v:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->A:Z

    move-object/from16 v36, v1

    iget-boolean v1, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->z:Z

    if-nez v3, :cond_4

    if-nez v1, :cond_4

    if-nez v24, :cond_4

    move-object/from16 v37, v2

    move/from16 v38, v4

    const/4 v4, 0x0

    const/16 v29, 0x0

    goto/16 :goto_7

    :cond_4
    move-object/from16 v37, v2

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->B:Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;

    if-eqz v2, :cond_6

    if-eqz v24, :cond_5

    const/16 v26, 0x1

    :goto_2
    move/from16 v38, v4

    move/from16 v4, v26

    goto :goto_3

    :cond_5
    const/16 v26, 0x0

    goto :goto_2

    :goto_3
    invoke-static {v2, v3, v1, v4}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductDisclaimerMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;ZZZ)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    move-result-object v1

    :goto_4
    move-object/from16 v29, v1

    const/4 v4, 0x0

    goto :goto_7

    :cond_6
    move/from16 v38, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->w:Ljava/lang/Integer;

    move/from16 v29, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->x:Ljava/lang/Integer;

    if-eqz v4, :cond_7

    if-nez v1, :cond_8

    :cond_7
    move/from16 v28, v3

    goto :goto_5

    :cond_8
    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->y:Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v26, p1

    move/from16 v27, p2

    move-object/from16 v33, v1

    move-object/from16 v30, v2

    move/from16 v28, v3

    move-object/from16 v31, v4

    invoke-static/range {v26 .. v35}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductDisclaimerMapperKt;->a(ZZZZLcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    move-result-object v1

    goto :goto_4

    :goto_5
    const/4 v1, 0x2

    if-eqz v28, :cond_9

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v3, 0x7f140a63

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1, v4}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    :cond_9
    const/4 v4, 0x0

    if-eqz v29, :cond_a

    new-instance v2, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v3, 0x7f141029

    invoke-direct {v2, v3, v4, v1, v4}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    :cond_a
    move-object v2, v4

    :goto_6
    if-nez v2, :cond_b

    move-object/from16 v29, v4

    goto :goto_7

    :cond_b
    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    sget-object v3, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;

    invoke-direct {v1, v2, v3, v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;-><init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    move-object/from16 v29, v1

    :goto_7
    iget-boolean v1, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->A:Z

    iget-boolean v2, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->z:Z

    if-eqz v24, :cond_c

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductCustomizationMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    move-result-object v4

    :cond_c
    move-object/from16 v30, v4

    iget-boolean v3, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->D:Z

    iget-boolean v0, v0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->E:Z

    move/from16 v27, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    const/high16 v33, 0xc00000

    const/16 v34, 0x0

    move/from16 v31, v3

    move-object/from16 v3, v25

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v32, v0

    move/from16 v28, v1

    move-object/from16 v4, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v24, v36

    move-object/from16 v23, v37

    move/from16 v17, v38

    invoke-direct/range {v2 .. v34}, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ZZZZZLjava/lang/String;Ljava/util/List;Ljava/lang/String;ZZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method
