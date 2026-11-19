.class public abstract Lcom/vuitton/android/presentation/model/common/mapper/ProductTinyMapperKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;)Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    move-object v2, v1

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;->c:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;->f:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    invoke-static {v4}, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModelKt;->b(Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;)I

    move-result v4

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;->e:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    if-eqz v5, :cond_0

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/mapper/ProductShortMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;)Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;->g:Ljava/lang/String;

    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
