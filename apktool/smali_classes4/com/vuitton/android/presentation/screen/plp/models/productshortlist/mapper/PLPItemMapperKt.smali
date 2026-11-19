.class public abstract Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/PLPItemMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/PLPItemMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;ZZZ)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->o:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget-object v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v2

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->d:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->b:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v8}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v8

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->j:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v9, v11}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v12}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-boolean v12, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->h:Z

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->q:Lcom/vuitton/foundation/model/domain/model/product/virtualtryon/VirtualTryOn;

    if-eqz v9, :cond_2

    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/model/product/virtualtryon/VirtualTryOn;->a:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    const/16 v16, 0x1

    const/4 v13, 0x0

    if-eqz v9, :cond_3

    move/from16 v9, v16

    goto :goto_3

    :cond_3
    move v9, v13

    :goto_3
    iget-object v14, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->k:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    invoke-static {v14}, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModelKt;->b(Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;)I

    move-result v14

    move v15, v9

    move-object v9, v10

    move v10, v14

    iget-boolean v14, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->p:Z

    new-instance v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    move/from16 v11, p2

    invoke-direct {v3, v11, v13}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;-><init>(ZZ)V

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    if-eqz v2, :cond_4

    move-object v11, v3

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_4
    new-instance v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    move v2, v13

    move v13, v15

    const/4 v15, 0x0

    move/from16 v17, v2

    const/4 v2, 0x0

    invoke-direct/range {v3 .. v15}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/util/List;ILandroidx/compose/runtime/MutableState;ZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->g:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;

    if-eqz v5, :cond_6

    new-instance v8, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductVariationUiModel;

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortCharacteristicUiModel;

    move-result-object v5

    invoke-direct {v8, v4, v5, v2}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductVariationUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortCharacteristicUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3, v8}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->f:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductVariation;

    invoke-static {v8}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->e(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductVariation;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductVariationUiModel;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    invoke-virtual {v3, v5}, Lkotlin/collections/builders/ListBuilder;->addAll(Ljava/util/Collection;)Z

    :cond_6
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object v8

    if-eqz v1, :cond_8

    if-eqz p1, :cond_7

    move-object v3, v1

    goto :goto_6

    :cond_7
    move-object v3, v2

    :goto_6
    if-eqz v3, :cond_8

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    move-result-object v3

    move-object v9, v3

    goto :goto_7

    :cond_8
    move-object v9, v2

    :goto_7
    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->l:Ljava/util/List;

    if-eqz v1, :cond_9

    if-eqz p3, :cond_9

    move/from16 v11, v16

    goto :goto_8

    :cond_9
    move/from16 v11, v17

    :goto_8
    iget-object v13, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->s:Ljava/lang/String;

    new-instance v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    const/4 v12, 0x0

    const/16 v14, 0x40

    const/4 v15, 0x0

    invoke-direct/range {v5 .. v15}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/util/List;ZLandroidx/compose/runtime/MutableState;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5
.end method
