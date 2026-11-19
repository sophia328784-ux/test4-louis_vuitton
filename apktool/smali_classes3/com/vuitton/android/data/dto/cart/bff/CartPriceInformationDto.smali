.class public final Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto$$serializer;,
        Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tBM\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0008\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;",
        "",
        "Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;",
        "totalAmount",
        "taxAmount",
        "shippingAmount",
        "unitAmount",
        "totalTaxIncludedAmount",
        "<init>",
        "(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto$Companion;


# instance fields
.field public final a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

.field public final b:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

.field public final c:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

.field public final d:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

.field public final e:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->Companion:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p7, p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne v1, p7, :cond_3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->b:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->c:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->c:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    :goto_0
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->d:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    goto :goto_1

    :cond_1
    iput-object p5, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->d:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    :goto_1
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_2

    iput-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->e:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    return-void

    :cond_2
    iput-object p6, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->e:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    return-void

    :cond_3
    sget-object p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    .line 53
    iput-object p2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->b:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    .line 54
    iput-object p3, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->c:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    .line 55
    iput-object p4, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->d:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    .line 56
    iput-object p5, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->e:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    move-object p5, v0

    .line 57
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;-><init>(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->b:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->b:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->c:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->c:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->d:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->d:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->e:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->e:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->b:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->c:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->d:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->e:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartPriceInformationDto(totalAmount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", taxAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->b:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shippingAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->c:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unitAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->d:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalTaxIncludedAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;->e:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
