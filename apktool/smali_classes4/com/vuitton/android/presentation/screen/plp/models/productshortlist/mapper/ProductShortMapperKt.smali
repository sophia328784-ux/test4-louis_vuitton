.class public abstract Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;->FLOOR:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;->DEFAULT:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;

    return-object p0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortCharacteristicUiModel;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortCharacteristicUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;->b:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {p0}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortCharacteristicUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V

    return-object v0
.end method

.method public static final c(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;->a:Z

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;->c:Ljava/lang/Double;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final d(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;
    .locals 25

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v1}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v7

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->d:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->f:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductVariation;

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->e(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductVariation;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductVariationUiModel;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->g:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortCharacteristicUiModel;

    move-result-object v1

    move-object v11, v1

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    iget-boolean v12, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->h:Z

    iget-object v13, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->i:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->j:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v14, Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v3}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/common/Asset;)Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->k:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;

    move-result-object v15

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->l:Ljava/util/List;

    iget-object v3, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->m:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->n:Ljava/lang/String;

    if-eqz v4, :cond_4

    new-instance v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/WishlistItemIdUiModel;

    invoke-direct {v2, v4}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/WishlistItemIdUiModel;-><init>(Ljava/lang/String;)V

    move-object/from16 v18, v2

    goto :goto_4

    :cond_4
    const/16 v18, 0x0

    :goto_4
    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->o:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    if-eqz v2, :cond_5

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    move-result-object v2

    move-object/from16 v19, v2

    goto :goto_5

    :cond_5
    const/16 v19, 0x0

    :goto_5
    iget-boolean v2, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->p:Z

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->q:Lcom/vuitton/foundation/model/domain/model/product/virtualtryon/VirtualTryOn;

    move-object/from16 v17, v1

    if-eqz v4, :cond_6

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/product/virtualtryon/VirtualTryOn;->a:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/mappers/TryOnProductMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;)Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;)V

    move-object/from16 v21, v1

    goto :goto_6

    :cond_6
    const/16 v21, 0x0

    :goto_6
    iget-boolean v1, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->r:Z

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->s:Ljava/lang/String;

    new-instance v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;

    const/16 v24, 0x0

    move-object/from16 v23, v0

    move/from16 v22, v1

    move/from16 v20, v2

    move-object/from16 v16, v17

    move-object/from16 v17, v3

    invoke-direct/range {v4 .. v24}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortCharacteristicUiModel;ZLjava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/WishlistItemIdUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/VirtualTryOnUiModel;ZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4
.end method

.method public static final e(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductVariation;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductVariationUiModel;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductVariationUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductVariation;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductVariation;->b:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortCharacteristicUiModel;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v2, p0, v1}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductVariationUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortCharacteristicUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
