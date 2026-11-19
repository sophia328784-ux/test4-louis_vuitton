.class public final Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto$$serializer;,
        Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00172\u00020\u0001:\u0002\u0018\u0017B_\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012Bs\u0008\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0006\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "identifier",
        "",
        "name",
        "",
        "quantity",
        "Lcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;",
        "image",
        "Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;",
        "priceInfo",
        "color",
        "size",
        "material",
        "Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;",
        "customization",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;ILcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Lcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;

.field public final e:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->Companion:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;ILcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p1, 0x1f

    const/4 p12, 0x0

    const/16 v0, 0x1f

    if-ne v0, p11, :cond_4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->b:Ljava/lang/String;

    iput p4, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->c:I

    iput-object p5, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->d:Lcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;

    iput-object p6, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->e:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    and-int/lit8 p2, p1, 0x20

    if-nez p2, :cond_0

    iput-object p12, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p7, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->f:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_1

    iput-object p12, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->g:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p8, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->g:Ljava/lang/String;

    :goto_1
    and-int/lit16 p2, p1, 0x80

    if-nez p2, :cond_2

    iput-object p12, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->h:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p9, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->h:Ljava/lang/String;

    :goto_2
    and-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_3

    iput-object p12, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->i:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;

    return-void

    :cond_3
    iput-object p10, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->i:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;

    return-void

    :cond_4
    sget-object p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw p12
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x20

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p6, v0

    :cond_0
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_1

    move-object p7, v0

    :cond_1
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_2

    move-object p8, v0

    :cond_2
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_3

    move-object p9, v0

    :cond_3
    const/4 p10, 0x0

    .line 78
    invoke-direct/range {p0 .. p10}, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->a:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->b:Ljava/lang/String;

    .line 71
    iput p3, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->c:I

    .line 72
    iput-object p4, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->d:Lcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;

    .line 73
    iput-object p5, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->e:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    .line 74
    iput-object p6, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->f:Ljava/lang/String;

    .line 75
    iput-object p7, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->g:Ljava/lang/String;

    .line 76
    iput-object p8, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->h:Ljava/lang/String;

    .line 77
    iput-object p9, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->i:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;

    iget-object v1, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->c:I

    iget v3, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->d:Lcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->d:Lcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->e:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->e:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->i:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->i:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->c:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->d:Lcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->e:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->f:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->g:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->h:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->i:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;->a:Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/pdp/CustomizationConfigurationDto;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v2, v0

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    const-string v0, ", name="

    const-string v1, ", quantity="

    const-string v2, "CheckoutItemDto(identifier="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->d:Lcom/vuitton/android/data/dto/cart/bff/ImageUrlDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", priceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->e:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", material="

    const-string v2, ", customization="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->h:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto;->i:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
