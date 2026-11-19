.class public abstract Lcom/vuitton/android/data/dto/authentication/oauth/mapper/RegisterInitiateMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;)Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->a:Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/authentication/common/UserInformationDtoKt;->a(Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;)Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;

    move-result-object v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->b:Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;

    iget-object v4, v2, Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;->a:Ljava/lang/String;

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;->b:Ljava/lang/String;

    iget-object v6, v2, Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;->c:Ljava/lang/String;

    iget-object v7, v2, Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;->d:Ljava/lang/String;

    iget-object v8, v2, Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;->e:Ljava/lang/String;

    iget-object v9, v2, Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;->f:Ljava/lang/String;

    invoke-direct/range {v3 .. v9}, Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->c:Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;

    new-instance v4, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;

    iget-object v5, v2, Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v2}, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/RegisterInitiateBody;->d:Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;

    invoke-static {p0}, Lcom/vuitton/android/data/dto/profile/UserConsentsMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/authentication/RegisterConsents;)Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;

    move-result-object p0

    invoke-direct {v0, v1, v3, v4, p0}, Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;-><init>(Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;Lcom/vuitton/android/data/dto/authentication/common/RegistrationAddressDto;Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto$CredentialsDto;Lcom/vuitton/android/data/dto/authentication/common/RegisterConsentsDto;)V

    return-object v0
.end method
