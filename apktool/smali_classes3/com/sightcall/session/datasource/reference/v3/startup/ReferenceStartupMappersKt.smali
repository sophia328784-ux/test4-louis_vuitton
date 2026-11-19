.class public final Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupMappersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupMappersKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u000e\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0002\u001a\u000e\u0010\u0006\u001a\u0004\u0018\u00010\u0007*\u00020\u0005H\u0002\u001a\u0014\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t*\u00020\u0005H\u0002\u001a\u000c\u0010\u000b\u001a\u00020\u000c*\u00020\u0005H\u0002\u001a\u000c\u0010\r\u001a\u00020\u000e*\u00020\u0005H\u0002\u001a\u000c\u0010\u000f\u001a\u00020\u0010*\u00020\u0005H\u0002\u001a\u000e\u0010\u0011\u001a\u0004\u0018\u00010\u0012*\u00020\u0005H\u0002\u001a\u000c\u0010\u0013\u001a\u00020\u0014*\u00020\u0005H\u0002\u001a\u000c\u0010\u0015\u001a\u00020\u0016*\u00020\u0005H\u0002\u001a\u000e\u0010\u0017\u001a\u00020\u0018*\u0004\u0018\u00010\u0019H\u0002\u00a8\u0006\u001a"
    }
    d2 = {
        "toReference",
        "Lcom/sightcall/session/Reference;",
        "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity;",
        "toUseCase",
        "Lcom/sightcall/session/Reference$UseCase;",
        "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;",
        "toSurvey",
        "Lcom/sightcall/session/Reference$UseCase$Survey;",
        "toButtons",
        "",
        "Lcom/sightcall/session/Reference$Button;",
        "toPropositionTemplate",
        "Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;",
        "toConsent",
        "Lcom/sightcall/session/Reference$UseCase$Consent;",
        "toLiveTranslation",
        "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;",
        "toAnalytics",
        "Lcom/sightcall/session/Reference$UseCase$Analytics;",
        "toProvider",
        "Lcom/sightcall/session/Reference$Provider;",
        "toCustomization",
        "Lcom/sightcall/session/Reference$Customization;",
        "toBool",
        "",
        "",
        "session_release"
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
.method private static final toAnalytics(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;)Lcom/sightcall/session/Reference$UseCase$Analytics;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/sightcall/session/Reference$UseCase$Analytics;

    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getAnalyticsUploadUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getAnalyticsUploadToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p0}, Lcom/sightcall/session/Reference$UseCase$Analytics;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method private static final toBool(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "true"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private static final toButtons(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;",
            ")",
            "Ljava/util/List<",
            "Lcom/sightcall/session/Reference$Button;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getBarButtons()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

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

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes$BarButton;

    invoke-virtual {v1}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes$BarButton;->getRole()Lcom/sightcall/session/datasource/reference/v3/Role;

    move-result-object v1

    invoke-static {v1}, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt;->toButton(Lcom/sightcall/session/datasource/reference/v3/Role;)Lcom/sightcall/session/Reference$Button;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v0, Lcom/sightcall/session/Reference$Button$HangupCall;->INSTANCE:Lcom/sightcall/session/Reference$Button$HangupCall;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final toConsent(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;)Lcom/sightcall/session/Reference$UseCase$Consent;
    .locals 11

    new-instance v0, Lcom/sightcall/session/Reference$UseCase$Consent;

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getConsentId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getConsentTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getConsentDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getConsentAcceptLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getConsentDeclineLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getConsentEulaLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getConsentEulaLink()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x80

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/sightcall/session/Reference$UseCase$Consent;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sightcall/session/Reference$UseCase$Consent$Status;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private static final toCustomization(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;)Lcom/sightcall/session/Reference$Customization;
    .locals 8

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getCustomizations()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->g(I)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes$Customization;

    invoke-virtual {v0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes$Customization;->getName()Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes$Customization;->getValue()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v3, Lkotlin/Pair;->b:Ljava/lang/Object;

    iget-object v2, v3, Lkotlin/Pair;->c:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v1

    :cond_2
    new-instance v2, Lcom/sightcall/session/Reference$Customization;

    sget-object p0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->AcdExternal:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    sget-object p0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->PluginShareOverlayDisabled:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupMappersKt;->toBool(Ljava/lang/String;)Z

    move-result v4

    sget-object p0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->RtccLocalUdpDisabled:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupMappersKt;->toBool(Ljava/lang/String;)Z

    move-result v5

    sget-object p0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->RtccUsapTurnDisabled:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupMappersKt;->toBool(Ljava/lang/String;)Z

    move-result v6

    sget-object p0, Lcom/sightcall/session/datasource/reference/v3/CustomizationName;->SslPlugin:Lcom/sightcall/session/datasource/reference/v3/CustomizationName;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupMappersKt;->toBool(Ljava/lang/String;)Z

    move-result v7

    invoke-direct/range {v2 .. v7}, Lcom/sightcall/session/Reference$Customization;-><init>(Ljava/lang/String;ZZZZ)V

    return-object v2
.end method

.method private static final toLiveTranslation(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;)Lcom/sightcall/session/Reference$UseCase$LiveTranslation;
    .locals 13

    new-instance v0, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getLiveTranslationEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getLiveTranslationCaptionDisplayMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getLiveTranslationCaptionFontSize()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getLiveTranslationCaptionHeight()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getLiveTranslationCaptionSentenceTimeout()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getLiveTranslationCaptionColors()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getLiveTranslationLanguageValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getLiveTranslationLanguageValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getLiveTranslationLanguageMode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getLiveTranslationLanguageMode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getLiveTranslationTranscript()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getLiveTranslationAutoStart()Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private static final toPropositionTemplate(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;)Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;
    .locals 3

    new-instance v0, Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getNoteOnPictureTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getNoteOnPictureAcceptLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getNoteOnPictureSignature()Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private static final toProvider(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;)Lcom/sightcall/session/Reference$Provider;
    .locals 8

    new-instance v0, Lcom/sightcall/session/Reference$Provider;

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getRtccAppId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/sightcall/pratik/utils/Utils;->Companion:Lcom/sightcall/pratik/utils/Utils$Companion;

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getRtccEnv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getRtccHap()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sightcall/pratik/utils/Utils$Companion;->extractHap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getChatTranscript()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getRtccDeadParty()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    move v5, v2

    goto :goto_1

    :cond_0
    const/16 v2, 0x3c

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getAnnotationsUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getRtccJwtAuth()Ljava/lang/String;

    move-result-object v7

    const-string v2, "rtcc"

    invoke-direct/range {v0 .. v7}, Lcom/sightcall/session/Reference$Provider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toReference(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity;)Lcom/sightcall/session/Reference;
    .locals 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity;->getData()Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data;->getAttributes()Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;

    move-result-object p0

    new-instance v0, Lcom/sightcall/session/Reference;

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getReference()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupMappersKt;->toUseCase(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;)Lcom/sightcall/session/Reference$UseCase;

    move-result-object v2

    invoke-static {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupMappersKt;->toProvider(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;)Lcom/sightcall/session/Reference$Provider;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getAcdProductId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getAcdLocationId()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getAcdLanguageId()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupMappersKt;->toCustomization(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;)Lcom/sightcall/session/Reference$Customization;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getAcdMask()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0x10

    if-eqz v8, :cond_0

    invoke-static {v10}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v9

    :goto_0
    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getAcdValue()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-static {v10}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v9

    invoke-static {v11, v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    :cond_1
    new-instance v10, Lcom/sightcall/httpclient/AuthorizationToken;

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getAuthorizationToken()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/sightcall/httpclient/AuthorizationToken;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getAuthorizationHash()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getTakeUhdPicture()Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lcom/sightcall/session/Reference;-><init>(Ljava/lang/String;Lcom/sightcall/session/Reference$UseCase;Lcom/sightcall/session/Reference$Provider;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/sightcall/session/Reference$Customization;Ljava/lang/Long;Ljava/lang/Long;Lcom/sightcall/httpclient/AuthorizationToken;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private static final toSurvey(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;)Lcom/sightcall/session/Reference$UseCase$Survey;
    .locals 7

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getSurveyMode()Lcom/sightcall/session/datasource/reference/v3/SurveyMode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupMappersKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v0, Lcom/sightcall/session/Reference$UseCase$Survey;

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getSurveyUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/sightcall/session/Reference$UseCase$Survey;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/sightcall/session/Reference$UseCase$Survey;

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getSurveyTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getSurveyLinkLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getSurveyUrl()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, p0}, Lcom/sightcall/session/Reference$UseCase$Survey;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final toUseCase(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;)Lcom/sightcall/session/Reference$UseCase;
    .locals 31

    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getUseCaseId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getUserRole()Lcom/sightcall/session/datasource/reference/v3/UserRole;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt;->toUserRole(Lcom/sightcall/session/datasource/reference/v3/UserRole;)Lcom/sightcall/session/Reference$UserRole;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getCallDistribution()Lcom/sightcall/session/datasource/reference/v3/CallDistribution;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt;->toCallDistribution(Lcom/sightcall/session/datasource/reference/v3/CallDistribution;)Lcom/sightcall/session/Reference$CallDistribution;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getUseCaseName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getStartupCameraSide()Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt;->toCameraSide(Lcom/sightcall/session/datasource/reference/v3/StartupCameraSide;)Lcom/sightcall/session/Reference$CameraSide;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getStartupCamera()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getStartupVideoProfile()Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;

    move-result-object v7

    invoke-static {v7}, Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3ConstMappersKt;->toVideoProfile(Lcom/sightcall/session/datasource/reference/v3/StartupVideoProfile;)Lcom/sightcall/session/Reference$VideoProfile;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getStartupPointer()Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getStartupMicro()Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    const/4 v10, 0x1

    xor-int/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getCameraWhileShareOut()Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupMappersKt;->toSurvey(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;)Lcom/sightcall/session/Reference$UseCase$Survey;

    move-result-object v12

    move v13, v10

    move v10, v11

    move-object v11, v12

    invoke-static/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupMappersKt;->toButtons(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;)Ljava/util/List;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getBarAlwaysVisible()Ljava/lang/Boolean;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getChatNotificationDisplayTimeout()Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_5

    :cond_5
    const/16 v15, 0xa

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getChatQuickBar()Ljava/lang/Boolean;

    move-result-object v16

    if-eqz v16, :cond_6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    goto :goto_6

    :cond_6
    const/16 v16, 0x0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getStartupCameraUsb()Ljava/lang/Boolean;

    move-result-object v17

    if-eqz v17, :cond_7

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    goto :goto_7

    :cond_7
    const/16 v17, 0x0

    :goto_7
    invoke-static/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupMappersKt;->toPropositionTemplate(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;)Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getOcrCollimatorRatio()Ljava/lang/Float;

    move-result-object v19

    const/16 v20, 0x0

    if-eqz v19, :cond_8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move/from16 v19, v13

    move/from16 v22, v14

    float-to-double v13, v6

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_8

    :cond_8
    move/from16 v19, v13

    move/from16 v22, v14

    move-object/from16 v6, v20

    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getOcrSafeArea()Ljava/lang/Float;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    float-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupMappersKt;->toConsent(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;)Lcom/sightcall/session/Reference$UseCase$Consent;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getAnnotationsUrl()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_a

    move/from16 v21, v19

    move/from16 v23, v21

    :goto_9
    move-object/from16 v19, v20

    const/4 v14, 0x0

    move-object/from16 v20, v13

    move/from16 v13, v22

    goto :goto_a

    :cond_a
    move/from16 v23, v19

    const/16 v21, 0x0

    goto :goto_9

    :goto_a
    invoke-static/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupMappersKt;->toLiveTranslation(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;)Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    move-result-object v22

    move/from16 v24, v23

    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getCaseReportId()Ljava/lang/String;

    move-result-object v23

    move/from16 v25, v24

    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getReference()Ljava/lang/String;

    move-result-object v24

    move/from16 v26, v25

    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getDisplayNameMode()Ljava/lang/String;

    move-result-object v25

    move/from16 v27, v26

    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getRtccDisplayName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getConsentRequired()Ljava/lang/Boolean;

    move-result-object v28

    if-eqz v28, :cond_b

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    :cond_b
    move/from16 v27, v14

    invoke-static/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupMappersKt;->toAnalytics(Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;)Lcom/sightcall/session/Reference$UseCase$Analytics;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getRtccMpi()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {p0 .. p0}, Lcom/sightcall/session/datasource/reference/v3/startup/ReferenceStartupResponseEntity$Data$Attributes;->getAcdRequestTimeout()Ljava/lang/Integer;

    move-result-object v14

    if-eqz v14, :cond_c

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    :goto_b
    move/from16 v30, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v6

    move v6, v0

    goto :goto_c

    :cond_c
    const/4 v14, -0x1

    goto :goto_b

    :goto_c
    new-instance v0, Lcom/sightcall/session/Reference$UseCase;

    invoke-direct/range {v0 .. v30}, Lcom/sightcall/session/Reference$UseCase;-><init>(Ljava/lang/Integer;Lcom/sightcall/session/Reference$UserRole;Lcom/sightcall/session/Reference$CallDistribution;Ljava/lang/String;Lcom/sightcall/session/Reference$CameraSide;ZLcom/sightcall/session/Reference$VideoProfile;ZZZLcom/sightcall/session/Reference$UseCase$Survey;Ljava/util/List;ZIZZLcom/sightcall/session/Reference$UseCase$PropositionTemplate;Ljava/lang/Double;Ljava/lang/Double;Lcom/sightcall/session/Reference$UseCase$Consent;ZLcom/sightcall/session/Reference$UseCase$LiveTranslation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sightcall/session/Reference$UseCase$Analytics;Ljava/lang/String;I)V

    return-object v0
.end method
