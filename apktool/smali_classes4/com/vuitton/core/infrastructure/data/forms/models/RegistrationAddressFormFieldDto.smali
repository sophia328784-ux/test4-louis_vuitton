.class public final Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto$$serializer;,
        Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010BO\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\t\u0010\nBW\u0008\u0010\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\t\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;",
        "",
        "Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;",
        "address1",
        "address2",
        "address3",
        "city",
        "postalCode",
        "state",
        "<init>",
        "(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto$Companion;


# instance fields
.field public final a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

.field public final f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->Companion:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 59
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;-><init>(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p8, p1, 0x1

    const/4 v0, 0x0

    if-nez p8, :cond_0

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    :goto_4
    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_5

    iput-object v0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    return-void

    :cond_5
    iput-object p7, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 62
    iput-object p2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 63
    iput-object p3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 64
    iput-object p4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 65
    iput-object p5, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    .line 66
    iput-object p6, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move-object p6, v0

    .line 67
    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;-><init>(Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object p1, p1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez v2, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    if-nez p0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RegistrationAddressFormFieldDto(address1="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", address2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", address3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", city="

    const-string v2, ", postalCode="

    iget-object v3, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v4, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-static {v0, v3, v1, v4, v2}, La;->z(Ljava/lang/StringBuilder;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
