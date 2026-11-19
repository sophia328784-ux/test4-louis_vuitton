.class public final Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto$$serializer;,
        Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bBK\u0008\u0010\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\n\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;",
        "",
        "",
        "title",
        "description",
        "",
        "priceRaw",
        "disclaimer",
        "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;",
        "additionalInformation",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->Companion:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p7, p1, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-ne v1, p7, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->b:Ljava/lang/String;

    iput p4, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->c:I

    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p5, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->d:Ljava/lang/String;

    :goto_0
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->e:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;

    return-void

    :cond_1
    iput-object p6, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->e:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;

    return-void

    :cond_2
    sget-object p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->a:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->b:Ljava/lang/String;

    .line 47
    iput p3, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->c:I

    .line 48
    iput-object p4, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->d:Ljava/lang/String;

    .line 49
    iput-object p5, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->e:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p4, v0

    :cond_0
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1

    move-object p5, v0

    .line 50
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->c:I

    iget v3, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->e:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->e:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->c:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->d:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->e:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", description="

    const-string v1, ", priceRaw="

    const-string v2, "ShippingMethodDto(title="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", disclaimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", additionalInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodDto;->e:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/ShippingMethodAdditionalInformationDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
