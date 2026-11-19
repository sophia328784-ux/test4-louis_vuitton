.class public abstract Lcom/vuitton/android/data/dto/cart/bff/mapper/CartPriceMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;)Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    iget-wide v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;->a:D

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;-><init>(DLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
