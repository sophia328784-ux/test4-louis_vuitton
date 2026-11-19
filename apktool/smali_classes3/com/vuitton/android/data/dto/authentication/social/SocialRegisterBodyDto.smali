.class public final Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto$$serializer;,
        Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013B=\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rBW\u0008\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u000c\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;",
        "",
        "Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;",
        "userInformation",
        "",
        "identityToken",
        "authorizationCode",
        "rawNonce",
        "Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;",
        "address",
        "Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;",
        "consents",
        "<init>",
        "(Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/android/data/dto/authentication/common/UserInformationDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto$Companion;


# instance fields
.field public final a:Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;

.field public final f:Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->Companion:Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/android/data/dto/authentication/common/UserInformationDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p8, p1, 0x2b

    const/4 v0, 0x0

    const/16 v1, 0x2b

    if-ne v1, p8, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->a:Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->b:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_0

    const-string p2, " "

    iput-object p2, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->c:Ljava/lang/String;

    :goto_0
    iput-object p5, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->d:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->e:Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;

    goto :goto_1

    :cond_1
    iput-object p6, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->e:Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;

    :goto_1
    iput-object p7, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->f:Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;

    return-void

    :cond_2
    sget-object p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto$$serializer;->a:Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->a:Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;

    .line 51
    iput-object p2, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->b:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->c:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->d:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->e:Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;

    .line 55
    iput-object p6, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->f:Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    .line 56
    const-string p3, " "

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 57
    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;-><init>(Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->a:Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->a:Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->e:Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->e:Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->f:Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->f:Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->a:Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->e:Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->f:Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SocialRegisterBodyDto(userInformation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->a:Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", identityToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", authorizationCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rawNonce="

    const-string v2, ", address="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->e:Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", consents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;->f:Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
