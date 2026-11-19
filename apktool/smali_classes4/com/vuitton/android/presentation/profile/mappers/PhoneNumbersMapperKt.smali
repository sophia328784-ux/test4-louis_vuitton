.class public abstract Lcom/vuitton/android/presentation/profile/mappers/PhoneNumbersMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/profile/mappers/PhoneNumbersMapperKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;)Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;->b:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    sget-object v2, Lcom/vuitton/android/presentation/profile/mappers/PhoneNumbersMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v2, p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    const/4 v2, 0x3

    if-eq p0, v2, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/profile/models/PhoneNumberTypeUiModel;->UNKNOWN:Lcom/vuitton/android/presentation/profile/models/PhoneNumberTypeUiModel;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/vuitton/android/presentation/profile/models/PhoneNumberTypeUiModel;->WORK:Lcom/vuitton/android/presentation/profile/models/PhoneNumberTypeUiModel;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/vuitton/android/presentation/profile/models/PhoneNumberTypeUiModel;->HOME:Lcom/vuitton/android/presentation/profile/models/PhoneNumberTypeUiModel;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/vuitton/android/presentation/profile/models/PhoneNumberTypeUiModel;->MOBILE:Lcom/vuitton/android/presentation/profile/models/PhoneNumberTypeUiModel;

    :goto_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->d()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->p(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v3, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->c(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v2, v0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;

    invoke-direct {v3, v0, p0, v1, v2}, Lcom/vuitton/android/presentation/profile/models/PhoneNumberUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/profile/models/PhoneNumberTypeUiModel;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method
