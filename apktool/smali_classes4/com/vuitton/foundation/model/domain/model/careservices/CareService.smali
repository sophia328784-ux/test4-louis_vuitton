.class public final Lcom/vuitton/foundation/model/domain/model/careservices/CareService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00a7\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u000e\u001a\u00020\u0004\u0012\u0006\u0010\u000f\u001a\u00020\u0004\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0006\u0010\u0015\u001a\u00020\u0004\u0012\u0006\u0010\u0016\u001a\u00020\u0004\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/careservices/CareService;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;",
        "id",
        "",
        "transactionId",
        "storeRetailCode",
        "Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;",
        "myLVCareStatus",
        "Ljava/util/Date;",
        "createdDate",
        "deliveryDate",
        "updatedDeliveryDate",
        "lastMyRepairStatusChangedDate",
        "productName",
        "productFamily",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "sku",
        "currencyCode",
        "",
        "totalAmount",
        "productSkuUnknown",
        "productImage",
        "Lcom/vuitton/foundation/model/domain/model/repair/RepairType;",
        "repairType",
        "trackingNumber",
        "",
        "isOnGoing",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final d:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

.field public final e:Ljava/util/Date;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/Double;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

.field public final q:Ljava/lang/String;

.field public final r:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    const/high16 v0, 0x10000

    and-int v0, p19, v0

    if-eqz v0, :cond_0

    .line 79
    const-string v0, ""

    move-object/from16 v18, v0

    goto :goto_0

    :cond_0
    move-object/from16 v18, p17

    :goto_0
    const/high16 v0, 0x20000

    and-int v0, p19, v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move/from16 v19, v0

    goto :goto_1

    :cond_1
    move/from16 v19, p18

    :goto_1
    const/16 v20, 0x0

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

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    .line 80
    invoke-direct/range {v1 .. v20}, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/repair/RepairType;Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->d:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->e:Ljava/util/Date;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->j:Ljava/lang/String;

    iput-object p11, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->k:Ljava/lang/String;

    iput-object p12, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->l:Ljava/lang/String;

    iput-object p13, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->m:Ljava/lang/Double;

    iput-object p14, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->n:Ljava/lang/String;

    iput-object p15, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->o:Ljava/lang/String;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->p:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->q:Ljava/lang/String;

    move/from16 p1, p18

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->r:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->d:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->d:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->e:Ljava/util/Date;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->e:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->k:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->k:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->m:Ljava/lang/Double;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->m:Ljava/lang/Double;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->p:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->p:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->q:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->q:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->r:Z

    iget-boolean p1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->r:Z

    if-eq p0, p1, :cond_13

    return v2

    :cond_13
    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->d:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->e:Ljava/util/Date;

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->f:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->g:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->h:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->i:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->j:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->k:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->l:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->m:Ljava/lang/Double;

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->n:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->p:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->q:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->r:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    const-string v0, ", transactionId="

    const-string v1, ", storeRetailCode="

    const-string v2, "CareService(id="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", myLVCareStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->d:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", createdDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->e:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deliveryDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedDeliveryDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastMyRepairStatusChangedDate="

    const-string v2, ", productName="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->h:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", productFamily="

    const-string v2, ", sku="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->j:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", currencyCode="

    const-string v2, ", totalAmount="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->l:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->m:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", productSkuUnknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", productImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", repairType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->p:Lcom/vuitton/foundation/model/domain/model/repair/RepairType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trackingNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isOnGoing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/CareService;->r:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
