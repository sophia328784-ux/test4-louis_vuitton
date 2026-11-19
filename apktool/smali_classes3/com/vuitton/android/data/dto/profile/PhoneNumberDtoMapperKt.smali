.class public abstract Lcom/vuitton/android/data/dto/profile/PhoneNumberDtoMapperKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;)Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;->b:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->MOBILE:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->HOME:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->WORK:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->UNKNOWN:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/vuitton/android/data/dto/profile/PhoneNumberDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
