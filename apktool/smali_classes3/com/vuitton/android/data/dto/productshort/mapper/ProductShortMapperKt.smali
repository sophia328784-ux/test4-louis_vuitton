.class public abstract Lcom/vuitton/android/data/dto/productshort/mapper/ProductShortMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/productshort/ProductShortDto;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;
    .locals 26

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->e:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v3

    :goto_0
    iget-object v7, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->b:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v8

    iget-object v9, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->d:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->e:Ljava/lang/String;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->f:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/vuitton/android/data/dto/productshort/ProductVariationDto;

    iget-object v11, v11, Lcom/vuitton/android/data/dto/productshort/ProductVariationDto;->a:Ljava/lang/String;

    sget-object v12, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v11, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/data/dto/productshort/ProductVariationDto;

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductVariation;

    iget-object v13, v5, Lcom/vuitton/android/data/dto/productshort/ProductVariationDto;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/android/data/dto/productshort/ProductVariationDto;->b:Lcom/vuitton/android/data/dto/productshort/ProductShortCharacteristicDto;

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;

    iget-object v15, v5, Lcom/vuitton/android/data/dto/productshort/ProductShortCharacteristicDto;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/android/data/dto/productshort/ProductShortCharacteristicDto;->b:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v5}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v5

    invoke-direct {v14, v15, v5}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V

    invoke-direct {v12, v13, v14, v3}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductVariation;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v4, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->g:Lcom/vuitton/android/data/dto/productshort/ProductShortCharacteristicDto;

    if-eqz v4, :cond_4

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;

    iget-object v12, v4, Lcom/vuitton/android/data/dto/productshort/ProductShortCharacteristicDto;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/vuitton/android/data/dto/productshort/ProductShortCharacteristicDto;->b:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v4

    invoke-direct {v5, v12, v4}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V

    move-object v12, v5

    goto :goto_3

    :cond_4
    move-object v12, v3

    :goto_3
    iget-boolean v13, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->h:Z

    iget-object v14, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->i:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->j:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v15, Ljava/util/ArrayList;

    invoke-static {v4, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v15, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->a(Lcom/vuitton/android/data/dto/common/AssetDto;)Lcom/vuitton/foundation/model/domain/model/common/Asset;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    iget-object v1, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->k:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;->valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    :goto_5
    move-object/from16 v16, v1

    goto :goto_7

    :cond_7
    :goto_6
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;->DEFAULT:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    goto :goto_5

    :goto_7
    iget-object v1, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->l:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_8

    :cond_8
    move-object v1, v3

    :goto_8
    if-nez v1, :cond_9

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_9
    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->m:Ljava/lang/String;

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v4, v2}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItemId;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItemId;->a:Ljava/lang/String;

    move-object/from16 v19, v2

    goto :goto_9

    :cond_a
    move-object/from16 v19, v3

    :goto_9
    iget-object v2, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->n:Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;

    if-eqz v2, :cond_b

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    iget-boolean v5, v2, Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;->a:Z

    iget-object v3, v2, Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;->b:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v2, Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;->c:Ljava/lang/Double;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;->d:Ljava/lang/String;

    invoke-direct {v4, v5, v3, v1, v2}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    goto :goto_a

    :cond_b
    move-object/from16 v20, v1

    const/4 v4, 0x0

    :goto_a
    iget-boolean v1, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->o:Z

    iget-object v2, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->p:Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;

    if-eqz v2, :cond_c

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/product/virtualtryon/VirtualTryOn;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;->a:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/product/vto/mapper/TryOnProductMapperKt;->a(Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;)Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/vuitton/foundation/model/domain/model/product/virtualtryon/VirtualTryOn;-><init>(Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;)V

    move-object/from16 v22, v3

    goto :goto_b

    :cond_c
    const/16 v22, 0x0

    :goto_b
    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->q:Z

    iget-object v0, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->r:Ljava/lang/String;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    const/16 v25, 0x0

    move-object/from16 v24, v0

    move/from16 v21, v1

    move/from16 v23, v2

    move-object/from16 v18, v20

    move-object/from16 v20, v4

    invoke-direct/range {v5 .. v25}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;ZLjava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;ZLcom/vuitton/foundation/model/domain/model/product/virtualtryon/VirtualTryOn;ZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5
.end method

.method public static final b(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_4

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_2

    invoke-static {v1, p1}, Lcom/vuitton/android/data/dto/productshort/mapper/ProductShortMapperKt;->a(Lcom/vuitton/android/data/dto/productshort/ProductShortDto;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
