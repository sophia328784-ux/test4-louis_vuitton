.class public abstract Lcom/vuitton/android/data/dto/pdp/mapper/ProductMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/pdp/mapper/ProductMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/data/dto/pdp/ProductDto;Ljava/util/List;Ljava/util/List;)Lcom/vuitton/foundation/model/domain/model/product/universal/Product;
    .locals 59

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->v:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->E:Ljava/util/List;

    iget-object v4, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->r:Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

    iget-object v5, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->B:Ljava/util/List;

    iget-object v6, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->G:Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;

    iget-object v7, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->b:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->I:Ljava/lang/String;

    sget-object v9, Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;->BABY:Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;

    invoke-virtual {v9}, Lcom/vuitton/android/data/dto/pdp/PackagingVariationDto;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/product/universal/PackagingVariation;->BABY:Lcom/vuitton/foundation/model/domain/model/product/universal/PackagingVariation;

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    iget-object v10, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->c:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->d:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->C:Ljava/util/List;

    const/4 v13, 0x1

    if-eqz v12, :cond_1

    check-cast v12, Ljava/util/Collection;

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    xor-int/2addr v12, v13

    if-ne v12, v13, :cond_1

    sget-object v12, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;->LOOK:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;

    :goto_1
    move-object v14, v3

    move-object v3, v8

    goto :goto_2

    :cond_1
    sget-object v12, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;->PRODUCT:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;

    goto :goto_1

    :goto_2
    iget-object v8, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->e:Ljava/lang/String;

    iget-object v15, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->t:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    if-eqz v15, :cond_2

    invoke-static {v15}, Lcom/vuitton/android/data/dto/pdp/mapper/ProductDisclaimersMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;)Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;

    move-result-object v15

    :goto_3
    const/16 v16, 0x0

    goto :goto_4

    :cond_2
    const/4 v15, 0x0

    goto :goto_3

    :goto_4
    iget-object v9, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->F:Ljava/util/List;

    const/16 v13, 0xa

    if-eqz v9, :cond_6

    check-cast v9, Ljava/lang/Iterable;

    move-object/from16 v18, v3

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v19, v5

    invoke-static {v9, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/data/dto/pdp/PanelInformationDto;

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/product/universal/PanelInfo;

    move-object/from16 v21, v5

    iget-object v5, v9, Lcom/vuitton/android/data/dto/pdp/PanelInformationDto;->a:Ljava/lang/String;

    sget-object v22, Lcom/vuitton/foundation/model/domain/model/product/PanelInformationType;->SUSTAINABILITY:Lcom/vuitton/foundation/model/domain/model/product/PanelInformationType;

    move-object/from16 v23, v7

    invoke-virtual/range {v22 .. v22}, Lcom/vuitton/foundation/model/domain/model/product/PanelInformationType;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_6
    move-object/from16 v5, v22

    goto :goto_7

    :cond_3
    sget-object v7, Lcom/vuitton/foundation/model/domain/model/product/PanelInformationType;->PRODUCT_CARE:Lcom/vuitton/foundation/model/domain/model/product/PanelInformationType;

    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Lcom/vuitton/foundation/model/domain/model/product/PanelInformationType;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_6

    :cond_4
    move-object/from16 v5, v16

    :goto_7
    iget-object v7, v9, Lcom/vuitton/android/data/dto/pdp/PanelInformationDto;->b:Ljava/lang/String;

    move-object/from16 v22, v8

    iget-object v8, v9, Lcom/vuitton/android/data/dto/pdp/PanelInformationDto;->c:Ljava/lang/String;

    iget-object v9, v9, Lcom/vuitton/android/data/dto/pdp/PanelInformationDto;->d:Ljava/lang/String;

    invoke-direct {v13, v5, v7, v8, v9}, Lcom/vuitton/foundation/model/domain/model/product/universal/PanelInfo;-><init>(Lcom/vuitton/foundation/model/domain/model/product/PanelInformationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v21

    move-object/from16 v8, v22

    move-object/from16 v7, v23

    const/16 v13, 0xa

    goto :goto_5

    :cond_5
    move-object/from16 v23, v7

    move-object/from16 v22, v8

    goto :goto_8

    :cond_6
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v23, v7

    move-object/from16 v22, v8

    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_8
    iget-object v5, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->h:Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;

    const/4 v7, -0x1

    if-nez v5, :cond_7

    move v5, v7

    goto :goto_9

    :cond_7
    sget-object v8, Lcom/vuitton/android/data/dto/pdp/mapper/ProductBackgroundMapperKt$WhenMappings;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v8, v5

    :goto_9
    const/4 v8, 0x2

    if-eq v5, v7, :cond_a

    const/4 v9, 0x1

    if-eq v5, v9, :cond_9

    if-ne v5, v8, :cond_8

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;->FLOOR:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    goto :goto_a

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-object v16

    :cond_9
    sget-object v5, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;->DEFAULT:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    goto :goto_a

    :cond_a
    sget-object v5, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;->DEFAULT:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    :goto_a
    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->a()Lkotlin/enums/EnumEntries;

    move-result-object v9

    new-instance v13, Lcom/vuitton/android/data/dto/pdp/mapper/ProductMapperKt$toDomain$$inlined$sortedBy$1;

    invoke-direct {v13}, Lcom/vuitton/android/data/dto/pdp/mapper/ProductMapperKt$toDomain$$inlined$sortedBy$1;-><init>()V

    invoke-static {v9, v13}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    new-instance v13, Ljava/util/LinkedHashMap;

    const/16 v7, 0xa

    invoke-static {v9, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v24

    invoke-static/range {v24 .. v24}, Lkotlin/collections/MapsKt;->g(I)I

    move-result v7

    const/16 v8, 0x10

    if-ge v7, v8, :cond_b

    move v7, v8

    :cond_b
    invoke-direct {v13, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, ""

    if-eqz v8, :cond_24

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v25, v3

    move-object v3, v8

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v26, v5

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->FINISH:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    if-ne v3, v5, :cond_f

    iget-object v3, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Q:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v27, v7

    const/16 v9, 0xa

    invoke-static {v3, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/data/dto/pdp/FinishVariationDto;

    new-instance v28, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;

    iget-object v9, v7, Lcom/vuitton/android/data/dto/pdp/FinishVariationDto;->a:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/android/data/dto/pdp/FinishVariationDto;->b:Ljava/lang/String;

    const/16 v34, 0x1c

    const/16 v35, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v30, v7

    move-object/from16 v29, v9

    invoke-direct/range {v28 .. v35}, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v7, v28

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_c
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v28, v5

    move-object v5, v9

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;->b:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    move-object/from16 v5, v28

    goto :goto_d

    :cond_e
    move-object/from16 v37, v1

    move-object/from16 v36, v4

    move-object/from16 v35, v6

    move-object v1, v8

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v14

    move-object/from16 v34, v15

    goto/16 :goto_1d

    :cond_f
    move-object/from16 v27, v7

    move-object/from16 v5, v19

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v29, v5

    move-object/from16 v5, v28

    check-cast v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;

    iget-object v5, v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->a:Ljava/lang/String;

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    goto :goto_f

    :cond_10
    move-object/from16 v5, v29

    goto :goto_e

    :cond_11
    move-object/from16 v29, v5

    move-object/from16 v28, v16

    :goto_f
    move-object/from16 v5, v28

    check-cast v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;

    if-eqz v5, :cond_23

    iget-object v7, v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->j:Ljava/lang/String;

    move-object/from16 v28, v9

    iget-object v9, v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->h:Ljava/lang/String;

    move-object/from16 v30, v10

    iget-object v10, v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->l:Lcom/vuitton/android/data/dto/pdp/ColorInfoDto;

    move-object/from16 v31, v11

    iget-object v11, v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->g:Ljava/lang/String;

    move-object/from16 v32, v12

    iget-object v12, v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->k:Ljava/lang/String;

    move-object/from16 v33, v14

    iget-object v14, v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->f:Ljava/lang/String;

    move-object/from16 v34, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v35, v6

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->MODEL_SIZE:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    if-ne v3, v6, :cond_12

    move-object/from16 v6, v33

    check-cast v6, Ljava/lang/Iterable;

    move-object/from16 v36, v4

    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v37, v1

    move-object/from16 v38, v8

    const/16 v1, 0xa

    invoke-static {v6, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;

    new-instance v39, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->a:Ljava/lang/String;

    move-object/from16 v47, v1

    iget-object v1, v6, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->c:Ljava/lang/String;

    iget-object v6, v6, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->d:Ljava/lang/String;

    const/16 v45, 0x18

    const/16 v46, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v41, v1

    move-object/from16 v42, v6

    move-object/from16 v40, v8

    invoke-direct/range {v39 .. v46}, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v39

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v47

    goto :goto_10

    :cond_12
    move-object/from16 v37, v1

    move-object/from16 v36, v4

    move-object/from16 v38, v8

    :cond_13
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;->MATERIAL:Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    if-ne v3, v1, :cond_19

    iget-object v1, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->D:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;

    new-instance v39, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->a:Ljava/lang/String;

    move-object/from16 v47, v1

    iget-object v1, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->f:Ljava/lang/String;

    if-nez v1, :cond_14

    move-object/from16 v41, v28

    goto :goto_12

    :cond_14
    move-object/from16 v41, v1

    :goto_12
    iget-object v1, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->d:Ljava/lang/String;

    const/16 v45, 0x18

    const/16 v46, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v42, v1

    move-object/from16 v40, v8

    invoke-direct/range {v39 .. v46}, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v39

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v47

    goto :goto_11

    :cond_15
    new-instance v39, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;

    iget-object v1, v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->a:Ljava/lang/String;

    if-nez v14, :cond_18

    if-eqz v2, :cond_16

    iget-object v4, v2, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;->a:Ljava/lang/String;

    goto :goto_13

    :cond_16
    move-object/from16 v4, v16

    :goto_13
    if-nez v4, :cond_17

    move-object/from16 v41, v28

    goto :goto_14

    :cond_17
    move-object/from16 v41, v4

    goto :goto_14

    :cond_18
    move-object/from16 v41, v14

    :goto_14
    iget-object v4, v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->d:Ljava/lang/String;

    const/16 v45, 0x18

    const/16 v46, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v40, v1

    move-object/from16 v42, v4

    invoke-direct/range {v39 .. v46}, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v39

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1a
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;

    sget-object v8, Lcom/vuitton/android/data/dto/pdp/mapper/ProductMapperKt$WhenMappings;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v29

    aget v8, v8, v29

    packed-switch v8, :pswitch_data_0

    goto :goto_15

    :pswitch_0
    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->j:Ljava/lang/String;

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->g:Ljava/lang/String;

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->l:Lcom/vuitton/android/data/dto/pdp/ColorInfoDto;

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->h:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->f:Ljava/lang/String;

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v6, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->k:Ljava/lang/String;

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    goto/16 :goto_16

    :pswitch_1
    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->f:Ljava/lang/String;

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->g:Ljava/lang/String;

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->l:Lcom/vuitton/android/data/dto/pdp/ColorInfoDto;

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->h:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->j:Ljava/lang/String;

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v6, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->k:Ljava/lang/String;

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    goto/16 :goto_16

    :pswitch_2
    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->g:Ljava/lang/String;

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->l:Lcom/vuitton/android/data/dto/pdp/ColorInfoDto;

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->h:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->f:Ljava/lang/String;

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->j:Ljava/lang/String;

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v6, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->k:Ljava/lang/String;

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    goto :goto_16

    :pswitch_3
    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->h:Ljava/lang/String;

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->g:Ljava/lang/String;

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->l:Lcom/vuitton/android/data/dto/pdp/ColorInfoDto;

    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->f:Ljava/lang/String;

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->j:Ljava/lang/String;

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v6, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->k:Ljava/lang/String;

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    goto :goto_16

    :pswitch_4
    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->l:Lcom/vuitton/android/data/dto/pdp/ColorInfoDto;

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->g:Ljava/lang/String;

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->h:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->f:Ljava/lang/String;

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->j:Ljava/lang/String;

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v6, v6, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->k:Ljava/lang/String;

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    :goto_16
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    :cond_1b
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;

    iget-object v7, v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->a:Ljava/lang/String;

    iget-object v8, v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->l:Lcom/vuitton/android/data/dto/pdp/ColorInfoDto;

    sget-object v9, Lcom/vuitton/android/data/dto/pdp/mapper/ProductMapperKt$WhenMappings;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    invoke-static {}, Lv40;->g()V

    return-object v16

    :pswitch_5
    iget-object v9, v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->j:Ljava/lang/String;

    if-nez v9, :cond_1e

    :goto_18
    move-object/from16 v9, v28

    goto :goto_1a

    :pswitch_6
    iget-object v9, v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->f:Ljava/lang/String;

    if-nez v9, :cond_1e

    goto :goto_18

    :pswitch_7
    iget-object v9, v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->g:Ljava/lang/String;

    if-nez v9, :cond_1e

    goto :goto_18

    :pswitch_8
    iget-object v9, v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->h:Ljava/lang/String;

    if-nez v9, :cond_1c

    move-object/from16 v9, v28

    :cond_1c
    invoke-static {v9}, Lcom/vuitton/android/data/dto/pdp/extension/CaratExtensionKt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_1a

    :pswitch_9
    if-eqz v8, :cond_1d

    iget-object v9, v8, Lcom/vuitton/android/data/dto/pdp/ColorInfoDto;->a:Ljava/lang/String;

    goto :goto_19

    :cond_1d
    move-object/from16 v9, v16

    :goto_19
    if-nez v9, :cond_1e

    goto :goto_18

    :pswitch_a
    iget-object v9, v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->k:Ljava/lang/String;

    if-nez v9, :cond_1e

    goto :goto_18

    :cond_1e
    :goto_1a
    iget-object v10, v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->d:Ljava/lang/String;

    if-eqz v8, :cond_1f

    iget-object v8, v8, Lcom/vuitton/android/data/dto/pdp/ColorInfoDto;->b:Ljava/lang/String;

    move-object/from16 v58, v10

    move-object v10, v8

    move-object v8, v9

    move-object/from16 v9, v58

    goto :goto_1b

    :cond_1f
    move-object v8, v9

    move-object v9, v10

    move-object/from16 v10, v16

    :goto_1b
    iget-object v11, v5, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->k:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_20
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;->a:Ljava/lang/String;

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v7, v6}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_22
    new-instance v1, Laj0;

    const/16 v4, 0x1d

    invoke-direct {v1, v4}, Laj0;-><init>(I)V

    new-instance v4, Lxm;

    const/4 v5, 0x2

    invoke-direct {v4, v1, v5}, Lxm;-><init>(Ljava/lang/Object;I)V

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v1, v38

    :goto_1d
    invoke-interface {v13, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v25

    move-object/from16 v5, v26

    move-object/from16 v7, v27

    move-object/from16 v10, v30

    move-object/from16 v11, v31

    move-object/from16 v12, v32

    move-object/from16 v14, v33

    move-object/from16 v15, v34

    move-object/from16 v6, v35

    move-object/from16 v4, v36

    move-object/from16 v1, v37

    goto/16 :goto_b

    :cond_23
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Current SKU not found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    move-object/from16 v37, v1

    move-object/from16 v25, v3

    move-object/from16 v36, v4

    move-object/from16 v26, v5

    move-object/from16 v35, v6

    move-object/from16 v28, v9

    move-object/from16 v30, v10

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v14

    move-object/from16 v34, v15

    iget-object v1, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->L:Ljava/util/List;

    if-eqz v1, :cond_26

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/dto/pdp/ProductDetailDto;

    iget-object v5, v4, Lcom/vuitton/android/data/dto/pdp/ProductDetailDto;->a:Ljava/lang/String;

    iget-object v6, v4, Lcom/vuitton/android/data/dto/pdp/ProductDetailDto;->b:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/android/data/dto/pdp/ProductDetailDto;->c:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v4, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_25

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/data/dto/pdp/ProductDetailSectionDto;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$ProductDetailSection;

    iget-object v10, v8, Lcom/vuitton/android/data/dto/pdp/ProductDetailSectionDto;->a:Ljava/lang/String;

    iget-object v8, v8, Lcom/vuitton/android/data/dto/pdp/ProductDetailSectionDto;->b:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v8}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v8

    invoke-direct {v9, v10, v8}, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$ProductDetailSection;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_25
    new-instance v4, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$DescriptionDetail;

    invoke-direct {v4, v5, v6, v7}, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$DescriptionDetail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_26
    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_27
    move-object v1, v3

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    iget-object v4, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->f:Ljava/lang/String;

    if-nez v1, :cond_28

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Multiple;

    invoke-direct {v1, v4, v3}, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Multiple;-><init>(Ljava/lang/String;Ljava/util/List;)V

    :goto_20
    move-object v15, v1

    goto :goto_21

    :cond_28
    if-eqz v4, :cond_29

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Single;

    invoke-direct {v1, v4}, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Single;-><init>(Ljava/lang/String;)V

    goto :goto_20

    :cond_29
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$None;->a:Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$None;

    goto :goto_20

    :goto_21
    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->s:Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;

    if-eqz v3, :cond_2a

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/product/virtualtryon/VirtualTryOn;

    iget-object v3, v3, Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;->a:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

    invoke-static {v3}, Lcom/vuitton/android/data/dto/product/vto/mapper/TryOnProductMapperKt;->a(Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;)Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/vuitton/foundation/model/domain/model/product/virtualtryon/VirtualTryOn;-><init>(Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;)V

    goto :goto_22

    :cond_2a
    move-object/from16 v4, v16

    :goto_22
    iget-object v3, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->z:Lcom/vuitton/android/data/dto/pdp/EditoDto;

    if-eqz v3, :cond_2b

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/product/universal/Edito;

    iget-object v6, v3, Lcom/vuitton/android/data/dto/pdp/EditoDto;->a:Ljava/lang/String;

    iget-object v7, v3, Lcom/vuitton/android/data/dto/pdp/EditoDto;->c:Ljava/lang/String;

    iget-object v8, v3, Lcom/vuitton/android/data/dto/pdp/EditoDto;->b:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/android/data/dto/pdp/EditoDto;->d:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/vuitton/foundation/model/domain/model/product/universal/Edito;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_2b
    move-object/from16 v5, v16

    :goto_23
    iget-object v3, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->u:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    if-eqz v3, :cond_2c

    iget-object v6, v3, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;->a:Ljava/lang/String;

    goto :goto_24

    :cond_2c
    move-object/from16 v6, v16

    :goto_24
    if-eqz v3, :cond_2d

    iget-object v7, v3, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;->c:Ljava/lang/String;

    goto :goto_25

    :cond_2d
    move-object/from16 v7, v16

    :goto_25
    if-eqz v2, :cond_2e

    iget-object v8, v2, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;->a:Ljava/lang/String;

    goto :goto_26

    :cond_2e
    move-object/from16 v8, v16

    :goto_26
    iget-object v9, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->y:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    if-eqz v9, :cond_2f

    iget-object v9, v9, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;->a:Ljava/lang/String;

    move-object/from16 v46, v9

    goto :goto_27

    :cond_2f
    move-object/from16 v46, v16

    :goto_27
    if-eqz v2, :cond_30

    iget-object v2, v2, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;->c:Ljava/lang/String;

    goto :goto_28

    :cond_30
    move-object/from16 v2, v16

    :goto_28
    if-eqz v3, :cond_31

    iget-object v3, v3, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;->b:Ljava/lang/String;

    goto :goto_29

    :cond_31
    move-object/from16 v3, v16

    :goto_29
    iget-object v9, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->O:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    if-eqz v9, :cond_32

    iget-object v9, v9, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;->a:Ljava/lang/String;

    goto :goto_2a

    :cond_32
    move-object/from16 v9, v16

    :goto_2a
    move-object/from16 v10, v19

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_34

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;

    iget-object v14, v14, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->a:Ljava/lang/String;

    sget-object v19, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    move-object/from16 v27, v1

    move-object/from16 v1, v37

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_33

    goto :goto_2c

    :cond_33
    move-object/from16 v37, v1

    move-object/from16 v1, v27

    goto :goto_2b

    :cond_34
    move-object/from16 v27, v1

    move-object/from16 v1, v37

    move-object/from16 v12, v16

    :goto_2c
    check-cast v12, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;

    if-eqz v12, :cond_35

    iget-object v11, v12, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->g:Ljava/lang/String;

    goto :goto_2d

    :cond_35
    move-object/from16 v11, v16

    :goto_2d
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_36
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_37

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;

    iget-object v14, v14, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->a:Ljava/lang/String;

    sget-object v19, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_36

    goto :goto_2e

    :cond_37
    move-object/from16 v12, v16

    :goto_2e
    check-cast v12, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;

    if-eqz v12, :cond_38

    iget-object v10, v12, Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;->h:Ljava/lang/String;

    goto :goto_2f

    :cond_38
    move-object/from16 v10, v16

    :goto_2f
    invoke-static {v10}, Lcom/vuitton/android/data/dto/pdp/extension/CaratExtensionKt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v12, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->g:Ljava/lang/String;

    move-object/from16 v37, v1

    move-object/from16 v14, v36

    if-eqz v36, :cond_39

    iget-object v1, v14, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->c:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    goto :goto_30

    :cond_39
    move-object/from16 v1, v16

    :goto_30
    if-eqz v1, :cond_3a

    move-object/from16 v19, v2

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/product/universal/Size;

    move-object/from16 v36, v3

    move-object/from16 v29, v4

    iget-wide v3, v1, Lcom/vuitton/android/data/dto/pdp/DimensionDto;->a:D

    iget-object v1, v1, Lcom/vuitton/android/data/dto/pdp/DimensionDto;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/vuitton/foundation/model/domain/model/product/universal/Size;-><init>(DLjava/lang/String;)V

    goto :goto_31

    :cond_3a
    move-object/from16 v19, v2

    move-object/from16 v36, v3

    move-object/from16 v29, v4

    move-object/from16 v2, v16

    :goto_31
    if-eqz v14, :cond_3b

    iget-object v1, v14, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->b:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    goto :goto_32

    :cond_3b
    move-object/from16 v1, v16

    :goto_32
    if-eqz v1, :cond_3c

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/product/universal/Size;

    move-object/from16 v38, v5

    iget-wide v4, v1, Lcom/vuitton/android/data/dto/pdp/DimensionDto;->a:D

    iget-object v1, v1, Lcom/vuitton/android/data/dto/pdp/DimensionDto;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1}, Lcom/vuitton/foundation/model/domain/model/product/universal/Size;-><init>(DLjava/lang/String;)V

    goto :goto_33

    :cond_3c
    move-object/from16 v38, v5

    move-object/from16 v3, v16

    :goto_33
    if-eqz v14, :cond_3d

    iget-object v1, v14, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->a:Lcom/vuitton/android/data/dto/pdp/DimensionDto;

    goto :goto_34

    :cond_3d
    move-object/from16 v1, v16

    :goto_34
    if-eqz v1, :cond_3e

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/product/universal/Size;

    move-object v5, v2

    move-object v14, v3

    iget-wide v2, v1, Lcom/vuitton/android/data/dto/pdp/DimensionDto;->a:D

    iget-object v1, v1, Lcom/vuitton/android/data/dto/pdp/DimensionDto;->b:Ljava/lang/String;

    invoke-direct {v4, v2, v3, v1}, Lcom/vuitton/foundation/model/domain/model/product/universal/Size;-><init>(DLjava/lang/String;)V

    goto :goto_35

    :cond_3e
    move-object v5, v2

    move-object v14, v3

    move-object/from16 v4, v16

    :goto_35
    iget-boolean v1, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->m:Z

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->j:Z

    iget-boolean v3, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->l:Z

    move/from16 v39, v1

    const/4 v1, 0x1

    xor-int/2addr v3, v1

    iget-boolean v1, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->k:Z

    move/from16 v40, v1

    iget-boolean v1, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->i:Z

    move/from16 v41, v1

    iget-boolean v1, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->p:Z

    move/from16 v42, v1

    iget-boolean v1, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->P:Z

    move/from16 v43, v1

    move-object/from16 v1, v35

    move/from16 v35, v2

    iget-boolean v2, v1, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->a:Z

    move/from16 v44, v3

    iget-object v3, v1, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->b:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    move-object/from16 v45, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_40

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$Sellable;

    if-eqz v45, :cond_3f

    invoke-static/range {v45 .. v45}, Lcom/vuitton/android/data/dto/pdp/mapper/PriceMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/PriceDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$Sellable;-><init>(Lcom/vuitton/foundation/model/domain/model/product/universal/Price;)V

    goto/16 :goto_3d

    :cond_3f
    new-instance v0, Lcom/vuitton/android/data/exception/ProductException$NoPriceException;

    invoke-direct {v0}, Lcom/vuitton/android/data/exception/ProductException$NoPriceException;-><init>()V

    throw v0

    :cond_40
    if-nez v2, :cond_5e

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->c:Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;

    if-nez v1, :cond_41

    const/4 v1, -0x1

    :goto_36
    const/4 v3, 0x1

    goto :goto_37

    :cond_41
    sget-object v3, Lcom/vuitton/android/data/dto/pdp/mapper/ProductMapperKt$WhenMappings;->b:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    goto :goto_36

    :goto_37
    if-eq v1, v3, :cond_48

    const/4 v3, 0x2

    if-eq v1, v3, :cond_46

    const/4 v3, 0x3

    if-eq v1, v3, :cond_44

    const/4 v3, 0x4

    if-ne v1, v3, :cond_43

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$Unavailable;

    if-eqz v45, :cond_42

    invoke-static/range {v45 .. v45}, Lcom/vuitton/android/data/dto/pdp/mapper/PriceMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/PriceDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    move-result-object v3

    goto :goto_38

    :cond_42
    move-object/from16 v3, v16

    :goto_38
    invoke-direct {v1, v3}, Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$Unavailable;-><init>(Lcom/vuitton/foundation/model/domain/model/product/universal/Price;)V

    goto :goto_3c

    :cond_43
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid reason of not sellable product"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$MandatoryCustomization;

    if-eqz v45, :cond_45

    invoke-static/range {v45 .. v45}, Lcom/vuitton/android/data/dto/pdp/mapper/PriceMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/PriceDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    move-result-object v3

    goto :goto_39

    :cond_45
    move-object/from16 v3, v16

    :goto_39
    invoke-direct {v1, v3}, Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$MandatoryCustomization;-><init>(Lcom/vuitton/foundation/model/domain/model/product/universal/Price;)V

    goto :goto_3c

    :cond_46
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$WebOnly;

    if-eqz v45, :cond_47

    invoke-static/range {v45 .. v45}, Lcom/vuitton/android/data/dto/pdp/mapper/PriceMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/PriceDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    move-result-object v3

    goto :goto_3a

    :cond_47
    move-object/from16 v3, v16

    :goto_3a
    invoke-direct {v1, v3}, Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$WebOnly;-><init>(Lcom/vuitton/foundation/model/domain/model/product/universal/Price;)V

    goto :goto_3c

    :cond_48
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$NotECommerce;

    if-eqz v45, :cond_49

    invoke-static/range {v45 .. v45}, Lcom/vuitton/android/data/dto/pdp/mapper/PriceMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/PriceDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    move-result-object v3

    goto :goto_3b

    :cond_49
    move-object/from16 v3, v16

    :goto_3b
    invoke-direct {v1, v3}, Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$NotECommerce;-><init>(Lcom/vuitton/foundation/model/domain/model/product/universal/Price;)V

    :goto_3c
    invoke-direct {v2, v1}, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;-><init>(Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason;)V

    move-object v1, v2

    :goto_3d
    iget-object v2, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->J:Ljava/util/List;

    if-eqz v2, :cond_4a

    check-cast v2, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v17, v1

    move-object/from16 v21, v4

    const/16 v1, 0xa

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/pdp/mapper/DigitalAssetProductMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProduct;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_4a
    move-object/from16 v17, v1

    move-object/from16 v21, v4

    move-object/from16 v3, v16

    :cond_4b
    if-nez v3, :cond_4c

    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_4c
    iget-object v1, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->K:Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;

    if-eqz v1, :cond_4d

    invoke-static {v1}, Lcom/vuitton/android/data/dto/pdp/mapper/DigitalAssetProductMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProduct;

    move-result-object v1

    goto :goto_3f

    :cond_4d
    move-object/from16 v1, v16

    :goto_3f
    iget-object v2, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->H:Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;

    if-eqz v2, :cond_53

    new-instance v47, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductCustomization;

    iget-object v4, v2, Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;->a:Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;

    if-eqz v4, :cond_4e

    invoke-static {v4}, Lcom/vuitton/android/data/dto/pdp/mapper/ProductCustomizationMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;

    move-result-object v4

    move-object/from16 v48, v4

    goto :goto_40

    :cond_4e
    move-object/from16 v48, v16

    :goto_40
    iget-object v4, v2, Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;->b:Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;

    if-eqz v4, :cond_4f

    invoke-static {v4}, Lcom/vuitton/android/data/dto/pdp/mapper/ProductCustomizationMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;

    move-result-object v4

    move-object/from16 v49, v4

    goto :goto_41

    :cond_4f
    move-object/from16 v49, v16

    :goto_41
    iget-object v4, v2, Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;->c:Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;

    if-eqz v4, :cond_50

    invoke-static {v4}, Lcom/vuitton/android/data/dto/pdp/mapper/ProductCustomizationMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;

    move-result-object v4

    move-object/from16 v50, v4

    goto :goto_42

    :cond_50
    move-object/from16 v50, v16

    :goto_42
    iget-object v4, v2, Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;->d:Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;

    if-eqz v4, :cond_51

    invoke-static {v4}, Lcom/vuitton/android/data/dto/pdp/mapper/ProductCustomizationMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;

    move-result-object v4

    move-object/from16 v51, v4

    goto :goto_43

    :cond_51
    move-object/from16 v51, v16

    :goto_43
    iget-object v2, v2, Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;->e:Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;

    if-eqz v2, :cond_52

    invoke-static {v2}, Lcom/vuitton/android/data/dto/pdp/mapper/ProductCustomizationMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;

    move-result-object v2

    move-object/from16 v52, v2

    goto :goto_44

    :cond_52
    move-object/from16 v52, v16

    :goto_44
    invoke-direct/range {v47 .. v52}, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductCustomization;-><init>(Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;)V

    goto :goto_45

    :cond_53
    move-object/from16 v47, v16

    :goto_45
    iget-object v2, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->M:Ljava/util/List;

    if-eqz v2, :cond_55

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v24, v1

    move-object/from16 v45, v3

    const/16 v1, 0xa

    invoke-static {v2, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_46
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/pdp/HighlightDto;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v48, Lcom/vuitton/foundation/model/domain/model/product/universal/Highlight;

    iget-object v3, v2, Lcom/vuitton/android/data/dto/pdp/HighlightDto;->a:Ljava/lang/String;

    move-object/from16 v54, v1

    iget-object v1, v2, Lcom/vuitton/android/data/dto/pdp/HighlightDto;->b:Ljava/lang/String;

    move-object/from16 v50, v1

    iget-object v1, v2, Lcom/vuitton/android/data/dto/pdp/HighlightDto;->c:Ljava/lang/String;

    move-object/from16 v51, v1

    iget-object v1, v2, Lcom/vuitton/android/data/dto/pdp/HighlightDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v52

    iget-object v1, v2, Lcom/vuitton/android/data/dto/pdp/HighlightDto;->e:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    iget-object v2, v1, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->a:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->b:Ljava/lang/String;

    if-nez v1, :cond_54

    move-object/from16 v1, v28

    :cond_54
    move-object/from16 v49, v3

    move-object/from16 v3, v16

    invoke-static {v2, v1, v3}, Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v53

    invoke-direct/range {v48 .. v53}, Lcom/vuitton/foundation/model/domain/model/product/universal/Highlight;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V

    move-object/from16 v1, v48

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v54

    const/16 v16, 0x0

    goto :goto_46

    :cond_55
    move-object/from16 v24, v1

    move-object/from16 v45, v3

    const/4 v4, 0x0

    :cond_56
    iget-object v1, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->N:Ljava/util/List;

    if-eqz v1, :cond_58

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v48, v4

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/pdp/EditorialContentDto;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v49, Lcom/vuitton/foundation/model/domain/model/product/universal/EditorialContent;

    iget-object v4, v2, Lcom/vuitton/android/data/dto/pdp/EditorialContentDto;->a:Ljava/lang/String;

    move-object/from16 v55, v1

    iget-object v1, v2, Lcom/vuitton/android/data/dto/pdp/EditorialContentDto;->b:Ljava/lang/String;

    move-object/from16 v51, v1

    iget-object v1, v2, Lcom/vuitton/android/data/dto/pdp/EditorialContentDto;->c:Ljava/lang/String;

    move-object/from16 v52, v1

    iget-object v1, v2, Lcom/vuitton/android/data/dto/pdp/EditorialContentDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v53

    iget-object v1, v2, Lcom/vuitton/android/data/dto/pdp/EditorialContentDto;->e:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    iget-object v2, v1, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->a:Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->b:Ljava/lang/String;

    if-nez v1, :cond_57

    move-object/from16 v1, v28

    :cond_57
    move-object/from16 v50, v4

    const/4 v4, 0x0

    invoke-static {v2, v1, v4}, Lcom/vuitton/android/data/dto/linktype/mapper/LinkTypeMapperKt;->a(Lcom/vuitton/android/data/dto/linktype/LinkTypeDto;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    move-result-object v54

    invoke-direct/range {v49 .. v54}, Lcom/vuitton/foundation/model/domain/model/product/universal/EditorialContent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)V

    move-object/from16 v1, v49

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v55

    goto :goto_47

    :cond_58
    move-object/from16 v48, v4

    const/4 v3, 0x0

    :cond_59
    if-nez v3, :cond_5a

    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_5a
    move-object/from16 v1, v33

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v28, v3

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v3, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->a:Ljava/lang/String;

    move-object/from16 v33, v1

    iget-object v1, v3, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->b:Ljava/lang/String;

    move-object/from16 v51, v1

    iget-object v1, v3, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->c:Ljava/lang/String;

    move-object/from16 v52, v1

    iget-object v1, v3, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->d:Ljava/lang/String;

    move-object/from16 v53, v1

    iget-object v1, v3, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->f:Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

    iget-object v1, v1, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->d:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->e:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    move-object/from16 v54, v1

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v50, v4

    move-object/from16 v20, v5

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/dto/pdp/WearingDto;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/product/universal/Wearing;

    move-object/from16 v49, v3

    iget-object v3, v5, Lcom/vuitton/android/data/dto/pdp/WearingDto;->a:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v3}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v3

    move-object/from16 v57, v6

    iget-object v6, v5, Lcom/vuitton/android/data/dto/pdp/WearingDto;->b:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/android/data/dto/pdp/WearingDto;->c:Ljava/lang/String;

    invoke-direct {v4, v3, v6, v5}, Lcom/vuitton/foundation/model/domain/model/product/universal/Wearing;-><init>(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v49

    move-object/from16 v6, v57

    const/16 v4, 0xa

    goto :goto_49

    :cond_5b
    move-object/from16 v57, v6

    new-instance v49, Lcom/vuitton/foundation/model/domain/model/product/universal/ModelSizeVariation;

    const/16 v56, 0x0

    move-object/from16 v55, v1

    invoke-direct/range {v49 .. v56}, Lcom/vuitton/foundation/model/domain/model/product/universal/ModelSizeVariation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v49

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v20

    move-object/from16 v1, v33

    goto :goto_48

    :cond_5c
    move-object/from16 v20, v5

    move-object/from16 v57, v6

    iget-object v1, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->o:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-eqz v1, :cond_5d

    iget-object v1, v1, Lcom/vuitton/android/data/dto/common/AssetImageDto;->b:Ljava/lang/String;

    move-object/from16 v50, v1

    goto :goto_4a

    :cond_5d
    const/16 v50, 0x0

    :goto_4a
    iget-object v1, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->R:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->n:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->S:Ljava/lang/String;

    move-object/from16 v53, v0

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;

    const/16 v55, 0x1000

    const/16 v56, 0x0

    const/4 v5, 0x0

    move-object/from16 v52, v3

    move-object/from16 v3, v18

    move-object/from16 v18, v38

    const/16 v38, 0x0

    move-object/from16 v6, v31

    move/from16 v31, v39

    const/16 v39, 0x0

    move-object/from16 v49, v2

    move-object/from16 v2, v23

    move-object/from16 v23, v8

    move-object/from16 v8, v22

    move-object/from16 v22, v9

    move-object/from16 v9, v34

    move/from16 v34, v40

    const/16 v40, 0x0

    move-object/from16 v51, v1

    move-object/from16 v1, v37

    move/from16 v37, v43

    move-object/from16 v43, v45

    const/16 v45, 0x0

    const/16 v54, 0x0

    move-object/from16 v16, v27

    move-object/from16 v4, v30

    move/from16 v33, v44

    move-object/from16 v27, v12

    move-object/from16 v30, v21

    move-object/from16 v44, v24

    move-object/from16 v12, v26

    move-object/from16 v21, v36

    move/from16 v36, v42

    move-object/from16 v42, v47

    move-object/from16 v47, v48

    move-object/from16 v26, v10

    move-object/from16 v24, v19

    move-object/from16 v10, v25

    move-object/from16 v48, v28

    move-object/from16 v19, v57

    move-object/from16 v25, v11

    move-object/from16 v28, v20

    move-object/from16 v11, p2

    move-object/from16 v20, v7

    move-object/from16 v7, v32

    move/from16 v32, v35

    move/from16 v35, v41

    move-object/from16 v41, v17

    move-object/from16 v17, v29

    move-object/from16 v29, v14

    move-object/from16 v14, p1

    invoke-direct/range {v0 .. v56}, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/PackagingVariation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/util/Map;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/virtualtryon/VirtualTryOn;Lcom/vuitton/foundation/model/domain/model/product/universal/Edito;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/Size;Lcom/vuitton/foundation/model/domain/model/product/universal/Size;Lcom/vuitton/foundation/model/domain/model/product/universal/Size;ZZZZZZZZZZLcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductCustomization;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProduct;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_5e
    invoke-static {}, Lv40;->g()V

    const/16 v16, 0x0

    return-object v16

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
