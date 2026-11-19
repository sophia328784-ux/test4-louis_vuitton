.class public final Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;",
        "gifting",
        "Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBagContribution;",
        "shoppingBag",
        "Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;",
        "packaging",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBagContribution;Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;)V",
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
.field public final a:Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;

.field public final b:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBagContribution;

.field public final c:Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBagContribution;Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;->b:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBagContribution;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;->c:Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;->b:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBagContribution;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;->b:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBagContribution;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;->c:Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;->c:Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;->b:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBagContribution;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBagContribution;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;->c:Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartContribution(gifting="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftingContribution;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shoppingBag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;->b:Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBagContribution;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packaging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartContribution;->c:Lcom/vuitton/foundation/model/domain/model/cart/PackagingContribution;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
