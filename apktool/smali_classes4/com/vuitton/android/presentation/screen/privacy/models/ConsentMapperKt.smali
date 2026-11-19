.class public abstract Lcom/vuitton/android/presentation/screen/privacy/models/ConsentMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/privacy/models/ConsentMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;)Lcom/vuitton/foundation/model/domain/model/privacy/Consent;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$FunctionalConsentUiModel;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentMapperKt;->b(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentMapperKt;->b(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentMapperKt;->b(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentMapperKt;->b(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$ChatConsentUiModel;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentMapperKt;->b(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    return-object v0

    :cond_4
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$LucieLabsConsentUiModel;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;->a:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentMapperKt;->b(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;-><init>(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)V

    return-object v0

    :cond_5
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentMapperKt$WhenMappings;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->MANDATORY:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->UNSET:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    return-object p0

    :cond_2
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->REFUSED:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    return-object p0

    :cond_3
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->GIVEN:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    return-object p0
.end method

.method public static final c(Lcom/vuitton/foundation/model/domain/model/privacy/Consent;)Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$FunctionalConsentUiModel;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$FunctionalConsentUiModel;-><init>(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V

    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;-><init>(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V

    return-object v0

    :cond_1
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;-><init>(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V

    return-object v0

    :cond_2
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;-><init>(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V

    return-object v0

    :cond_3
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$ChatConsentUiModel;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$ChatConsentUiModel;-><init>(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V

    return-object v0

    :cond_4
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$LucieLabsConsentUiModel;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->a:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$LucieLabsConsentUiModel;-><init>(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;)V

    return-object v0

    :cond_5
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final d(Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;)Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->MANDATORY:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->UNSET:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    return-object p0

    :cond_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->REFUSED:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    return-object p0

    :cond_3
    sget-object p0, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;->GIVEN:Lcom/vuitton/android/presentation/screen/privacy/models/ConsentValueUiModel;

    return-object p0
.end method
