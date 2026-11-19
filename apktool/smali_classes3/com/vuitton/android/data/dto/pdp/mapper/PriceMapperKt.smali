.class public abstract Lcom/vuitton/android/data/dto/pdp/mapper/PriceMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/pdp/PriceDto;)Lcom/vuitton/foundation/model/domain/model/product/universal/Price;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/PriceDto;->a:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/product/universal/PriceSpecification;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/PriceDto;->c:Ljava/lang/String;

    iget p0, p0, Lcom/vuitton/android/data/dto/pdp/PriceDto;->b:F

    float-to-double v4, p0

    invoke-direct {v2, v3, v4, v5}, Lcom/vuitton/foundation/model/domain/model/product/universal/PriceSpecification;-><init>(Ljava/lang/String;D)V

    invoke-direct {v0, v1, v2}, Lcom/vuitton/foundation/model/domain/model/product/universal/Price;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/PriceSpecification;)V

    return-object v0
.end method
