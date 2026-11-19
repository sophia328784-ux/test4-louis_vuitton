.class public abstract Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModelKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel;)Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    check-cast p0, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;->c:Ljava/lang/String;

    iget v0, p0, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;->e:I

    const v6, 0x7f080089

    if-ne v0, v6, :cond_0

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;->FLOOR:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;->DEFAULT:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    goto :goto_0

    :goto_1
    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;->f:Ljava/time/LocalDateTime;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    if-eqz p0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->a:Z

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->b:Ljava/lang/String;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->c:Ljava/lang/Double;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->d:Ljava/lang/String;

    invoke-direct {v1, v0, v8, v9, p0}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    :cond_1
    move-object v8, v1

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/time/LocalDateTime;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_2
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryResearchUiModel;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryTextResearch;

    check-cast p0, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryResearchUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryResearchUiModel;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryResearchUiModel;->b:Ljava/time/LocalDateTime;

    invoke-direct {v0, v1, p0}, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryTextResearch;-><init>(Ljava/lang/String;Ljava/time/LocalDateTime;)V

    return-object v0

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-object v1
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/search/models/HistoryUiModelKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_0
    const/4 v0, 0x1

    const v1, 0x7f080088

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    return v1

    :cond_1
    const p0, 0x7f080089

    return p0

    :cond_2
    return v1
.end method
