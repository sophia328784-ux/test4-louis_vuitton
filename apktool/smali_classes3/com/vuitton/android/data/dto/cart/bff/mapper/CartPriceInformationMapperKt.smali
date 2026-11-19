.class public abstract Lcom/vuitton/android/data/dto/cart/bff/mapper/CartPriceInformationMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;)Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartPriceMapperKt;->a(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;)Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    move-result-object v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->b:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-static {v2}, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartPriceMapperKt;->a(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;)Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    move-result-object v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->c:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartPriceMapperKt;->a(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;)Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iget-object v5, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->d:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    if-eqz v5, :cond_1

    invoke-static {v5}, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartPriceMapperKt;->a(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;)Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->e:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/vuitton/android/data/dto/cart/bff/mapper/CartPriceMapperKt;->a(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;)Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    move-result-object v4

    :cond_2
    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v9, v5

    move-object v5, v4

    move-object v4, v9

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;-><init>(Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
