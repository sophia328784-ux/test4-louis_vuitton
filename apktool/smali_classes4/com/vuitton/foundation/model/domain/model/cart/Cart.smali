.class public final Lcom/vuitton/foundation/model/domain/model/cart/Cart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0011\u001a\u00020\r\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/cart/Cart;",
        "",
        "",
        "identifier",
        "",
        "itemCount",
        "",
        "Lcom/vuitton/foundation/model/domain/model/cart/CartItem;",
        "cartItems",
        "Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;",
        "priceInfo",
        "Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;",
        "giftOption",
        "",
        "displayTax",
        "Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;",
        "shoppingBag",
        "containsPerfume",
        "Lcom/vuitton/foundation/model/domain/model/cart/CartSample;",
        "cartSample",
        "<init>",
        "(Ljava/lang/String;ILjava/util/List;Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;ZLcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;ZLcom/vuitton/foundation/model/domain/model/cart/CartSample;)V",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/util/List;

.field public final d:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

.field public final e:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

.field public final f:Z

.field public final g:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;

.field public final h:Z

.field public final i:Lcom/vuitton/foundation/model/domain/model/cart/CartSample;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;ZLcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;ZLcom/vuitton/foundation/model/domain/model/cart/CartSample;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/vuitton/foundation/model/domain/model/cart/CartItem;",
            ">;",
            "Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;",
            "Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;",
            "Z",
            "Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;",
            "Z",
            "Lcom/vuitton/foundation/model/domain/model/cart/CartSample;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->a:Ljava/lang/String;

    iput p2, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->b:I

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->d:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->e:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    iput-boolean p6, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->f:Z

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->g:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;

    iput-boolean p8, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->h:Z

    iput-object p9, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->i:Lcom/vuitton/foundation/model/domain/model/cart/CartSample;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/util/List;Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;ZLcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;ZLcom/vuitton/foundation/model/domain/model/cart/CartSample;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p10, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    goto :goto_1

    :cond_0
    move/from16 v7, p6

    goto :goto_0

    .line 34
    :goto_1
    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/cart/Cart;-><init>(Ljava/lang/String;ILjava/util/List;Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;ZLcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;ZLcom/vuitton/foundation/model/domain/model/cart/CartSample;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/cart/Cart;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->b:I

    iget v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->d:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->d:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->e:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->e:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->g:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->g:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->h:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->i:Lcom/vuitton/foundation/model/domain/model/cart/CartSample;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->i:Lcom/vuitton/foundation/model/domain/model/cart/CartSample;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->b:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->d:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->e:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-boolean v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->f:Z

    invoke-static {v3, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->g:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-boolean v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->h:Z

    invoke-static {v3, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->i:Lcom/vuitton/foundation/model/domain/model/cart/CartSample;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/cart/CartSample;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", itemCount="

    const-string v1, ", cartItems="

    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->b:I

    const-string v3, "Cart(identifier="

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->a:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0, v1}, Lfc;->r(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", priceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->d:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", giftOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->e:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayTax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shoppingBag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->g:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", containsPerfume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cartSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/Cart;->i:Lcom/vuitton/foundation/model/domain/model/cart/CartSample;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
