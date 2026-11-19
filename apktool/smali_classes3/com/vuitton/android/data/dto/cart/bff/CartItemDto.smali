.class public final Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$$serializer;,
        Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 )2\u00020\u0001:\u0002*)B\u0085\u0002\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\u0010\u0008\u0002\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\r\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\r\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020\r\u00a2\u0006\u0004\u0008#\u0010$B\u00f3\u0001\u0008\u0010\u0012\u0006\u0010%\u001a\u00020\u0014\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010\u0012\u0006\u0010\u0013\u001a\u00020\r\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u001f\u0012\u0006\u0010!\u001a\u00020\r\u0012\u0006\u0010\"\u001a\u00020\r\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010&\u00a2\u0006\u0004\u0008#\u0010(\u00a8\u0006+"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;",
        "",
        "",
        "identifier",
        "Lcom/vuitton/foundation/model/domain/model/product/ProductId;",
        "productId",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "skuIdentifier",
        "name",
        "description",
        "color",
        "size",
        "material",
        "",
        "isExclusive",
        "mainImage",
        "",
        "Lcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;",
        "images",
        "isAvailable",
        "",
        "quantity",
        "Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;",
        "priceInformation",
        "isBackOrder",
        "isPreOrder",
        "Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;",
        "disclaimerDto",
        "commercialTag",
        "Lcom/vuitton/android/data/dto/cart/bff/BundleDto;",
        "bundleDto",
        "Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;",
        "customization",
        "isQuantityEditable",
        "isWishlistEligible",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;ZILcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/BundleDto;Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;ZILcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/BundleDto;Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;ZZLkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$Companion;

.field public static final w:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Z

.field public final j:Ljava/lang/String;

.field public final k:Ljava/util/List;

.field public final l:Z

.field public final m:I

.field public final n:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

.field public final o:Ljava/lang/Boolean;

.field public final p:Ljava/lang/Boolean;

.field public final q:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

.field public final r:Ljava/lang/String;

.field public final s:Lcom/vuitton/android/data/dto/cart/bff/BundleDto;

.field public final t:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;

.field public final u:Z

