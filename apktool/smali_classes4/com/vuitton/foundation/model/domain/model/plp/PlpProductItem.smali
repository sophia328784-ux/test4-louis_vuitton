.class public final Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00c1\u0001\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000c\u0012\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000c\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u000c\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u001b\u001a\u00020\u0015\u0012\u0006\u0010\u001c\u001a\u00020\u0015\u0012\u0006\u0010\u001d\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001f\u0010 \u00a8\u0006!"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/product/ProductId;",
        "id",
        "",
        "name",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "sku",
        "category",
        "type",
        "Lcom/vuitton/foundation/model/domain/model/common/Asset;",
        "mainAsset",
        "",
        "assetList",
        "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductVariation;",
        "colorVariationList",
        "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;",
        "color",
        "tags",
        "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;",
        "price",
        "",
        "isVATIncluded",
        "shareUrl",
        "Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;",
        "background",
        "launchDate",
        "isArAvailable",
        "isTryOnAvailable",
        "isPersonalizationAvailable",
        "isInWishlist",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;ZLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/lang/String;ZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/vuitton/foundation/model/domain/model/common/Asset;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/List;

.field public final i:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;

.field public final j:Ljava/util/List;

.field public final k:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

.field public final l:Z

.field public final m:Ljava/lang/String;

.field public final n:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

.field public final o:Ljava/lang/String;

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;ZLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/lang/String;ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 22

    const/high16 v0, 0x40000

    and-int v0, p20, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move/from16 v20, v0

    goto :goto_0

    :cond_0
    move/from16 v20, p19

    :goto_0
    const/16 v21, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    .line 71
    invoke-direct/range {v1 .. v21}, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;ZLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/lang/String;ZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;ZLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/lang/String;ZZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->f:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->g:Ljava/util/List;

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->h:Ljava/util/List;

    iput-object p9, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->i:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;

    iput-object p10, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->j:Ljava/util/List;

    iput-object p11, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->k:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    iput-boolean p12, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->l:Z

    iput-object p13, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->m:Ljava/lang/String;

    iput-object p14, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->n:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    iput-object p15, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->o:Ljava/lang/String;

    move/from16 p1, p16

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->p:Z

    move/from16 p1, p17

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->q:Z

    move/from16 p1, p18

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->r:Z

    move/from16 p1, p19

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->s:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->a:Ljava/lang/String;

    if-nez v3, :cond_3

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->c:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->c:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->f:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->f:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->g:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->h:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->h:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->i:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->i:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->j:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->j:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->k:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->k:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->l:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->l:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->n:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->n:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->p:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->p:Z

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->q:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->q:Z

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->r:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->r:Z

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->s:Z

    iget-boolean p1, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->s:Z

    if-eq p0, p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->d:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->e:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->f:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/common/Asset;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->g:Ljava/util/List;

    invoke-static {v3, v2, v1}, Ln00;->a(IILjava/util/List;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->h:Ljava/util/List;

    invoke-static {v1, v2, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->i:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->j:Ljava/util/List;

    invoke-static {v1, v2, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->k:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->l:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->m:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->n:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->o:Ljava/lang/String;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-boolean v0, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->p:Z

    invoke-static {v3, v2, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->q:Z

    invoke-static {v0, v2, v1}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->r:Z

    invoke-static {v0, v2, v1}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->s:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    :goto_0
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    const-string v1, ", name="

    const-string v2, ", sku="

    const-string v3, "PlpProductItem(id="

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->b:Ljava/lang/String;

    invoke-static {v3, v0, v1, v4, v2}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category="

    const-string v2, ", type="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mainAsset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->f:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", assetList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", colorVariationList="

    const-string v2, ", color="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->g:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->h:Ljava/util/List;

    invoke-static {v0, v3, v1, v4, v2}, La;->C(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->i:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortCharacteristic;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->k:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductShortPrice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isVATIncluded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shareUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->n:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", launchDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isArAvailable="

    const-string v2, ", isTryOnAvailable="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->o:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->p:Z

    invoke-static {v3, v1, v2, v0, v4}, Lpq0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v1, ", isPersonalizationAvailable="

    const-string v2, ", isInWishlist="

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->q:Z

    iget-boolean v4, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->r:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpProductItem;->s:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
