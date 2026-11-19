.class public final Lcom/vuitton/android/data/dto/account/orders/ItemDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/account/orders/ItemDto$$serializer;,
        Lcom/vuitton/android/data/dto/account/orders/ItemDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u001f2\u00020\u0001:\u0002 \u001fB\u00a1\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0008\u0012\u0006\u0010\u0015\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\u0010\u0008\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0019\u0010\u001aB\u00b7\u0001\u0008\u0010\u0012\u0006\u0010\u001b\u001a\u00020\u0010\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0010\u0010\u000e\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\r\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0008\u0012\u0006\u0010\u0015\u001a\u00020\u0008\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\r\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0004\u0008\u0019\u0010\u001e\u00a8\u0006!"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/account/orders/ItemDto;",
        "",
        "",
        "identifier",
        "Lcom/vuitton/android/data/dto/account/orders/TimelineDto;",
        "timeline",
        "Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;",
        "priceWithoutVAT",
        "",
        "eligibleForExchange",
        "name",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "sku",
        "",
        "images",
        "orderPriceDto",
        "",
        "quantity",
        "color",
        "size",
        "isReturned",
        "eligibleForReturn",
        "disclaimer",
        "Lcom/vuitton/android/data/dto/account/orders/OrderCustomizationDto;",
        "customizations",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/TimelineDto;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/vuitton/android/data/dto/account/orders/TimelineDto;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/account/orders/ItemDto$Companion;

.field public static final p:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/android/data/dto/account/orders/TimelineDto;

.field public final c:Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/List;

.field public final h:Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;

.field public final i:I

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Z

.field public final m:Z

.field public final n:Ljava/lang/String;

