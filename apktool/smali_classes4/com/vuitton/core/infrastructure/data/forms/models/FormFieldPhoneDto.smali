.class public final Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;,
        Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bBQ\u0008\u0010\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\n\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;",
        "",
        "",
        "minCount",
        "maxCount",
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;",
        "phoneNumberType",
        "phoneNumberCountry",
        "phoneNumber",
        "order",
        "<init>",
        "(IILcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;I)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IIILcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;ILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "$serializer",
        "forms"
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
.field public static final Companion:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$Companion;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->Companion:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IIILcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;ILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p1, 0x3f

    const/16 v0, 0x3f

    if-ne v0, p8, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->a:I

    iput p3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->b:I

    iput-object p4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iput-object p5, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iput-object p6, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iput p7, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->f:I

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(IILcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;I)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->a:I

    .line 35
    iput p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->b:I

    .line 36
    iput-object p3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 37
    iput-object p4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 38
    iput-object p5, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 39
    iput p6, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->f:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    iget v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->a:I

    iget v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->b:I

    iget v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->f:I

    iget p1, p1, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->f:I

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->b:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v2, v0, v1}, La;->b(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;II)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v2, v0, v1}, La;->b(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;II)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v2, v0, v1}, La;->b(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;II)I

    move-result v0

    iget p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", maxCount="

    const-string v1, ", phoneNumberType="

    iget v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->a:I

    iget v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->b:I

    const-string v4, "FormFieldPhoneDto(minCount="

    invoke-static {v2, v3, v4, v0, v1}, Lfc;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phoneNumberCountry="

    const-string v2, ", phoneNumber="

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v0, v3, v1, v4, v2}, La;->z(Ljava/lang/StringBuilder;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->f:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
