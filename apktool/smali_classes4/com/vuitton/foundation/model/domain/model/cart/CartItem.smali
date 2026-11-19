.class public final Lcom/vuitton/foundation/model/domain/model/cart/CartItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00ab\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u000e\u001a\u00020\n\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0006\u0010\u0010\u001a\u00020\n\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u000e\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0017\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0006\u0012\u0006\u0010\u0019\u001a\u00020\u0006\u0012\u0006\u0010\u001a\u001a\u00020\u0006\u0012\u0006\u0010\u001b\u001a\u00020\u0006\u0012\u0006\u0010\u001c\u001a\u00020\u0006\u0012\u0006\u0010\u001d\u001a\u00020\n\u0012\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0013\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\"\u0012\u0006\u0010$\u001a\u00020\u0006\u0012\u0006\u0010%\u001a\u00020\u0006\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010&\u0012\u0008\u0010)\u001a\u0004\u0018\u00010(\u0012\u0006\u0010*\u001a\u00020\u0006\u0012\u0006\u0010+\u001a\u00020\u0006\u00a2\u0006\u0004\u0008,\u0010-\u00a8\u0006."
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/cart/CartItem;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "sku",
        "Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;",
        "priceInfo",
        "",
        "isExclusive",
        "",
        "quantity",
        "",
        "color",
        "size",
        "imageUrl",
        "skuDisplayName",
        "productMaterialDisplayName",
        "identifier",
        "Lcom/vuitton/foundation/model/domain/model/product/ProductId;",
        "productId",
        "",
        "Lcom/vuitton/foundation/model/domain/model/product/ProductImage;",
        "images",
        "detailedDescription",
        "eligibleShoppingBag",
        "isOutOfStock",
        "isAvailable",
        "bundle",
        "bundleParent",
        "isBaby",
        "comboSkuDisplayName",
        "bundleChildSkus",
        "commercialTag",
        "backOrderDisclaimerMin",
        "backOrderDisclaimerMax",
        "Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;",
        "backOrderDisclaimerTimeFormat",
        "matchPreOrderRules",
        "matchBackOrderRules",
        "Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;",
        "disclaimer",
        "Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;",
        "customization",
        "isQuantityEditable",
        "isWishlistEligible",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZZZZZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;ZZLcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final A:Z

.field public final B:Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;

.field public final C:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;

.field public final D:Z

.field public final E:Z

.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

.field public final c:Z

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/util/List;

.field public final m:Ljava/lang/String;

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:Z

.field public final t:Ljava/lang/String;

.field public final u:Ljava/util/List;

.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/Integer;

.field public final x:Ljava/lang/Integer;

.field public final y:Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;