.field public final v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->Companion:Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lfj;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lfj;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/16 v2, 0x16

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const/4 v4, 0x2

    aput-object v1, v2, v4

    const/4 v4, 0x3

    aput-object v1, v2, v4

    const/4 v4, 0x4

    aput-object v1, v2, v4

    const/4 v4, 0x5

    aput-object v1, v2, v4

    const/4 v4, 0x6

    aput-object v1, v2, v4

    const/4 v4, 0x7

    aput-object v1, v2, v4

    aput-object v1, v2, v3

    const/16 v3, 0x9

    aput-object v1, v2, v3

    const/16 v3, 0xa

    aput-object v0, v2, v3

    const/16 v0, 0xb

    aput-object v1, v2, v0

    const/16 v0, 0xc

    aput-object v1, v2, v0

    const/16 v0, 0xd

    aput-object v1, v2, v0

    const/16 v0, 0xe

    aput-object v1, v2, v0

    const/16 v0, 0xf

    aput-object v1, v2, v0

    const/16 v0, 0x10

    aput-object v1, v2, v0

    const/16 v0, 0x11

    aput-object v1, v2, v0

    const/16 v0, 0x12

    aput-object v1, v2, v0

    const/16 v0, 0x13

    aput-object v1, v2, v0

    const/16 v0, 0x14

    aput-object v1, v2, v0

    const/16 v0, 0x15

    aput-object v1, v2, v0

    sput-object v2, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->w:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;ZILcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/BundleDto;Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;ZZLkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit16 v0, p1, 0x3000

    const/4 v1, 0x0

    const/16 v2, 0x3000

    if-ne v2, v0, :cond_14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->a:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->b:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->c:Ljava/lang/String;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->d:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->d:Ljava/lang/String;

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    iput-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->e:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->e:Ljava/lang/String;

    :goto_4
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_5

    iput-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->f:Ljava/lang/String;

    goto :goto_5

    :cond_5
    iput-object p7, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->f:Ljava/lang/String;

    :goto_5
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_6

    iput-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->g:Ljava/lang/String;

    goto :goto_6

    :cond_6
    iput-object p8, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->g:Ljava/lang/String;

    :goto_6
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_7

    iput-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->h:Ljava/lang/String;

    goto :goto_7

    :cond_7
    iput-object p9, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->h:Ljava/lang/String;

    :goto_7
    and-int/lit16 p2, p1, 0x100

    const/4 p3, 0x0

    if-nez p2, :cond_8

    iput-boolean p3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->i:Z

    goto :goto_8

    :cond_8
    iput-boolean p10, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->i:Z

    :goto_8
    and-int/lit16 p2, p1, 0x200

    if-nez p2, :cond_9

    iput-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->j:Ljava/lang/String;

    goto :goto_9

    :cond_9
    iput-object p11, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->j:Ljava/lang/String;

    :goto_9
    and-int/lit16 p2, p1, 0x400

    if-nez p2, :cond_a

    iput-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->k:Ljava/util/List;

    goto :goto_a

    :cond_a
    iput-object p12, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->k:Ljava/util/List;

    :goto_a
    and-int/lit16 p2, p1, 0x800

    if-nez p2, :cond_b

    iput-boolean p3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->l:Z

    :goto_b
    move/from16 p2, p14

    goto :goto_c

    :cond_b
    move/from16 p2, p13

    iput-boolean p2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->l:Z

    goto :goto_b

    :goto_c
    iput p2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->m:I

    move-object/from16 p2, p15

    iput-object p2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->n:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

    and-int/lit16 p2, p1, 0x4000

    if-nez p2, :cond_c

    iput-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->o:Ljava/lang/Boolean;

    goto :goto_d

    :cond_c
    move-object/from16 p2, p16

    iput-object p2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->o:Ljava/lang/Boolean;

    :goto_d
    const p2, 0x8000

    and-int/2addr p2, p1

    if-nez p2, :cond_d

    iput-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->p:Ljava/lang/Boolean;

    goto :goto_e

    :cond_d
    move-object/from16 p2, p17

    iput-object p2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->p:Ljava/lang/Boolean;

    :goto_e
    const/high16 p2, 0x10000

    and-int/2addr p2, p1

    if-nez p2, :cond_e

    iput-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->q:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    goto :goto_f

    :cond_e
    move-object/from16 p2, p18

    iput-object p2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->q:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    :goto_f
    const/high16 p2, 0x20000

    and-int/2addr p2, p1

    if-nez p2, :cond_f

    iput-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->r:Ljava/lang/String;

    goto :goto_10

    :cond_f
    move-object/from16 p2, p19

    iput-object p2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->r:Ljava/lang/String;

    :goto_10
    const/high16 p2, 0x40000

    and-int/2addr p2, p1

    if-nez p2, :cond_10

    iput-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->s:Lcom/vuitton/android/data/dto/cart/bff/BundleDto;

    goto :goto_11

    :cond_10
    move-object/from16 p2, p20

    iput-object p2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->s:Lcom/vuitton/android/data/dto/cart/bff/BundleDto;

    :goto_11
    const/high16 p2, 0x80000

    and-int/2addr p2, p1

    if-nez p2, :cond_11

    iput-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->t:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;

    goto :goto_12

    :cond_11
    move-object/from16 p2, p21

    iput-object p2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->t:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;

    :goto_12
    const/high16 p2, 0x100000

    and-int/2addr p2, p1

    if-nez p2, :cond_12

    iput-boolean p3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->u:Z

    goto :goto_13

    :cond_12
    move/from16 p2, p22

    iput-boolean p2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->u:Z

    :goto_13
    const/high16 p2, 0x200000

    and-int/2addr p1, p2

    if-nez p1, :cond_13

    const/4 p1, 0x1

    :goto_14
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->v:Z

    return-void

    :cond_13
    move/from16 p1, p23

    goto :goto_14

    :cond_14
    sget-object p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;ZILcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/BundleDto;Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 27

    move/from16 v0, p23

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

    const/4 v3, 0x0

    if-eqz v1, :cond_8

    move v12, v3

    goto :goto_8

    :cond_8
    move/from16 v12, p9

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

    move v15, v3

    goto :goto_b

    :cond_b
    move/from16 v15, p12

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move-object/from16 v18, v2

    goto :goto_c

    :cond_c
    move-object/from16 v18, p15

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move-object/from16 v19, v2

    goto :goto_d

    :cond_d
    move-object/from16 v19, p16

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move-object/from16 v20, v2

    goto :goto_e

    :cond_e
    move-object/from16 v20, p17

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move-object/from16 v21, v2

    goto :goto_f

    :cond_f
    move-object/from16 v21, p18

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move-object/from16 v22, v2

    goto :goto_10

    :cond_10
    move-object/from16 v22, p19

    :goto_10
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    move-object/from16 v23, v2

    goto :goto_11

    :cond_11
    move-object/from16 v23, p20

    :goto_11
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move/from16 v24, v3

    goto :goto_12

    :cond_12
    move/from16 v24, p21

    :goto_12
    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    move/from16 v25, v0

    goto :goto_13

    :cond_13
    move/from16 v25, p22

    :goto_13
    const/16 v26, 0x0

    move-object/from16 v3, p0

    move/from16 v16, p13

    move-object/from16 v17, p14

    .line 260
    invoke-direct/range {v3 .. v26}, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;ZILcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/BundleDto;Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;ZILcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/BundleDto;Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 236
    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->a:Ljava/lang/String;

    .line 239
    iput-object p2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->b:Ljava/lang/String;

    .line 240
    iput-object p3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->c:Ljava/lang/String;

    .line 241
    iput-object p4, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->d:Ljava/lang/String;

    .line 242
    iput-object p5, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->e:Ljava/lang/String;

    .line 243
    iput-object p6, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->f:Ljava/lang/String;

    .line 244
    iput-object p7, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->g:Ljava/lang/String;

    .line 245
    iput-object p8, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->h:Ljava/lang/String;

    .line 246
    iput-boolean p9, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->i:Z

    .line 247
    iput-object p10, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->j:Ljava/lang/String;

    .line 248
    iput-object p11, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->k:Ljava/util/List;

    .line 249
    iput-boolean p12, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->l:Z

    .line 250
    iput p13, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->m:I

    .line 251
    iput-object p14, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->n:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

    .line 252
    iput-object p15, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->o:Ljava/lang/Boolean;

    move-object/from16 p1, p16

    .line 253
    iput-object p1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->p:Ljava/lang/Boolean;

    move-object/from16 p1, p17

    .line 254
    iput-object p1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->q:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    move-object/from16 p1, p18

    .line 255
    iput-object p1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->r:Ljava/lang/String;

    move-object/from16 p1, p19

    .line 256
    iput-object p1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->s:Lcom/vuitton/android/data/dto/cart/bff/BundleDto;

    move-object/from16 p1, p20

    .line 257
    iput-object p1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->t:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;

    move/from16 p1, p21

    .line 258
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->u:Z

    move/from16 p1, p22

    .line 259
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->v:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->b:Ljava/lang/String;

    if-nez v3, :cond_4

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->c:Ljava/lang/String;

    if-nez v3, :cond_8

    if-nez v1, :cond_7

    move v1, v0

    goto :goto_3

    :cond_7
    :goto_2
    move v1, v2

    goto :goto_3

    :cond_8
    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_3
    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->i:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->i:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->k:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->k:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->l:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->l:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->m:I

    iget v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->m:I

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->n:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->n:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->o:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->o:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->p:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->p:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->q:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->q:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->r:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->r:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->s:Lcom/vuitton/android/data/dto/cart/bff/BundleDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->s:Lcom/vuitton/android/data/dto/cart/bff/BundleDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->t:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->t:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->u:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->u:Z

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->v:Z

    iget-boolean p1, p1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->v:Z

    if-eq p0, p1, :cond_1d

    return v2

    :cond_1d
    return v0
