.class public abstract Lcom/vuitton/android/data/dto/product/stock/shared/mapper/SkuAvailabilityMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/product/stock/shared/mapper/SkuAvailabilityMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/data/dto/product/stock/shared/ProductStockDto;)Lcom/vuitton/foundation/model/domain/model/product/availability/ProductStock;
    .locals 15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/product/stock/shared/ProductStockDto;->a:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_9

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

    if-eqz v2, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v2, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->a:Ljava/lang/String;

    iget-object v3, v2, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->b:Ljava/lang/Boolean;

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v6, v3

    goto :goto_1

    :cond_0
    move v6, v5

    :goto_1
    iget-object v3, v2, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->c:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v7, v3

    goto :goto_2

    :cond_1
    move v7, v5

    :goto_2
    iget-object v3, v2, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->d:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :cond_2
    iget-object v3, v2, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->e:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/vuitton/android/data/dto/pdp/mapper/ProductDisclaimersMapperKt;->a(Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;)Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;

    move-result-object v3

    move-object v8, v3

    goto :goto_3

    :cond_3
    move-object v8, v0

    :goto_3
    iget-object v9, v2, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->f:Ljava/lang/Integer;

    iget-object v10, v2, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->g:Ljava/lang/Integer;

    iget-object v11, v2, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->h:Ljava/lang/Integer;

    iget-object v12, v2, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->i:Ljava/lang/Integer;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->j:Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;

    if-eqz v2, :cond_7

    sget-object v3, Lcom/vuitton/android/data/dto/product/stock/shared/mapper/SkuAvailabilityMapperKt$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;->MONTH:Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;

    goto :goto_4

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object v0

    :cond_5
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;->WEEK:Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;->DAY:Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;

    :goto_4
    move-object v13, v2

    goto :goto_5

    :cond_7
    move-object v13, v0

    :goto_5
    new-instance v3, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;

    const/4 v14, 0x0

    invoke-direct/range {v3 .. v14}, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;-><init>(Ljava/lang/String;ZZZLcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    move-object v0, v1

    :cond_9
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/product/availability/ProductStock;

    invoke-direct {p0, v0}, Lcom/vuitton/foundation/model/domain/model/product/availability/ProductStock;-><init>(Ljava/util/List;)V

    return-object p0
.end method
