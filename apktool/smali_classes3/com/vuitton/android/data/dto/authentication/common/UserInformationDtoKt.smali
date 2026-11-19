.class public abstract Lcom/vuitton/android/data/dto/authentication/common/UserInformationDtoKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;)Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;->g:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/UserInformation;->h:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/vuitton/android/data/dto/profile/PhoneNumberDtoMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;)Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    move-result-object p0

    :goto_0
    move-object v8, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/data/dto/authentication/common/UserInformationDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;)V

    return-object v0
.end method
