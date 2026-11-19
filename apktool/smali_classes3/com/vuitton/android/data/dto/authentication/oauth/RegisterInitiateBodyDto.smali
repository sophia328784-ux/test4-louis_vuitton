.class public final Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$$serializer;,
        Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$Companion;,
        Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u0000 \u00112\u00020\u0001:\u0003\u0012\u0013\u0011B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bBC\u0008\u0010\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\n\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;",
        "",
        "Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;",
        "userInformation",
        "Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;",
        "address",
        "Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;",
        "credentials",
        "Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;",
        "consents",
        "<init>",
        "(Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/android/data/dto/authentication/common/UserInformationDto;Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "CredentialsDto",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$Companion;


# instance fields
.field public final a:Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;

.field public final b:Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;

.field public final c:Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;

.field public final d:Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->Companion:Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/android/data/dto/authentication/common/UserInformationDto;Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p6, p1, 0xd

    const/4 v0, 0x0

    const/16 v1, 0xd

    if-ne v1, p6, :cond_1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->a:Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->b:Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->b:Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;

    :goto_0
    iput-object p4, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->c:Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;

    iput-object p5, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->d:Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;

    return-void

    :cond_1
    sget-object p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$$serializer;->a:Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->a:Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;

    .line 38
    iput-object p2, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->b:Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;

    .line 39
    iput-object p3, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->c:Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;

    .line 40
    iput-object p4, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->d:Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    .line 41
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;-><init>(Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->a:Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->a:Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->b:Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->b:Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->c:Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->c:Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->d:Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->d:Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->a:Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->b:Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->c:Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;

    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->d:Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RegisterInitiateBodyDto(userInformation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->a:Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->b:Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", credentials="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->c:Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", consents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;->d:Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
