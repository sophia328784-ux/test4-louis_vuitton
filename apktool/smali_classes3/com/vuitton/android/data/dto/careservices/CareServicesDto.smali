.class public final Lcom/vuitton/android/data/dto/careservices/CareServicesDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/careservices/CareServicesDto$$serializer;,
        Lcom/vuitton/android/data/dto/careservices/CareServicesDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 *2\u00020\u0001:\u0002+*B\u00ab\u0002\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010 \u001a\u00020\u001a\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\"\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008#\u0010$B\u0091\u0002\u0008\u0010\u0012\u0006\u0010&\u001a\u00020%\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010 \u001a\u00020\u001a\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\'\u00a2\u0006\u0004\u0008#\u0010)\u00a8\u0006,"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/careservices/CareServicesDto;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;",
        "id",
        "Lcom/vuitton/android/data/dto/repair/RepairTypeDto;",
        "recordType",
        "",
        "transactionId",
        "Lcom/vuitton/android/data/dto/repair/RepairStatusDto;",
        "myLVCareStatus",
        "storeName",
        "storeRetailCode",
        "Ljava/util/Date;",
        "createdDate",
        "myRepairCreatedDate",
        "lastModifiedDate",
        "lastMyRepairStatusChangedDate",
        "currencyCode",
        "typeOfRepair",
        "",
        "totalAmount",
        "totalAmountUpdated",
        "deliveryDate",
        "updatedDeliveryDate",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "sku",
        "",
        "isGenericSKU",
        "productName",
        "productSkuUnknown",
        "productFamily",
        "productImage",
        "isNotRepaired",
        "appointementDateTime",
        "origin",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Companion",
        "$serializer",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vuitton/android/data/dto/careservices/CareServicesDto$Companion;

.field public static final z:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/Date;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/Float;

.field public final n:Ljava/lang/Float;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;

.field public final r:Z

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Ljava/lang/String;

