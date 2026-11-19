.class public abstract Lcom/vuitton/android/presentation/model/common/mapper/ProductShortMapperKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;)Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    move-object v2, v1

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/common/Asset;->a:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->k:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModelKt;->b(Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;)I

    move-result v5

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->o:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    if-eqz v6, :cond_2

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v4

    :goto_1
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShort;->g:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;

    if-eqz p0, :cond_3

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;->a:Ljava/lang/String;

    :cond_3
    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v10, v6

    move-object v6, v4

    move v4, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
