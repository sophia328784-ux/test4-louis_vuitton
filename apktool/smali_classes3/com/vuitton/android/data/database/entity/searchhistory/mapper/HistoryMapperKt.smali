.class public abstract Lcom/vuitton/android/data/database/entity/searchhistory/mapper/HistoryMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/database/entity/searchhistory/mapper/HistoryMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;)Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->b:Ljava/lang/String;

    if-eqz v1, :cond_5

    move-object v3, v0

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->c:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    iget-object p0, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->d:Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;

    if-eqz p0, :cond_3

    sget-object v5, Lcom/vuitton/android/data/database/entity/searchhistory/mapper/HistoryMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v5, p0

    const/4 v5, 0x1

    if-eq p0, v5, :cond_2

    const/4 v5, 0x2

    if-ne p0, v5, :cond_1

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;->FLOOR:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    goto :goto_0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;->DEFAULT:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    :goto_0
    if-nez p0, :cond_4

    :cond_3
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;->DEFAULT:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    :cond_4
    invoke-static {v3}, Lcom/vuitton/foundation/util/StringKtExtKt;->d(Ljava/lang/String;)Ljava/time/LocalDateTime;

    move-result-object v5

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, v4

    move-object v4, p0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/time/LocalDateTime;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_5
    move-object v3, v0

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryTextResearch;

    invoke-static {v3}, Lcom/vuitton/foundation/util/StringKtExtKt;->d(Ljava/lang/String;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryTextResearch;-><init>(Ljava/lang/String;Ljava/time/LocalDateTime;)V

    return-object p0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;)Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    new-instance v2, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->d:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    sget-object v6, Lcom/vuitton/android/data/database/entity/searchhistory/mapper/HistoryMapperKt$WhenMappings;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v6, v0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_1

    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    sget-object v0, Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;->FLOOR:Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v1

    :cond_1
    sget-object v0, Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;->DEFAULT:Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->e:Ljava/time/LocalDateTime;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->f:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    if-eqz p0, :cond_2

    new-instance v1, Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;

    iget-boolean v0, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;->a:Z

    iget-object v8, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;->b:Ljava/lang/String;

    iget-object v9, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;->c:Ljava/lang/Double;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;->d:Ljava/lang/String;

    invoke-direct {v1, v0, v8, v9, p0}, Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    :cond_2
    move-object v8, v1

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_3
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryTextResearch;

    if-eqz v0, :cond_4

    new-instance v2, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryTextResearch;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryTextResearch;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryTextResearch;->b:Ljava/time/LocalDateTime;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object v1
.end method