.field public final w:Z

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/careservices/CareServicesDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->Companion:Lcom/vuitton/android/data/dto/careservices/CareServicesDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lfj;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lfj;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v4, Lfj;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lfj;-><init>(I)V

    invoke-static {v0, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/16 v4, 0x19

    new-array v4, v4, [Lkotlin/Lazy;

    aput-object v1, v4, v3

    aput-object v2, v4, v5

    const/4 v2, 0x2

    aput-object v1, v4, v2

    const/4 v2, 0x3

    aput-object v0, v4, v2

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const/4 v0, 0x5

    aput-object v1, v4, v0

    const/4 v0, 0x6

    aput-object v1, v4, v0

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const/16 v0, 0x8

    aput-object v1, v4, v0

    const/16 v0, 0x9

    aput-object v1, v4, v0

    const/16 v0, 0xa

    aput-object v1, v4, v0

    const/16 v0, 0xb

    aput-object v1, v4, v0

    const/16 v0, 0xc

    aput-object v1, v4, v0

    const/16 v0, 0xd

    aput-object v1, v4, v0

    const/16 v0, 0xe

    aput-object v1, v4, v0

    const/16 v0, 0xf

    aput-object v1, v4, v0

    const/16 v0, 0x10

    aput-object v1, v4, v0

    const/16 v0, 0x11

    aput-object v1, v4, v0

    const/16 v0, 0x12

    aput-object v1, v4, v0

    const/16 v0, 0x13

    aput-object v1, v4, v0

    const/16 v0, 0x14

    aput-object v1, v4, v0

    const/16 v0, 0x15

    aput-object v1, v4, v0

    const/16 v0, 0x16

    aput-object v1, v4, v0

    const/16 v0, 0x17

    aput-object v1, v4, v0

    const/16 v0, 0x18

    aput-object v1, v4, v0

    sput-object v4, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->z:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    const/high16 v0, 0x420000

    and-int v1, p1, v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->a:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->b:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->b:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->c:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->d:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->d:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->e:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->e:Ljava/lang/String;

    :goto_4
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_5

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->f:Ljava/lang/String;

    goto :goto_5

    :cond_5
    iput-object p7, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->f:Ljava/lang/String;

    :goto_5
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_6

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->g:Ljava/util/Date;

    goto :goto_6

    :cond_6
    iput-object p8, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->g:Ljava/util/Date;

    :goto_6
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_7

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->h:Ljava/lang/String;

    goto :goto_7

    :cond_7
    iput-object p9, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->h:Ljava/lang/String;

    :goto_7
    and-int/lit16 p2, p1, 0x100

    if-nez p2, :cond_8

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->i:Ljava/lang/String;

    goto :goto_8

    :cond_8
    iput-object p10, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->i:Ljava/lang/String;

    :goto_8
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_9

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->j:Ljava/lang/String;

    goto :goto_9

    :cond_9
    iput-object p11, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->j:Ljava/lang/String;

    :goto_9
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_a

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->k:Ljava/lang/String;

    goto :goto_a

    :cond_a
    iput-object p12, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->k:Ljava/lang/String;

    :goto_a
    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_b

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->l:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 p2, p13

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->l:Ljava/lang/String;

    :goto_b
    and-int/lit16 p2, p1, 0x1000

    if-nez p2, :cond_c

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->m:Ljava/lang/Float;

    goto :goto_c

    :cond_c
    move-object/from16 p2, p14

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->m:Ljava/lang/Float;

    :goto_c
    and-int/lit16 p2, p1, 0x2000

    if-nez p2, :cond_d

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->n:Ljava/lang/Float;

    goto :goto_d

    :cond_d
    move-object/from16 p2, p15

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->n:Ljava/lang/Float;

    :goto_d
    and-int/lit16 p2, p1, 0x4000

    if-nez p2, :cond_e

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->o:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 p2, p16

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->o:Ljava/lang/String;

    :goto_e
    const p2, 0x8000

    and-int/2addr p2, p1

    if-nez p2, :cond_f

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->p:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 p2, p17

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->p:Ljava/lang/String;

    :goto_f
    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    if-nez p2, :cond_10

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->q:Ljava/lang/String;

    :goto_10
    move/from16 p2, p19

    goto :goto_11

    :cond_10
    move-object/from16 p2, p18

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->q:Ljava/lang/String;

    goto :goto_10

    :goto_11
    iput-boolean p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->r:Z

    const/high16 p2, 0x40000

    and-int/2addr p2, p1

    if-nez p2, :cond_11

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->s:Ljava/lang/String;

    goto :goto_12

    :cond_11
    move-object/from16 p2, p20

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->s:Ljava/lang/String;

    :goto_12
    const/high16 p2, 0x80000

    and-int/2addr p2, p1

    if-nez p2, :cond_12

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->t:Ljava/lang/String;

    goto :goto_13

    :cond_12
    move-object/from16 p2, p21

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->t:Ljava/lang/String;

    :goto_13
    const/high16 p2, 0x100000

    and-int/2addr p2, p1

    if-nez p2, :cond_13

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->u:Ljava/lang/String;

    goto :goto_14

    :cond_13
    move-object/from16 p2, p22

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->u:Ljava/lang/String;

    :goto_14
    const/high16 p2, 0x200000

    and-int/2addr p2, p1

    if-nez p2, :cond_14

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->v:Ljava/lang/String;

    :goto_15
    move/from16 p2, p24

    goto :goto_16

    :cond_14
    move-object/from16 p2, p23

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->v:Ljava/lang/String;

    goto :goto_15

    :goto_16
    iput-boolean p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->w:Z

    const/high16 p2, 0x800000

    and-int/2addr p2, p1

    if-nez p2, :cond_15

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->x:Ljava/lang/String;

    goto :goto_17

    :cond_15
    move-object/from16 p2, p25

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->x:Ljava/lang/String;

    :goto_17
    const/high16 p2, 0x1000000

    and-int/2addr p1, p2

    if-nez p1, :cond_16

    iput-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->y:Ljava/lang/String;

    return-void

    :cond_16
    move-object/from16 p1, p26

    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->y:Ljava/lang/String;

    return-void

    :cond_17
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/CareServicesDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/careservices/CareServicesDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v2
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 30

    move/from16 v0, p26

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-object v7, v2

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move-object v8, v2

    goto :goto_4

    :cond_4
    move-object/from16 v8, p5

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    move-object v9, v2

    goto :goto_5

    :cond_5
    move-object/from16 v9, p6

    :goto_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    move-object v10, v2

    goto :goto_6

    :cond_6
    move-object/from16 v10, p7

    :goto_6
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    move-object v11, v2

    goto :goto_7

    :cond_7
    move-object/from16 v11, p8

    :goto_7
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_8

    move-object v12, v2

    goto :goto_8

    :cond_8
    move-object/from16 v12, p9

    :goto_8
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_9

    move-object v13, v2

    goto :goto_9

    :cond_9
    move-object/from16 v13, p10

    :goto_9
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_a

    move-object v14, v2

    goto :goto_a

    :cond_a
    move-object/from16 v14, p11

    :goto_a
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_b

    move-object v15, v2

    goto :goto_b

    :cond_b
    move-object/from16 v15, p12

    :goto_b
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_c

    move-object/from16 v16, v2

    goto :goto_c

    :cond_c
    move-object/from16 v16, p13

    :goto_c
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_d

    move-object/from16 v17, v2

    goto :goto_d

    :cond_d
    move-object/from16 v17, p14

    :goto_d
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    move-object/from16 v18, v2

    goto :goto_e

    :cond_e
    move-object/from16 v18, p15

    :goto_e
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move-object/from16 v19, v2

    goto :goto_f

    :cond_f
    move-object/from16 v19, p16

    :goto_f
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move-object/from16 v20, v2

    goto :goto_10

    :cond_10
    move-object/from16 v20, p17

    :goto_10
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    move-object/from16 v22, v2

    goto :goto_11

    :cond_11
    move-object/from16 v22, p19

    :goto_11
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move-object/from16 v23, v2

    goto :goto_12

    :cond_12
    move-object/from16 v23, p20

    :goto_12
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    move-object/from16 v24, v2

    goto :goto_13

    :cond_13
    move-object/from16 v24, p21

    :goto_13
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_14

    move-object/from16 v25, v2

    goto :goto_14

    :cond_14
    move-object/from16 v25, p22

    :goto_14
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_15

    move-object/from16 v27, v2

    goto :goto_15

    :cond_15
    move-object/from16 v27, p24

    :goto_15
    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_16

    move-object/from16 v28, v2

    goto :goto_16

    :cond_16
    move-object/from16 v28, p25

    :goto_16
    const/16 v29, 0x0

    move-object/from16 v3, p0

    move/from16 v21, p18

    move/from16 v26, p23

    .line 297
    invoke-direct/range {v3 .. v29}, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;-><init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->a:Ljava/lang/String;

    .line 273
    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->b:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    .line 274
    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->c:Ljava/lang/String;

    .line 275
    iput-object p4, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->d:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    .line 276
    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->e:Ljava/lang/String;

    .line 277
    iput-object p6, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->f:Ljava/lang/String;

    .line 278
    iput-object p7, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->g:Ljava/util/Date;

    .line 279
    iput-object p8, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->h:Ljava/lang/String;

    .line 280
    iput-object p9, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->i:Ljava/lang/String;

    .line 281
    iput-object p10, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->j:Ljava/lang/String;

    .line 282
    iput-object p11, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->k:Ljava/lang/String;

    .line 283
    iput-object p12, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->l:Ljava/lang/String;

    .line 284
    iput-object p13, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->m:Ljava/lang/Float;

    .line 285
    iput-object p14, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->n:Ljava/lang/Float;

    .line 286
    iput-object p15, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->o:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 287
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->p:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 288
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->q:Ljava/lang/String;

    move/from16 p1, p18

    .line 289
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->r:Z

    move-object/from16 p1, p19

    .line 290
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->s:Ljava/lang/String;

    move-object/from16 p1, p20

    .line 291
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->t:Ljava/lang/String;

    move-object/from16 p1, p21

    .line 292
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->u:Ljava/lang/String;

    move-object/from16 p1, p22

    .line 293
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->v:Ljava/lang/String;

    move/from16 p1, p23

    .line 294
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->w:Z

    move-object/from16 p1, p24

    .line 295
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->x:Ljava/lang/String;

    move-object/from16 p1, p25

    .line 296
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->y:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;

    iget-object v1, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->a:Ljava/lang/String;

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
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->b:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->b:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->d:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->d:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->g:Ljava/util/Date;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->g:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->m:Ljava/lang/Float;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->m:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->n:Ljava/lang/Float;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->n:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->q:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->q:Ljava/lang/String;

    if-nez v3, :cond_16

    if-nez v1, :cond_15

    move v1, v0

    goto :goto_3

    :cond_15
    :goto_2
    move v1, v2

    goto :goto_3

    :cond_16
    if-nez v1, :cond_17

    goto :goto_2

    :cond_17
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_3
    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->r:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->r:Z

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->t:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->t:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->u:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->u:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->v:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->v:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->w:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->w:Z

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->x:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->x:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->y:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->y:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_20

    return v2

    :cond_20
    return v0
.end method

.method public final hashCode()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->b:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->d:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->e:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->f:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->g:Ljava/util/Date;

    if-nez v3, :cond_6

    move v3, v0

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/util/Date;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->h:Ljava/lang/String;

    if-nez v3, :cond_7

    move v3, v0

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->i:Ljava/lang/String;

    if-nez v3, :cond_8

    move v3, v0

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->j:Ljava/lang/String;

    if-nez v3, :cond_9

    move v3, v0

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->k:Ljava/lang/String;

    if-nez v3, :cond_a

    move v3, v0

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_a
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->l:Ljava/lang/String;

    if-nez v3, :cond_b

    move v3, v0

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_b
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->m:Ljava/lang/Float;

    if-nez v3, :cond_c

    move v3, v0

    goto :goto_c

    :cond_c
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_c
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->n:Ljava/lang/Float;

    if-nez v3, :cond_d

    move v3, v0

    goto :goto_d

    :cond_d
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_d
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->o:Ljava/lang/String;

    if-nez v3, :cond_e

    move v3, v0

    goto :goto_e

    :cond_e
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_e
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->p:Ljava/lang/String;

    if-nez v3, :cond_f

    move v3, v0

    goto :goto_f

    :cond_f
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_f
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->q:Ljava/lang/String;

    if-nez v3, :cond_10

    move v3, v0

    goto :goto_10

    :cond_10
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->r:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->s:Ljava/lang/String;

    if-nez v3, :cond_11

    move v3, v0

    goto :goto_11

    :cond_11
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_11
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->t:Ljava/lang/String;

    if-nez v3, :cond_12

    move v3, v0

    goto :goto_12

    :cond_12
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_12
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->u:Ljava/lang/String;

    if-nez v3, :cond_13

    move v3, v0

    goto :goto_13

    :cond_13
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_13
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->v:Ljava/lang/String;

    if-nez v3, :cond_14

    move v3, v0

    goto :goto_14

    :cond_14
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_14
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->w:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->x:Ljava/lang/String;

    if-nez v3, :cond_15

    move v3, v0

    goto :goto_15

    :cond_15
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_15
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->y:Ljava/lang/String;

    if-nez p0, :cond_16

    goto :goto_16

    :cond_16
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_16
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const-string v0, "null"

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    :goto_0
    iget-object v2, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->q:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    move-object v0, v2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CareServicesDto(id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recordType="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->b:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transactionId="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->c:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", myLVCareStatus="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->d:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storeName="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storeRetailCode="

    const-string v3, ", createdDate="

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->f:Ljava/lang/String;

    invoke-static {v2, v4, v1, v5, v3}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->g:Ljava/util/Date;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", myRepairCreatedDate="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->h:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastModifiedDate="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastMyRepairStatusChangedDate="

    const-string v3, ", currencyCode="

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->j:Ljava/lang/String;

    invoke-static {v2, v4, v1, v5, v3}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", typeOfRepair="

    const-string v3, ", totalAmount="

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->k:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->l:Ljava/lang/String;

    invoke-static {v2, v4, v1, v5, v3}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->m:Ljava/lang/Float;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalAmountUpdated="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->n:Ljava/lang/Float;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deliveryDate="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updatedDeliveryDate="

    const-string v3, ", sku="

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->p:Ljava/lang/String;

    invoke-static {v2, v4, v1, v5, v3}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", isGenericSKU="

    const-string v3, ", productName="

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->r:Z

    invoke-static {v0, v1, v3, v2, v4}, Lpq0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v0, ", productSkuUnknown="

    const-string v1, ", productFamily="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->s:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->t:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", productImage="

    const-string v1, ", isNotRepaired="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->u:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->v:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", appointementDateTime="

    const-string v1, ", origin="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->x:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->w:Z

    invoke-static {v0, v3, v1, v2, v4}, Lcj;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v0, ")"

    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->y:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
