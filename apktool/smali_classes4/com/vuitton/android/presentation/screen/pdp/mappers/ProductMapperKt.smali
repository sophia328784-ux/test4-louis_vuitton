.class public abstract Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductMapperKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/product/universal/Price;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/Price;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/Price;->b:Lcom/vuitton/foundation/model/domain/model/product/universal/PriceSpecification;

    if-eqz p0, :cond_0

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/PriceSpecification;->a:Ljava/lang/String;

    iget-wide v4, p0, Lcom/vuitton/foundation/model/domain/model/product/universal/PriceSpecification;->b:D

    invoke-direct {v2, v3, v4, v5}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;-><init>(Ljava/lang/String;D)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/product/universal/Product;Z)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;
    .locals 65

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    iget-boolean v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->J:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move/from16 v40, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->e:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->d:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->c:Lcom/vuitton/foundation/model/domain/model/product/universal/PackagingVariation;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/product/universal/PackagingVariation;->a()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->g:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->h:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->j:Ljava/util/List;

    const/16 v11, 0xa

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v1, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/product/universal/PanelInfo;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoUiModel;

    iget-object v15, v13, Lcom/vuitton/foundation/model/domain/model/product/universal/PanelInfo;->a:Lcom/vuitton/foundation/model/domain/model/product/PanelInformationType;

    iget-object v2, v13, Lcom/vuitton/foundation/model/domain/model/product/universal/PanelInfo;->b:Ljava/lang/String;

    iget-object v11, v13, Lcom/vuitton/foundation/model/domain/model/product/universal/PanelInfo;->c:Ljava/lang/String;

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/product/universal/PanelInfo;->d:Ljava/lang/String;

    invoke-direct {v14, v15, v2, v11, v13}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoUiModel;-><init>(Lcom/vuitton/foundation/model/domain/model/product/PanelInformationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v11, 0xa

    goto :goto_3

    :cond_2
    move-object v11, v12

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    :goto_4
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->k:Ljava/util/List;

    if-eqz v1, :cond_8

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/product/universal/EnvironmentInfo;

    iget-object v14, v13, Lcom/vuitton/foundation/model/domain/model/product/universal/EnvironmentInfo;->b:Ljava/util/List;

    check-cast v14, Ljava/util/Collection;

    invoke-static {v14}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v14

    if-nez v14, :cond_5

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/product/universal/EnvironmentInfo;->c:Ljava/lang/String;

    if-eqz v13, :cond_4

    invoke-static {v13}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v2, v12}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v1, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/product/universal/EnvironmentInfo;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EnvironmentInfoUiModel;

    iget-object v14, v12, Lcom/vuitton/foundation/model/domain/model/product/universal/EnvironmentInfo;->a:Ljava/lang/String;

    iget-object v15, v12, Lcom/vuitton/foundation/model/domain/model/product/universal/EnvironmentInfo;->b:Ljava/util/List;

    iget-object v12, v12, Lcom/vuitton/foundation/model/domain/model/product/universal/EnvironmentInfo;->c:Ljava/lang/String;

    invoke-direct {v13, v14, v15, v12}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EnvironmentInfoUiModel;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    move-object v12, v1

    goto :goto_7

    :cond_8
    const/4 v12, 0x0

    :goto_7
    iget-object v13, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->l:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->m:Ljava/util/Map;

    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->g(I)I

    move-result v2

    invoke-direct {v14, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    move-object/from16 v17, v1

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v20, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    move-object/from16 v28, v2

    iget-object v2, v3, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;->b:Ljava/lang/String;

    move-object/from16 v21, v2

    iget-object v2, v3, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;->c:Ljava/lang/String;

    move-object/from16 v23, v2

    iget-object v2, v3, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;->d:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/product/universal/Variation;->e:Ljava/lang/String;

    const/16 v27, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move-object/from16 v22, v4

    invoke-direct/range {v20 .. v27}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v28

    goto :goto_9

    :cond_9
    invoke-interface {v14, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto :goto_8

    :cond_a
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->R:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProduct;

    if-eqz v1, :cond_b

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProduct;->c:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProduct;->d:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v15, v2

    goto :goto_a

    :cond_b
    const/4 v15, 0x0

    :goto_a
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->Q:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProduct;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProduct;->a:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;

    move-object/from16 v17, v1

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;->IMAGE:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;

    if-eq v4, v1, :cond_d

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;->VIDEO:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;

    if-ne v4, v1, :cond_c

    goto :goto_d

    :cond_c
    :goto_c
    move-object/from16 v1, v17

    goto :goto_b

    :cond_d
    :goto_d
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProduct;

    iget-object v4, v3, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProduct;->a:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;

    move-object/from16 v17, v2

    iget-object v2, v3, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProduct;->c:Ljava/lang/String;

    move-object/from16 v20, v5

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;->IMAGE:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;

    if-ne v4, v5, :cond_f

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

    const-string v5, "?"

    invoke-static {v2, v5}, Lkotlin/text/StringsKt;->U(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProduct;->d:Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductName;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_f
    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductVideoUiModel;

    const/4 v3, 0x0

    invoke-direct {v4, v2, v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductVideoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v17

    move-object/from16 v5, v20

    goto :goto_e

    :cond_10
    move-object/from16 v20, v5

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_10

    :cond_11
    const/4 v1, 0x0

    :goto_10
    if-eqz v1, :cond_12

    invoke-static {v1}, Lkotlinx/collections/immutable/ExtensionsKt;->a(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    move-result-object v1

    if-eqz v1, :cond_12

    goto :goto_13

    :cond_12
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->n:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/product/ProductMedia;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v3, Lcom/vuitton/foundation/model/domain/model/product/ProductImage;

    if-eqz v4, :cond_13

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/product/ProductImage;

    iget-object v5, v3, Lcom/vuitton/foundation/model/domain/model/product/ProductImage;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/product/ProductImage;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_13
    instance-of v4, v3, Lcom/vuitton/foundation/model/domain/model/product/ProductVideo;

    if-eqz v4, :cond_14

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductVideoUiModel;

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/product/ProductVideo;

    iget-object v5, v3, Lcom/vuitton/foundation/model/domain/model/product/ProductVideo;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/product/ProductVideo;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductVideoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_14
    invoke-static {}, Lv40;->g()V

    const/4 v3, 0x0

    return-object v3

    :cond_15
    invoke-static {v2}, Lkotlinx/collections/immutable/ExtensionsKt;->a(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    move-result-object v1

    :goto_13
    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->o:Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Single;

    if-eqz v3, :cond_16

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$Single;

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Single;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Single;->a:Ljava/lang/String;

    invoke-direct {v3, v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$Single;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v1

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    goto/16 :goto_16

    :cond_16
    instance-of v3, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Multiple;

    if-eqz v3, :cond_19

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Multiple;

    iget-object v3, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Multiple;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$Multiple;->b:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v17, v1

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$DescriptionDetail;

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$DescriptionDetail;->a:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$DescriptionDetail;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$DescriptionDetail;->c:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    move-object/from16 v22, v6

    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    const/16 v7, 0xa

    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$ProductDetailSection;

    new-instance v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$ProductDetailSectionUiModel;

    move-object/from16 v25, v2

    iget-object v2, v7, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$ProductDetailSection;->a:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$ProductDetailSection;->b:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {v7}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v7

    invoke-direct {v8, v2, v7}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$ProductDetailSectionUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v25

    goto :goto_15

    :cond_17
    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$DescriptionDetailUiModel;

    invoke-direct {v2, v5, v1, v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$DescriptionDetailUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v21

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v8, v24

    goto :goto_14

    :cond_18
    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$Multiple;

    invoke-direct {v1, v3, v4}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$Multiple;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object v3, v1

    goto :goto_16

    :cond_19
    move-object/from16 v17, v1

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$None;->a:Lcom/vuitton/foundation/model/domain/model/product/universal/DetailedFeature$None;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$None;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel$None;

    :goto_16
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->p:Ljava/util/List;

    if-eqz v1, :cond_1b

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v5, v4}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_1a
    move-object/from16 v1, v17

    move-object/from16 v17, v3

    move-object/from16 v3, v18

    move-object/from16 v18, v2

    goto :goto_18

    :cond_1b
    move-object/from16 v1, v17

    move-object/from16 v17, v3

    move-object/from16 v3, v18

    const/16 v18, 0x0

    :goto_18
    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->q:Lcom/vuitton/foundation/model/domain/model/product/virtualtryon/VirtualTryOn;

    if-eqz v2, :cond_1c

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/product/virtualtryon/VirtualTryOn;->a:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/mappers/TryOnProductMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;)Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)V

    move-object/from16 v64, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v64

    goto :goto_19

    :cond_1c
    move-object/from16 v4, v19

    const/16 v19, 0x0

    :goto_19
    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->r:Lcom/vuitton/foundation/model/domain/model/product/universal/Edito;

    if-eqz v2, :cond_1d

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/Edito;->a:Ljava/lang/String;

    iget-object v7, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/Edito;->b:Ljava/lang/String;

    iget-object v8, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/Edito;->c:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/Edito;->d:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v2}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v64, v20

    move-object/from16 v20, v5

    move-object/from16 v5, v64

    goto :goto_1a

    :cond_1d
    move-object/from16 v5, v20

    const/16 v20, 0x0

    :goto_1a
    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->s:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->t:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->u:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->v:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->w:Ljava/lang/String;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->x:Ljava/lang/String;

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->y:Ljava/lang/String;

    move-object/from16 v27, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->z:Ljava/lang/String;

    move-object/from16 v28, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->T:Ljava/lang/String;

    move-object/from16 v29, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->A:Ljava/lang/String;

    move-object/from16 v30, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->B:Lcom/vuitton/foundation/model/domain/model/product/universal/Size;

    move-object/from16 v31, v2

    if-eqz v1, :cond_1e

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    move-object/from16 v32, v3

    move-object/from16 v33, v4

    iget-wide v3, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/Size;->a:D

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/Size;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;-><init>(DLjava/lang/String;)V

    move-object v3, v2

    goto :goto_1b

    :cond_1e
    move-object/from16 v32, v3

    move-object/from16 v33, v4

    const/4 v3, 0x0

    :goto_1b
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->C:Lcom/vuitton/foundation/model/domain/model/product/universal/Size;

    if-eqz v1, :cond_1f

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    move-object/from16 v34, v3

    iget-wide v3, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/Size;->a:D

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/Size;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;-><init>(DLjava/lang/String;)V

    move-object v3, v2

    goto :goto_1c

    :cond_1f
    move-object/from16 v34, v3

    const/4 v3, 0x0

    :goto_1c
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->D:Lcom/vuitton/foundation/model/domain/model/product/universal/Size;

    if-eqz v1, :cond_20

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;

    move-object/from16 v35, v3

    iget-wide v3, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/Size;->a:D

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/Size;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;-><init>(DLjava/lang/String;)V

    move-object v3, v2

    goto :goto_1d

    :cond_20
    move-object/from16 v35, v3

    const/4 v3, 0x0

    :goto_1d
    iget-boolean v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->E:Z

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->Z:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->F:Z

    move/from16 v36, v1

    iget-boolean v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->G:Z

    move/from16 v37, v1

    iget-boolean v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->H:Z

    move/from16 v38, v1

    iget-boolean v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->I:Z

    move/from16 v39, v1

    iget-boolean v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->K:Z

    move/from16 v41, v1

    iget-boolean v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->L:Z

    move/from16 v42, v1

    iget-boolean v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->M:Z

    move/from16 v43, v1

    iget-boolean v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->N:Z

    move/from16 v44, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->O:Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v45, v2

    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$Sellable;

    if-eqz v2, :cond_21

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$SellableUiModel;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$Sellable;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$Sellable;->a:Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/product/universal/Price;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$SellableUiModel;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;)V

    move-object/from16 v46, v3

    move/from16 v47, v4

    move-object/from16 v48, v5

    goto :goto_21

    :cond_21
    instance-of v2, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;

    if-eqz v2, :cond_35

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/SellableStatus$NotSellable;->a:Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason;->h()Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    move-result-object v46

    if-eqz v46, :cond_22

    invoke-static/range {v46 .. v46}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/product/universal/Price;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    move-result-object v46

    move-object/from16 v47, v46

    move-object/from16 v46, v3

    move-object/from16 v3, v47

    :goto_1e
    move/from16 v47, v4

    goto :goto_1f

    :cond_22
    move-object/from16 v46, v3

    const/4 v3, 0x0

    goto :goto_1e

    :goto_1f
    instance-of v4, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$NotECommerce;

    move/from16 v48, v4

    const/4 v4, 0x2

    if-eqz v48, :cond_23

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$NotECommerceUiModel;

    move-object/from16 v48, v5

    const/4 v5, 0x0

    invoke-direct {v1, v3, v5, v4, v5}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$NotECommerceUiModel;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_20

    :cond_23
    move-object/from16 v48, v5

    const/4 v5, 0x0

    instance-of v4, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$WebOnly;

    if-eqz v4, :cond_24

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$WebOnlyUiModel;

    const/4 v4, 0x2

    invoke-direct {v1, v3, v5, v4, v5}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$WebOnlyUiModel;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_20

    :cond_24
    instance-of v4, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$MandatoryCustomization;

    if-eqz v4, :cond_25

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$MandatoryCustomizationUiModel;

    const/4 v4, 0x2

    invoke-direct {v1, v3, v5, v4, v5}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$MandatoryCustomizationUiModel;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_20

    :cond_25
    const/4 v4, 0x2

    instance-of v1, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/NotSellableReason$Unavailable;

    if-eqz v1, :cond_34

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$UnavailableUiModel;

    invoke-direct {v1, v3, v5, v4, v5}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel$UnavailableUiModel;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_20
    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$NotSellableUiModel;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/NotSellableReasonUiModel;)V

    :goto_21
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->P:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductCustomization;

    if-eqz v1, :cond_2b

    new-instance v49, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;

    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductCustomization;->a:Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;

    if-eqz v3, :cond_26

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductCustomizationMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    move-result-object v3

    move-object/from16 v50, v3

    goto :goto_22

    :cond_26
    const/16 v50, 0x0

    :goto_22
    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductCustomization;->b:Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;

    if-eqz v3, :cond_27

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductCustomizationMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    move-result-object v3

    move-object/from16 v51, v3

    goto :goto_23

    :cond_27
    const/16 v51, 0x0

    :goto_23
    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductCustomization;->c:Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;

    if-eqz v3, :cond_28

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductCustomizationMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    move-result-object v3

    move-object/from16 v52, v3

    goto :goto_24

    :cond_28
    const/16 v52, 0x0

    :goto_24
    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductCustomization;->d:Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;

    if-eqz v3, :cond_29

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductCustomizationMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    move-result-object v3

    move-object/from16 v53, v3

    goto :goto_25

    :cond_29
    const/16 v53, 0x0

    :goto_25
    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductCustomization;->e:Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;

    if-eqz v1, :cond_2a

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductCustomizationMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    move-result-object v3

    move-object/from16 v54, v3

    goto :goto_26

    :cond_2a
    const/16 v54, 0x0

    :goto_26
    invoke-direct/range {v49 .. v54}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;)V

    move-object/from16 v3, v49

    goto :goto_27

    :cond_2b
    const/4 v3, 0x0

    :goto_27
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->S:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->U:Ljava/util/List;

    if-eqz v4, :cond_2d

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v49, v1

    move-object/from16 v50, v2

    const/16 v1, 0xa

    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/product/universal/Highlight;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v51, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/Highlight;->a:Ljava/lang/String;

    move-object/from16 v57, v1

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/Highlight;->b:Ljava/lang/String;

    move-object/from16 v53, v1

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/Highlight;->c:Ljava/lang/String;

    move-object/from16 v54, v1

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/Highlight;->d:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {v1}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v55

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/Highlight;->e:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v1}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v56

    move-object/from16 v52, v4

    invoke-direct/range {v51 .. v56}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    move-object/from16 v1, v51

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v57

    goto :goto_28

    :cond_2c
    move-object/from16 v1, v21

    move-object/from16 v21, v31

    move-object/from16 v31, v34

    move/from16 v34, v36

    move/from16 v36, v47

    move-object/from16 v47, v50

    move-object/from16 v50, v5

    goto :goto_29

    :cond_2d
    move-object/from16 v49, v1

    move-object/from16 v1, v21

    move-object/from16 v21, v31

    move-object/from16 v31, v34

    move/from16 v34, v36

    move/from16 v36, v47

    const/16 v50, 0x0

    move-object/from16 v47, v2

    :goto_29
    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->V:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v51, v1

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/product/universal/EditorialContent;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v52, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditorialContentUiModel;

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/EditorialContent;->a:Ljava/lang/String;

    move-object/from16 v58, v1

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/EditorialContent;->b:Ljava/lang/String;

    move-object/from16 v54, v1

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/EditorialContent;->c:Ljava/lang/String;

    move-object/from16 v55, v1

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/EditorialContent;->d:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v1}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v56

    iget-object v1, v2, Lcom/vuitton/foundation/model/domain/model/product/universal/EditorialContent;->e:Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;

    invoke-static {v1}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/contributionlink/ContributionLink;)Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    move-result-object v57

    move-object/from16 v53, v5

    invoke-direct/range {v52 .. v57}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditorialContentUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    move-object/from16 v1, v52

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v58

    goto :goto_2a

    :cond_2e
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->W:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v52, v3

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/product/universal/ModelSizeVariation;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    move-object/from16 v61, v1

    iget-object v1, v3, Lcom/vuitton/foundation/model/domain/model/product/universal/ModelSizeVariation;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v3, Lcom/vuitton/foundation/model/domain/model/product/universal/ModelSizeVariation;->b:Ljava/lang/String;

    if-eqz v5, :cond_2f

    sget-object v53, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v55, v5

    goto :goto_2c

    :cond_2f
    const/16 v55, 0x0

    :goto_2c
    iget-object v5, v3, Lcom/vuitton/foundation/model/domain/model/product/universal/ModelSizeVariation;->c:Ljava/lang/String;

    move-object/from16 v54, v1

    iget-object v1, v3, Lcom/vuitton/foundation/model/domain/model/product/universal/ModelSizeVariation;->d:Ljava/lang/String;

    move-object/from16 v57, v1

    iget-object v1, v3, Lcom/vuitton/foundation/model/domain/model/product/universal/ModelSizeVariation;->e:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/product/universal/ModelSizeVariation;->f:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    move-object/from16 v58, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_31

    move-object/from16 v53, v3

    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v62, v4

    move-object v4, v3

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/product/universal/Wearing;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/product/universal/Wearing;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    move-object/from16 v3, v53

    move-object/from16 v4, v62

    goto :goto_2d

    :cond_31
    move-object/from16 v62, v4

    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v56, v5

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/product/universal/Wearing;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/WearingUiModel;

    move-object/from16 v53, v1

    iget-object v1, v5, Lcom/vuitton/foundation/model/domain/model/product/universal/Wearing;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {v1}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v1

    move-object/from16 v63, v6

    iget-object v6, v5, Lcom/vuitton/foundation/model/domain/model/product/universal/Wearing;->b:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/product/universal/Wearing;->c:Ljava/lang/String;

    invoke-direct {v4, v1, v6, v5}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/WearingUiModel;-><init>(Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v53

    move-object/from16 v6, v63

    const/16 v4, 0xa

    goto :goto_2e

    :cond_32
    move-object/from16 v63, v6

    new-instance v53, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;

    const/16 v60, 0x0

    move-object/from16 v59, v3

    invoke-direct/range {v53 .. v60}, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v53

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v61

    move-object/from16 v4, v62

    goto/16 :goto_2b

    :cond_33
    move-object/from16 v62, v4

    move-object/from16 v63, v6

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->X:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->Y:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Product;->a0:Ljava/lang/String;

    move-object/from16 v5, v48

    move-object/from16 v48, v52

    move-object/from16 v52, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    move-object/from16 v4, v33

    move-object/from16 v33, v46

    const/16 v46, 0x0

    const/16 v56, 0x0

    move-object/from16 v54, v3

    move-object/from16 v3, v32

    move-object/from16 v32, v35

    move-object/from16 v35, v45

    const/16 v45, 0x0

    move-object/from16 v6, v23

    move-object/from16 v23, v7

    move-object v7, v6

    move-object/from16 v6, v24

    move-object/from16 v24, v8

    move-object v8, v6

    move-object/from16 v55, v0

    move-object/from16 v53, v1

    move-object/from16 v6, v22

    move-object/from16 v16, v51

    move-object/from16 v51, v62

    move-object/from16 v22, v63

    invoke-direct/range {v2 .. v56}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductType;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/util/Map;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductMediaUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/DetailedFeatureUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeUiModel;ZLjava/lang/String;ZZZZZZZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductCustomizationUiModel;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_34
    invoke-static {}, Lv40;->g()V

    const/4 v3, 0x0

    return-object v3

    :cond_35
    const/4 v3, 0x0

    invoke-static {}, Lv40;->g()V

    return-object v3

    :cond_36
    const/4 v3, 0x0

    invoke-static {}, Lv40;->g()V

    return-object v3
.end method

.method public static final c(Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;->d:Ljava/util/List;

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;->e:Ljava/util/List;

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;->f:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;->g:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;->h:Ljava/util/Map;

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;->i:Ljava/util/Map;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;->j:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;->k:Ljava/util/List;

    check-cast v11, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v11, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/sizeguide/HowToMeasureItem;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v13, Lcom/vuitton/foundation/model/domain/model/sizeguide/HowToMeasureItem;->a:Ljava/lang/String;

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/sizeguide/HowToMeasureItem;->b:Ljava/lang/String;

    invoke-static {v14}, Lcom/vuitton/android/platform/extensions/StringExtKt;->a(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    new-instance v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HowToMeasureItemUiModel;

    invoke-direct {v15, v14, v13}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HowToMeasureItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    goto :goto_6

    :cond_0
    :try_start_0
    new-instance v15, Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v16, v1

    move-object/from16 v1, p1

    :try_start_1
    invoke-direct {v15, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v17, v2

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_0
    :goto_1
    move-object/from16 v17, v2

    goto :goto_2

    :catch_1
    move-object/from16 v16, v1

    goto :goto_1

    :catch_2
    :goto_2
    const-string v1, ""

    :goto_3
    new-instance v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HowToMeasureItemUiModel;

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v1, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_2
    :goto_4
    const/4 v1, 0x0

    :goto_5
    invoke-direct {v15, v1, v13}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HowToMeasureItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-interface {v12, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto :goto_0

    :cond_3
    move-object/from16 v16, v1

    move-object/from16 v17, v2

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/sizeguide/SizeGuide;->l:Ljava/lang/String;

    move-object v11, v12

    move-object v12, v0

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;

    invoke-direct/range {v0 .. v12}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SizeGuideUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method
