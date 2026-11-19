.class public final Lcom/vuitton/android/data/dto/cart/bff/CartDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/cart/bff/CartDto$$serializer;,
        Lcom/vuitton/android/data/dto/cart/bff/CartDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00192\u00020\u0001:\u0002\u001a\u0019Bq\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0013\u0010\u0014By\u0008\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0004\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0018\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/cart/bff/CartDto;",
        "",
        "",
        "cartIdentifier",
        "",
        "itemCount",
        "",
        "Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;",
        "items",
        "Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;",
        "priceInformation",
        "giftMessage",
        "",
        "blankCard",
        "Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;",
        "shoppingBag",
        "Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;",
        "samples",
        "displayTax",
        "<init>",
        "(Ljava/lang/String;ILjava/util/List;Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;Ljava/lang/Boolean;)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;ILjava/util/List;Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/cart/bff/CartDto$Companion;

.field public static final j:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/util/List;

.field public final d:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Boolean;

.field public final g:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;

.field public final h:Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;

.field public final i:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/data/dto/cart/bff/CartDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/cart/bff/CartDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->Companion:Lcom/vuitton/android/data/dto/cart/bff/CartDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lfj;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lfj;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/16 v2, 0x9

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const/4 v4, 0x2

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v0, 0x8

    aput-object v1, v2, v0

    sput-object v2, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->j:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILjava/util/List;Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p11, p1, 0x42

    const/4 v0, 0x0

    const/16 v1, 0x42

    if-ne v1, p11, :cond_7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p11, p1, 0x1

    if-nez p11, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->a:Ljava/lang/String;

    :goto_0
    iput p3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->b:I

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->c:Ljava/util/List;

    goto :goto_1

    :cond_1
    iput-object p4, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->c:Ljava/util/List;

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->d:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

    goto :goto_2

    :cond_2
    iput-object p5, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->d:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

    :goto_2
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->e:Ljava/lang/String;

    goto :goto_3

    :cond_3
    iput-object p6, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->e:Ljava/lang/String;

    :goto_3
    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_4

    iput-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->f:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    iput-object p7, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->f:Ljava/lang/Boolean;

    :goto_4
    iput-object p8, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->g:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;

    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_5

    iput-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->h:Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;

    goto :goto_5

    :cond_5
    iput-object p9, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->h:Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;

    :goto_5
    and-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_6

    iput-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->i:Ljava/lang/Boolean;

    return-void

    :cond_6
    iput-object p10, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->i:Ljava/lang/Boolean;

    return-void

    :cond_7
    sget-object p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/CartDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/cart/bff/CartDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/List;Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;",
            ">;",
            "Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;",
            "Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->a:Ljava/lang/String;

    .line 90
    iput p2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->b:I

    .line 91
    iput-object p3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->c:Ljava/util/List;

    .line 92
    iput-object p4, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->d:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

    .line 93
    iput-object p5, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->e:Ljava/lang/String;

    .line 94
    iput-object p6, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->f:Ljava/lang/Boolean;

    .line 95
    iput-object p7, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->g:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;

    .line 96
    iput-object p8, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->h:Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;

    .line 97
    iput-object p9, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/util/List;Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_3

    move-object p5, v0

    :cond_3
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_4

    move-object p6, v0

    :cond_4
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_5

    move-object p8, v0

    :cond_5
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_6

    move-object p9, v0

    .line 98
    :cond_6
    invoke-direct/range {p0 .. p9}, Lcom/vuitton/android/data/dto/cart/bff/CartDto;-><init>(Ljava/lang/String;ILjava/util/List;Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;Ljava/lang/String;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/cart/bff/CartDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/cart/bff/CartDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->b:I

    iget v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->d:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->d:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->f:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->f:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->g:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->g:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->h:Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->h:Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->i:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->i:Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->b:I

    invoke-static {v3, v1, v2}, Ltr;->b(III)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->c:Ljava/util/List;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->d:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->e:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->f:Ljava/lang/Boolean;

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->g:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->h:Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->i:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v3, v0

    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", itemCount="

    const-string v1, ", items="

    iget v2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->b:I

    const-string v3, "CartDto(cartIdentifier="

    iget-object v4, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->a:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0, v1}, Lfc;->r(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", priceInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->d:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", giftMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", blankCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->f:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shoppingBag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->g:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", samples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->h:Lcom/vuitton/android/data/dto/cart/bff/CartSampleDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayTax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartDto;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