.end method

.method public final hashCode()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->d:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->e:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->f:Ljava/lang/String;

    if-nez v3, :cond_5

    move v3, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->g:Ljava/lang/String;

    if-nez v3, :cond_6

    move v3, v0

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->h:Ljava/lang/String;

    if-nez v3, :cond_7

    move v3, v0

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_7
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->i:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->j:Ljava/lang/String;

    if-nez v3, :cond_8

    move v3, v0

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->k:Ljava/util/List;

    if-nez v3, :cond_9

    move v3, v0

    goto :goto_9

    :cond_9
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_9
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->l:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->m:I

    invoke-static {v3, v1, v2}, Ltr;->b(III)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->n:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->o:Ljava/lang/Boolean;

    if-nez v1, :cond_a

    move v1, v0

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->p:Ljava/lang/Boolean;

    if-nez v1, :cond_b

    move v1, v0

    goto :goto_b

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->q:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    if-nez v1, :cond_c

    move v1, v0

    goto :goto_c

    :cond_c
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->r:Ljava/lang/String;

    if-nez v1, :cond_d

    move v1, v0

    goto :goto_d

    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_d
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->s:Lcom/vuitton/android/data/dto/cart/bff/BundleDto;

    if-nez v1, :cond_e

    move v1, v0

    goto :goto_e

    :cond_e
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/cart/bff/BundleDto;->hashCode()I

    move-result v1

    :goto_e
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->t:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;

    if-nez v1, :cond_f

    goto :goto_f

    :cond_f
    iget-object v0, v1, Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;->a:Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;->hashCode()I

    move-result v0

    :goto_f
    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-boolean v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->u:Z

    invoke-static {v3, v2, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->v:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const-string v0, "null"

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    :goto_0
    iget-object v2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->c:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    move-object v0, v2

    :goto_1
    const-string v2, ", productId="

    const-string v3, ", skuIdentifier="

    const-string v4, "CartItemDto(identifier="

    iget-object v5, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->a:Ljava/lang/String;

    invoke-static {v4, v5, v2, v1, v3}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    const-string v3, ", description="

    iget-object v4, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->d:Ljava/lang/String;

    invoke-static {v1, v0, v2, v4, v3}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", color="

    const-string v2, ", size="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->f:Ljava/lang/String;

    invoke-static {v1, v3, v0, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", material="

    const-string v2, ", isExclusive="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->h:Ljava/lang/String;

    invoke-static {v1, v3, v0, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", mainImage="

    const-string v2, ", images="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->j:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->i:Z

    invoke-static {v0, v3, v2, v1, v4}, Lcj;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->k:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isAvailable="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->l:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", quantity="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->m:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", priceInformation="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->n:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isBackOrder="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isPreOrder="

    const-string v2, ", disclaimerDto="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->o:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->p:Ljava/lang/Boolean;

    invoke-static {v1, v3, v0, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->q:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", commercialTag="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->r:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bundleDto="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->s:Lcom/vuitton/android/data/dto/cart/bff/BundleDto;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", customization="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->t:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isQuantityEditable="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isWishlistEligible="

    const-string v2, ")"

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->u:Z

    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->v:Z

    invoke-static {v1, v3, v0, p0, v2}, Lpq0;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