.field public final o:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/vuitton/android/data/dto/account/orders/ItemDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/account/orders/ItemDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/ItemDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lk40;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lk40;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v4, Lk40;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Lk40;-><init>(I)V

    invoke-static {v0, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/16 v4, 0xf

    new-array v4, v4, [Lkotlin/Lazy;

    const/4 v6, 0x0

    aput-object v1, v4, v6

    const/4 v6, 0x1

    aput-object v1, v4, v6

    aput-object v1, v4, v3

    aput-object v1, v4, v5

    const/4 v3, 0x4

    aput-object v1, v4, v3

    const/4 v3, 0x5

    aput-object v1, v4, v3

    const/4 v3, 0x6

    aput-object v2, v4, v3

    const/4 v2, 0x7

    aput-object v1, v4, v2

    const/16 v2, 0x8

    aput-object v1, v4, v2

    const/16 v2, 0x9

    aput-object v1, v4, v2

    const/16 v2, 0xa

    aput-object v1, v4, v2

    const/16 v2, 0xb

    aput-object v1, v4, v2

    const/16 v2, 0xc

    aput-object v1, v4, v2

    const/16 v2, 0xd

    aput-object v1, v4, v2

    const/16 v1, 0xe

    aput-object v0, v4, v1

    sput-object v4, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->p:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/vuitton/android/data/dto/account/orders/TimelineDto;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit16 v0, p1, 0x19fd

    const/4 v1, 0x0

    const/16 v2, 0x19fd

    if-ne v2, v0, :cond_5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_0

    iput-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->b:Lcom/vuitton/android/data/dto/account/orders/TimelineDto;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->b:Lcom/vuitton/android/data/dto/account/orders/TimelineDto;

    :goto_0
    iput-object p4, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->c:Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;

    iput-boolean p5, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->d:Z

    iput-object p6, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->g:Ljava/util/List;

    iput-object p9, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->h:Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;

    iput p10, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->i:I

    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_1

    iput-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->j:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p11, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->j:Ljava/lang/String;

    :goto_1
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_2

    iput-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->k:Ljava/lang/String;

    :goto_2
    move/from16 p2, p13

    goto :goto_3

    :cond_2
    iput-object p12, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->k:Ljava/lang/String;

    goto :goto_2

    :goto_3
    iput-boolean p2, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->l:Z

    move/from16 p2, p14

    iput-boolean p2, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->m:Z

    and-int/lit16 p2, p1, 0x2000

    if-nez p2, :cond_3

    iput-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->n:Ljava/lang/String;

    goto :goto_4

    :cond_3
    move-object/from16 p2, p15

    iput-object p2, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->n:Ljava/lang/String;

    :goto_4
    and-int/lit16 p1, p1, 0x4000

    if-nez p1, :cond_4

    iput-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->o:Ljava/util/List;

    return-void

    :cond_4
    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->o:Ljava/util/List;

    return-void

    :cond_5
    sget-object p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/orders/ItemDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/account/orders/ItemDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/TimelineDto;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_1

    move-object v13, v2

    goto :goto_1

    :cond_1
    move-object/from16 v13, p10

    :goto_1
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_2

    move-object v14, v2

    goto :goto_2

    :cond_2
    move-object/from16 v14, p11

    :goto_2
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_3

    move-object/from16 v17, v2

    goto :goto_3

    :cond_3
    move-object/from16 v17, p14

    :goto_3
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_4

    move-object/from16 v18, v2

    goto :goto_4

    :cond_4
    move-object/from16 v18, p15

    :goto_4
    const/16 v19, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v15, p12

    move/from16 v16, p13

    .line 112
    invoke-direct/range {v3 .. v19}, Lcom/vuitton/android/data/dto/account/orders/ItemDto;-><init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/TimelineDto;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/TimelineDto;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->a:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->b:Lcom/vuitton/android/data/dto/account/orders/TimelineDto;

    .line 99
    iput-object p3, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->c:Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;

    .line 100
    iput-boolean p4, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->d:Z

    .line 101
    iput-object p5, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->e:Ljava/lang/String;

    .line 102
    iput-object p6, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->f:Ljava/lang/String;

    .line 103
    iput-object p7, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->g:Ljava/util/List;

    .line 104
    iput-object p8, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->h:Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;

    .line 105
    iput p9, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->i:I

    .line 106
    iput-object p10, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->j:Ljava/lang/String;

    .line 107
    iput-object p11, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->k:Ljava/lang/String;

    .line 108
    iput-boolean p12, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->l:Z

    .line 109
    iput-boolean p13, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->m:Z

    .line 110
    iput-object p14, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->n:Ljava/lang/String;

    .line 111
    iput-object p15, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/account/orders/ItemDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/account/orders/ItemDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->b:Lcom/vuitton/android/data/dto/account/orders/TimelineDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->b:Lcom/vuitton/android/data/dto/account/orders/TimelineDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->c:Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->c:Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p1, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->f:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->f:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->g:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->h:Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->h:Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->i:I

    iget v3, p1, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->i:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->l:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->l:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->m:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->m:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->o:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->o:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->b:Lcom/vuitton/android/data/dto/account/orders/TimelineDto;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/account/orders/TimelineDto;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->c:Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-boolean v0, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->d:Z

    invoke-static {v3, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->e:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->f:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->g:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->h:Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget v0, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->i:I

    invoke-static {v0, v3, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->j:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->k:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->l:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->m:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->n:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->o:Ljava/util/List;

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

    const-string v1, "ItemDto(identifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->b:Lcom/vuitton/android/data/dto/account/orders/TimelineDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", priceWithoutVAT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->c:Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eligibleForExchange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sku="

    const-string v2, ", images="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orderPriceDto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->h:Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", quantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isReturned="

    const-string v2, ", eligibleForReturn="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->k:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->l:Z

    invoke-static {v3, v1, v2, v0, v4}, Lpq0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v1, ", disclaimer="

    const-string v2, ", customizations="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->n:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->m:Z

    invoke-static {v1, v3, v2, v0, v4}, Lcj;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/orders/ItemDto;->o:Ljava/util/List;

    invoke-static {v0, p0, v1}, La;->o(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
