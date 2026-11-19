.class public final Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OrderConfirmation"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0086\u0008\u0018\u00002\u00020\u0001By\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0008\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u000e\u001a\u00020\u0008\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\u0008\u0012\u0006\u0010\u0011\u001a\u00020\u0008\u0012\u0006\u0010\u0012\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;",
        "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "skus",
        "",
        "prices",
        "totalAmount",
        "",
        "currency",
        "",
        "quantities",
        "shippingMethod",
        "shippingCountry",
        "shippingState",
        "shippingCost",
        "contentId",
        "transactionId",
        "cartId",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;DLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
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
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:D

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;DLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;D",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p8, p9, p11, p12, p13}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->b:Ljava/util/List;

    iput-wide p3, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->c:D

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->e:Ljava/util/List;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->h:Ljava/lang/String;

    iput p10, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->i:I

    iput-object p11, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->j:Ljava/lang/String;

    iput-object p12, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->k:Ljava/lang/String;

    iput-object p13, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->l:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->c:D

    iget-wide v5, p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->c:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->i:I

    iget v3, p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->i:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->l:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->l:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-wide v2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->c:D

    invoke-static {v2, v3, v0, v1}, Ld21;->a(DII)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->e:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->i:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->l:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", prices="

    const-string v1, ", totalAmount="

    const-string v2, "OrderConfirmation(skus="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->b:Ljava/util/List;

    invoke-static {v2, v0, v1, v3, v4}, Lo60;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", quantities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shippingMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shippingCountry="

    const-string v2, ", shippingState="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->h:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2, v4}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", shippingCost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", contentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transactionId="

    const-string v2, ", cartId="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->k:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$OrderConfirmation;->l:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2, p0}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
