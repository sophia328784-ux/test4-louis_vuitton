.class public final Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;",
        "totalAmount",
        "taxAmount",
        "shippingAmount",
        "unitAmount",
        "totalTaxIncludedAmount",
        "Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;",
        "taxDetails",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;)V",
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
.field public final a:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

.field public final b:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

.field public final c:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

.field public final d:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

.field public final e:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

.field public final f:Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->a:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->b:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->c:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->d:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->e:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->f:Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;-><init>(Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->a:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->a:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->b:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->b:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->c:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->c:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->d:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->d:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->e:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->e:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->f:Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->f:Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->a:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->b:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->c:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->d:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->e:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->f:Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartPriceInformation(totalAmount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->a:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taxAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->b:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shippingAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->c:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unitAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->d:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalTaxIncludedAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->e:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taxDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->f:Lcom/vuitton/foundation/model/domain/model/cart/FormattedTaxDetails;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
