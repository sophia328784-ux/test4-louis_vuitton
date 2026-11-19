.class public final Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "identifier",
        "",
        "name",
        "",
        "quantity",
        "Lcom/vuitton/foundation/model/domain/model/product/ProductImage;",
        "image",
        "Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;",
        "priceInfo",
        "color",
        "size",
        "material",
        "Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;",
        "customizationConfiguration",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/foundation/model/domain/model/product/ProductImage;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Lcom/vuitton/foundation/model/domain/model/product/ProductImage;

.field public final e:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/foundation/model/domain/model/product/ProductImage;Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->b:Ljava/lang/String;

    iput p3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->c:I

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->d:Lcom/vuitton/foundation/model/domain/model/product/ProductImage;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->e:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->i:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;

    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->a:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->c:I

    iget v1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->c:I

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->d:Lcom/vuitton/foundation/model/domain/model/product/ProductImage;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->d:Lcom/vuitton/foundation/model/domain/model/product/ProductImage;

    invoke-virtual {v0, v1}, Lcom/vuitton/foundation/model/domain/model/product/ProductImage;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->e:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->e:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-virtual {v0, v1}, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->i:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->i:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->c:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->d:Lcom/vuitton/foundation/model/domain/model/product/ProductImage;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/product/ProductImage;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->e:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->f:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->g:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->h:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->i:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    const-string v0, ", name="

    const-string v1, ", quantity="

    const-string v2, "CheckoutItem(identifier="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->d:Lcom/vuitton/foundation/model/domain/model/product/ProductImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", priceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->e:Lcom/vuitton/foundation/model/domain/model/cart/CartPrice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", material="

    const-string v2, ", customizationConfiguration="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->h:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CheckoutItem;->i:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
