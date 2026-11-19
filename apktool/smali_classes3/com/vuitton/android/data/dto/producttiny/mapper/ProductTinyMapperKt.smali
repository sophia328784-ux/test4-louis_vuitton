.class public abstract Lcom/vuitton/android/data/dto/producttiny/mapper/ProductTinyMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;)Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    iget-object v5, p0, Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v0}, Lcom/vuitton/android/data/dto/common/mapper/AssetMapperKt;->b(Lcom/vuitton/android/data/dto/common/AssetImageDto;)Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    move-result-object v6

    iget-object v7, p0, Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;->e:Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;->a:Z

    iget-object v3, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;->b:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;->c:Ljava/lang/Double;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v8, v0}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;-><init>(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V

    :cond_1
    move-object v8, v1

    iget-object v0, p0, Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;->f:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;->valueOf(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v9, v0

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;->DEFAULT:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    goto :goto_1

    :goto_3
    iget-object v10, p0, Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;->g:Ljava/lang/String;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;

    const/4 v11, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/vuitton/foundation/model/domain/model/producttiny/ProductTiny;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method
