.class public final Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;
.super Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddToCart"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;",
        "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;",
        "",
        "value",
        "",
        "productId",
        "currency",
        "",
        "quantity",
        "",
        "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;",
        "cart",
        "<init>",
        "(FLjava/lang/String;Ljava/lang/String;ILjava/util/List;)V",
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
.field public final b:F

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/util/List;


# direct methods
.method public constructor <init>(FLjava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "add_to_cart"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->b:F

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->d:Ljava/lang/String;

    iput p4, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->e:I

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->b:F

    iget v3, p1, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->b:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->e:I

    iget v3, p1, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->e:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->f:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->f:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->b:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->e:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->f:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AddToCart(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYBusinessEvent$AddToCart;->f:Ljava/util/List;

    invoke-static {v0, p0, v1}, La;->o(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
