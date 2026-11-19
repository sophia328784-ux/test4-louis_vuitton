.class public final Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0097\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0008\u0012\u0006\u0010\u0015\u001a\u00020\u0008\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\r\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;",
        "",
        "",
        "identifier",
        "Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;",
        "timeline",
        "Lcom/vuitton/foundation/model/domain/model/account/orders/Price;",
        "priceWithoutVAT",
        "",
        "eligibleForExchange",
        "name",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "skuId",
        "",
        "images",
        "price",
        "",
        "quantity",
        "color",
        "size",
        "isReturned",
        "eligibleForReturn",
        "Lcom/vuitton/foundation/model/domain/model/common/StringResource;",
        "disclaimer",
        "Lcom/vuitton/foundation/model/domain/model/account/orders/Customization;",
        "customizations",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;Lcom/vuitton/foundation/model/domain/model/account/orders/Price;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/account/orders/Price;ILjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/foundation/model/domain/model/common/StringResource;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final b:Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;

.field public final c:Lcom/vuitton/foundation/model/domain/model/account/orders/Price;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/List;

.field public final h:Lcom/vuitton/foundation/model/domain/model/account/orders/Price;

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Z

.field public final m:Z

.field public final n:Lcom/vuitton/foundation/model/domain/model/common/StringResource;

.field public final o:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;Lcom/vuitton/foundation/model/domain/model/account/orders/Price;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/account/orders/Price;ILjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/foundation/model/domain/model/common/StringResource;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    and-int/lit8 v0, p16, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    :cond_0
    move/from16 v5, p4

    :goto_0
    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    .line 52
    invoke-direct/range {v1 .. v17}, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;Lcom/vuitton/foundation/model/domain/model/account/orders/Price;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/account/orders/Price;ILjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/foundation/model/domain/model/common/StringResource;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;Lcom/vuitton/foundation/model/domain/model/account/orders/Price;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/account/orders/Price;ILjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/foundation/model/domain/model/common/StringResource;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->c:Lcom/vuitton/foundation/model/domain/model/account/orders/Price;

    iput-boolean p4, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->d:Z

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->g:Ljava/util/List;

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->h:Lcom/vuitton/foundation/model/domain/model/account/orders/Price;

    iput p9, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->i:I

    iput-object p10, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->j:Ljava/lang/String;

    iput-object p11, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->k:Ljava/lang/String;

    iput-boolean p12, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->l:Z

    iput-boolean p13, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->m:Z

    iput-object p14, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->n:Lcom/vuitton/foundation/model/domain/model/common/StringResource;

    iput-object p15, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->c:Lcom/vuitton/foundation/model/domain/model/account/orders/Price;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->c:Lcom/vuitton/foundation/model/domain/model/account/orders/Price;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->f:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->f:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->g:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->h:Lcom/vuitton/foundation/model/domain/model/account/orders/Price;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->h:Lcom/vuitton/foundation/model/domain/model/account/orders/Price;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->i:I

    iget v3, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->i:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->l:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->l:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->m:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->m:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->n:Lcom/vuitton/foundation/model/domain/model/common/StringResource;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->n:Lcom/vuitton/foundation/model/domain/model/common/StringResource;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->o:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->o:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->c:Lcom/vuitton/foundation/model/domain/model/account/orders/Price;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/account/orders/Price;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-boolean v0, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->d:Z

    invoke-static {v3, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->e:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->f:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->g:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->h:Lcom/vuitton/foundation/model/domain/model/account/orders/Price;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/account/orders/Price;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget v0, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->i:I

    invoke-static {v0, v3, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->j:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->k:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->l:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->m:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->n:Lcom/vuitton/foundation/model/domain/model/common/StringResource;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->o:Ljava/util/List;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TransactionItem(identifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/Timeline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", priceWithoutVAT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->c:Lcom/vuitton/foundation/model/domain/model/account/orders/Price;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eligibleForExchange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", skuId="

    const-string v2, ", images="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->h:Lcom/vuitton/foundation/model/domain/model/account/orders/Price;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isReturned="

    const-string v2, ", eligibleForReturn="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->k:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->l:Z

    invoke-static {v3, v1, v2, v0, v4}, Lpq0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disclaimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->n:Lcom/vuitton/foundation/model/domain/model/common/StringResource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customizations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;->o:Ljava/util/List;

    invoke-static {v0, p0, v1}, La;->o(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
