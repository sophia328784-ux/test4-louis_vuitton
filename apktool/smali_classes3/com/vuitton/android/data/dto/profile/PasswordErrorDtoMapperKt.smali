.class public abstract Lcom/vuitton/android/data/dto/profile/PasswordErrorDtoMapperKt;
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
.method public static final a(Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException$UpdatePasswordFailed;
    .locals 1

    sget-object v0, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;->INVALID_OLD_PASSWORD:Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException$UpdatePasswordFailed;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/updatepassword/PasswordUpdateErrorReason;->INVALID_OLD_PASSWORD:Lcom/vuitton/foundation/model/domain/model/account/updatepassword/PasswordUpdateErrorReason;

    invoke-direct {p0, v0}, Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException$UpdatePasswordFailed;-><init>(Lcom/vuitton/foundation/model/domain/model/account/updatepassword/PasswordUpdateErrorReason;)V

    return-object p0

    :cond_0
    sget-object v0, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;->INVALID_NEW_PASSWORD:Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException$UpdatePasswordFailed;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/updatepassword/PasswordUpdateErrorReason;->INVALID_NEW_PASSWORD:Lcom/vuitton/foundation/model/domain/model/account/updatepassword/PasswordUpdateErrorReason;

    invoke-direct {p0, v0}, Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException$UpdatePasswordFailed;-><init>(Lcom/vuitton/foundation/model/domain/model/account/updatepassword/PasswordUpdateErrorReason;)V

    return-object p0

    :cond_1
    sget-object v0, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;->ERROR_INVALID_REPEATED_PASSWORD:Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/profile/PasswordUpdateErrorCode;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException$UpdatePasswordFailed;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/updatepassword/PasswordUpdateErrorReason;->INVALID_REPEATED_PASSWORD:Lcom/vuitton/foundation/model/domain/model/account/updatepassword/PasswordUpdateErrorReason;

    invoke-direct {p0, v0}, Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException$UpdatePasswordFailed;-><init>(Lcom/vuitton/foundation/model/domain/model/account/updatepassword/PasswordUpdateErrorReason;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException$UpdatePasswordFailed;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/account/updatepassword/PasswordUpdateErrorReason;->UNKNOWN:Lcom/vuitton/foundation/model/domain/model/account/updatepassword/PasswordUpdateErrorReason;

    invoke-direct {p0, v0}, Lcom/vuitton/foundation/model/domain/model/account/updatepassword/UpdatePasswordException$UpdatePasswordFailed;-><init>(Lcom/vuitton/foundation/model/domain/model/account/updatepassword/PasswordUpdateErrorReason;)V

    return-object p0
.end method