.field public final z:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZZZZZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;ZZLcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 35

    move/from16 v0, p32

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move/from16 v17, v1

    goto :goto_0

    :cond_0
    move/from16 v17, p15

    :goto_0
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object/from16 v25, v2

    goto :goto_1

    :cond_1
    move-object/from16 v25, p23

    :goto_1
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_2

    move-object/from16 v26, v2

    goto :goto_2

    :cond_2
    move-object/from16 v26, p24

    :goto_2
    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    move-object/from16 v27, v2

    goto :goto_3

    :cond_3
    move-object/from16 v27, p25

    :goto_3
    const/16 v34, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    move/from16 v18, p16

    move/from16 v19, p17

    move/from16 v20, p18

    move/from16 v21, p19

    move-object/from16 v22, p20

    move-object/from16 v23, p21

    move-object/from16 v24, p22

    move/from16 v28, p26

    move/from16 v29, p27

    move-object/from16 v30, p28

    move-object/from16 v31, p29

    move/from16 v32, p30

    move/from16 v33, p31

    .line 107
    invoke-direct/range {v2 .. v34}, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZZZZZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;ZZLcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZZZZZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;ZZLcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-static {p1, p8, p9, p10, p11}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->b:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    iput-boolean p3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->c:Z

    iput p4, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->d:I

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->j:Ljava/lang/String;

    iput-object p11, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->k:Ljava/lang/String;

    iput-object p12, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->l:Ljava/util/List;

    iput-object p13, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->m:Ljava/lang/String;

    iput-boolean p14, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->n:Z

    iput-boolean p15, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->o:Z

    move/from16 p1, p16

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->p:Z

    move/from16 p1, p17

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->q:Z

    move/from16 p1, p18

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->r:Z

    move/from16 p1, p19

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->s:Z

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->t:Ljava/lang/String;

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->u:Ljava/util/List;

    move-object/from16 p1, p22

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->v:Ljava/lang/String;

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->w:Ljava/lang/Integer;

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->x:Ljava/lang/Integer;

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->y:Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;

    move/from16 p1, p26

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->z:Z

    move/from16 p1, p27

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->A:Z

    move-object/from16 p1, p28

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->B:Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;

    move-object/from16 p1, p29

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->C:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;

    move/from16 p1, p30

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->D:Z

    move/from16 p1, p31

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->E:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->b:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->b:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->d:I

    iget v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->d:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->k:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->k:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->l:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->l:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->m:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->m:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->n:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->n:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->o:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->o:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->p:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->p:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->q:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->q:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->r:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->r:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->s:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->s:Z

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->t:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->u:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->u:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->v:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->v:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->w:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->w:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->x:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->x:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->y:Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->y:Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->z:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->z:Z

    if-eq v1, v3, :cond_1b

    return v2

    :cond_1b
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->A:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->A:Z

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->B:Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->B:Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->C:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->C:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->D:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->D:Z

    if-eq v1, v3, :cond_1f

    return v2

    :cond_1f
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->E:Z

    iget-boolean p1, p1, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->E:Z

    if-eq p0, p1, :cond_20

    return v2

    :cond_20
    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->b:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->c:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->d:I

    invoke-static {v3, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->e:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->f:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->g:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->h:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->i:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->j:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->k:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->l:Ljava/util/List;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->m:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->n:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->o:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->p:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->q:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->r:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->s:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->t:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->u:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->v:Ljava/lang/String;

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->w:Ljava/lang/Integer;

    if-nez v3, :cond_7

    move v3, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->x:Ljava/lang/Integer;

    if-nez v3, :cond_8

    move v3, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->y:Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;

    if-nez v3, :cond_9

    move v3, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->z:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->A:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->B:Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;

    if-nez v3, :cond_a

    move v3, v2

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->C:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;

    if-nez v3, :cond_b

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->D:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->E:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartItem(sku="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", priceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->b:Lcom/vuitton/foundation/model/domain/model/cart/CartPriceInformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isExclusive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    const-string v2, ", imageUrl="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", skuDisplayName="

    const-string v2, ", productMaterialDisplayName="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->h:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", identifier="

    const-string v2, ", productId="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->j:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", images="

    const-string v2, ", detailedDescription="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->l:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, v4}, Ld21;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string v1, ", eligibleShoppingBag="

    const-string v2, ", isOutOfStock="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->m:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->n:Z

    invoke-static {v3, v1, v2, v0, v4}, Lpq0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v1, ", isAvailable="

    const-string v2, ", bundle="

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->o:Z

    iget-boolean v4, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->p:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", bundleParent="

    const-string v2, ", isBaby="

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->q:Z

    iget-boolean v4, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->r:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", comboSkuDisplayName="

    const-string v2, ", bundleChildSkus="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->t:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->s:Z

    invoke-static {v1, v3, v2, v0, v4}, Lcj;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v1, ", commercialTag="

    const-string v2, ", backOrderDisclaimerMin="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->v:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->u:Ljava/util/List;

    invoke-static {v1, v3, v2, v0, v4}, Lo60;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->w:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backOrderDisclaimerMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->x:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backOrderDisclaimerTimeFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->y:Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", matchPreOrderRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->z:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", matchBackOrderRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disclaimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->B:Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", customization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->C:Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isQuantityEditable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->D:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isWishlistEligible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/cart/CartItem;->E:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
