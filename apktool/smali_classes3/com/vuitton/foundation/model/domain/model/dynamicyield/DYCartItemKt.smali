.class public abstract Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItemKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "domain"
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/cart/CartItem;)Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->a:Ljava/lang/String;

    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->d:I

    sget-object v3, Lkotlin/UInt;->c:Lkotlin/UInt$Companion;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->b:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->d:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    if-eqz p0, :cond_0

    iget-wide v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->a:D

    double-to-float p0, v3

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;-><init>(Ljava/lang/String;IFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
