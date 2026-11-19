.class public final Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;",
        "",
        "",
        "productId",
        "Lkotlin/UInt;",
        "quantity",
        "",
        "itemPrice",
        "<init>",
        "(Ljava/lang/String;IFLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final c:F


# direct methods
.method public constructor <init>(Ljava/lang/String;IFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;->a:Ljava/lang/String;

    iput p2, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;->b:I

    iput p3, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;->c:F

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;->b:I

    iget v1, p1, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;->b:I

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget p0, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;->c:F

    iget p1, p1, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;->c:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_4

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    sget-object v2, Lkotlin/UInt;->c:Lkotlin/UInt$Companion;

    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;->b:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget p0, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;->c:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lkotlin/UInt;->c:Lkotlin/UInt$Companion;

    iget v0, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;->b:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", quantity="

    const-string v2, ", itemPrice="

    const-string v3, "DYCartItem(productId="

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;->a:Ljava/lang/String;

    invoke-static {v3, v4, v1, v0, v2}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    iget p0, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;->c:F

    invoke-static {p0, v1, v0}, Ld21;->e(FLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
