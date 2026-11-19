.class public abstract Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/mappers/ShadeFinderResponseMapperKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderResponse;)Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;
    .locals 15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderResponse;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/ShadeFinderResponse;->b:Ljava/util/List;

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

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/product/vto/Recommendation;

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/product/vto/Recommendation;->a:Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;

    iget-object v6, v4, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;->a:Ljava/lang/String;

    const/4 v14, 0x0

    if-eqz v6, :cond_0

    sget-object v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_0
    move-object v6, v14

    :goto_1
    iget-object v7, v4, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;->b:Ljava/lang/String;

    iget-object v8, v4, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {v8}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v8

    sget-object v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    move-object v10, v9

    iget-object v9, v4, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;->d:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    iget-object v10, v4, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;->e:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    if-eqz v10, :cond_1

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    move-result-object v10

    goto :goto_2

    :cond_1
    move-object v10, v14

    :goto_2
    iget-object v11, v4, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;->f:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;

    move-result-object v11

    iget-object v12, v4, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;->g:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct/range {v5 .. v13}, Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBackgroundUiModel;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/product/vto/Recommendation;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/product/vto/Recommendation;->c:Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/mappers/TryOnProductMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;)Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    move-result-object v14

    :cond_2
    invoke-direct {v3, v5, v4, v14}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;-><init>(Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

    invoke-direct {p0, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method
