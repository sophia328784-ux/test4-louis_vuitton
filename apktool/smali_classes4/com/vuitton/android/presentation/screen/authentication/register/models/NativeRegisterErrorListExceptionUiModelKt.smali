.class public abstract Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterErrorListExceptionUiModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterErrorListUiModelException;
    .locals 10

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterErrorListException;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;->b:Ljava/lang/String;

    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$BirthdateInconsistent;

    if-eqz v3, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$BirthdateInconsistent;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$BirthdateInconsistent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$EmailAndUsernameNotMatch;

    if-eqz v3, :cond_1

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$EmailAndUsernameNotMatch;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$EmailAndUsernameNotMatch;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidCallingCode;

    if-eqz v3, :cond_2

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidCallingCode;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidCallingCode;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidEmail;

    if-eqz v3, :cond_3

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidEmail;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidEmail;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidName;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v3, :cond_9

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidName;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidName;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidName;->c:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidNameScope;

    sget-object v9, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModelKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v9, v1

    if-eq v1, v8, :cond_8

    if-eq v1, v7, :cond_7

    if-eq v1, v6, :cond_6

    if-eq v1, v5, :cond_5

    const/4 v5, 0x5

    if-ne v1, v5, :cond_4

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidNameScopeUiModel;->UNDEFINED:Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidNameScopeUiModel;

    goto :goto_1

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_5
    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidNameScopeUiModel;->LAST_NAME2:Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidNameScopeUiModel;

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidNameScopeUiModel;->FIRST_NAME2:Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidNameScopeUiModel;

    goto :goto_1

    :cond_7
    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidNameScopeUiModel;->LAST_NAME:Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidNameScopeUiModel;

    goto :goto_1

    :cond_8
    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidNameScopeUiModel;->FIRST_NAME:Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidNameScopeUiModel;

    :goto_1
    invoke-direct {v3, v2, v1}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidName;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidNameScopeUiModel;)V

    :goto_2
    move-object v1, v3

    goto/16 :goto_4

    :cond_9
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPassword;

    if-eqz v3, :cond_a

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPassword;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPassword;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPasswordContainsEmail;

    if-eqz v3, :cond_b

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPasswordContainsEmail;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPasswordContainsEmail;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPasswordContainsName;

    if-eqz v3, :cond_c

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPasswordContainsName;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPasswordContainsName;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPasswordRules;

    if-eqz v3, :cond_d

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPasswordRules;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPasswordRules;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_d
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPhone;

    if-eqz v3, :cond_e

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPhone;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPhone;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidTitle;

    if-eqz v3, :cond_f

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidTitle;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidTitle;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_f
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$LegalAgeBlocked;

    if-eqz v3, :cond_10

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$LegalAgeBlocked;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$LegalAgeBlocked;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_10
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$LegalAgeToBeBlocked;

    if-eqz v3, :cond_11

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$LegalAgeToBeBlocked;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$LegalAgeToBeBlocked;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_11
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberInvalid;

    if-eqz v3, :cond_12

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberInvalid;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberInvalid;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberInvalidCountry;

    if-eqz v3, :cond_13

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberInvalidCountry;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberInvalidCountry;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_13
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberTooLong;

    if-eqz v3, :cond_14

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberTooLong;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberTooLong;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_14
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$PhoneNumberTooShort;

    if-eqz v3, :cond_15

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberTooShort;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$PhoneNumberTooShort;-><init>(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_15
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$UserAlreadyExists;

    if-eqz v3, :cond_16

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$UserAlreadyExists;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$UserAlreadyExists;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_16
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidOtp;

    if-eqz v3, :cond_17

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidOtp;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidOtp;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_17
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidPostalCode;

    if-eqz v3, :cond_18

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPostalCode;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidPostalCode;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_18
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidState;

    if-eqz v3, :cond_19

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidState;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidState;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_19
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidCity;

    if-eqz v3, :cond_1a

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidCity;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidCity;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_1a
    instance-of v3, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidAddress;

    if-eqz v3, :cond_1f

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidAddress;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidAddress;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidAddress;->c:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidAddressScope;

    sget-object v9, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModelKt$WhenMappings;->b:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v9, v1

    if-eq v1, v8, :cond_1e

    if-eq v1, v7, :cond_1d

    if-eq v1, v6, :cond_1c

    if-ne v1, v5, :cond_1b

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidAddressScopeUiModel;->UNDEFINED:Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidAddressScopeUiModel;

    goto :goto_3

    :cond_1b
    invoke-static {}, Lv40;->g()V

    return-object v4

    :cond_1c
    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidAddressScopeUiModel;->ADDRESS3:Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidAddressScopeUiModel;

    goto :goto_3

    :cond_1d
    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidAddressScopeUiModel;->ADDRESS2:Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidAddressScopeUiModel;

    goto :goto_3

    :cond_1e
    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidAddressScopeUiModel;->ADDRESS1:Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidAddressScopeUiModel;

    :goto_3
    invoke-direct {v3, v2, v1}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$InvalidAddress;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/register/models/InvalidAddressScopeUiModel;)V

    goto/16 :goto_2

    :cond_1f
    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$UnknownError;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterExceptionUiModel$UnknownError;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_20
    new-instance p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterErrorListUiModelException;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterErrorListUiModelException;-><init>(Ljava/util/List;)V

    return-object p0
.end method
