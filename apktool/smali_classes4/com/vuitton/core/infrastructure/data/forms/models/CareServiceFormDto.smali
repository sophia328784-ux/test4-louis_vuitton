.class public final Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto$$serializer;,
        Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nBC\u0008\u0010\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\t\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;",
        "",
        "",
        "identifier",
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;",
        "email",
        "postalCode",
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;",
        "phoneNumber",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->Companion:Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p6, p1, 0xb

    const/4 v0, 0x0

    const/16 v1, 0xb

    if-ne v1, p6, :cond_1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_0
    iput-object p5, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    return-void

    :cond_1
    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->a:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 39
    iput-object p3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 40
    iput-object p4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 41
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;-><init>(Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    iget-object p1, p1, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v2, v0, v1}, La;->b(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;II)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CareServiceFormDto(identifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", postalCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/CareServiceFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
