.class public final Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto$$serializer;,
        Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB9\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0008\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;",
        "",
        "Lcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;",
        "gifting",
        "Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;",
        "shoppingBag",
        "Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;",
        "packaging",
        "<init>",
        "(Lcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto$Companion;


# instance fields
.field public final a:Lcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;

.field public final b:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;

.field public final c:Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->Companion:Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p1, 0x7

    const/4 v0, 0x7

    if-ne v0, p5, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->a:Lcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->b:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->c:Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->a:Lcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;

    .line 28
    iput-object p2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->b:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;

    .line 29
    iput-object p3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->c:Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->a:Lcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->a:Lcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->b:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->b:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->c:Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->c:Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->a:Lcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->b:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;

    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->c:Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartContributionDto(gifting="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->a:Lcom/vuitton/android/data/dto/cart/bff/GiftingContributionDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shoppingBag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->b:Lcom/vuitton/android/data/dto/cart/bff/ShoppingBagContributionDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", packaging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartContributionDto;->c:Lcom/vuitton/android/data/dto/cart/bff/PackagingContributionDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
