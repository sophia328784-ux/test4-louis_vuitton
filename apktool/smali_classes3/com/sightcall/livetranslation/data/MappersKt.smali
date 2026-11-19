.class public final Lcom/sightcall/livetranslation/data/MappersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/livetranslation/data/MappersKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u000c\u0010\u0007\u001a\u00020\u0008*\u00020\u0002H\u0002\u001a\u000c\u0010\t\u001a\u00020\n*\u00020\u0002H\u0002\u001a\u000c\u0010\u000b\u001a\u00020\u000c*\u00020\u0002H\u0002\u001a\u000c\u0010\r\u001a\u00020\u000e*\u00020\u0002H\u0002\u001a\u0012\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010*\u00020\u0002H\u0002\u001a\u001c\u0010\u0012\u001a\u00020\u0013*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u001a\u0014\u0010\u0014\u001a\u00020\u0015*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u001a\u000c\u0010\u0016\u001a\u00020\u0017*\u00020\u0002H\u0002\u001a\u000c\u0010\u0018\u001a\u00020\u0019*\u00020\u0002H\u0002\u00a8\u0006\u001a"
    }
    d2 = {
        "toLiveTranslationSettings",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;",
        "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;",
        "role",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;",
        "localeLanguage",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;",
        "toDisplayMode",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$DisplayMode;",
        "toFontSize",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;",
        "toHeight",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;",
        "toSentenceTimeOut",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;",
        "toColors",
        "",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;",
        "toLanguageISO6391",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;",
        "toLanguageMode",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageMode;",
        "toTranscriptHistory",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;",
        "toTranslationAutoStartMode",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;",
        "livetranslation_release"
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
.method private static final toColors(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;",
            ")",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;->captionColors:Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Lcom/sightcall/livetranslation/data/LiveTranslationEntity;->Companion:Lcom/sightcall/livetranslation/data/LiveTranslationEntity$Companion;

    invoke-virtual {p0}, Lcom/sightcall/livetranslation/data/LiveTranslationEntity$Companion;->getDefaultColors()Ljava/util/List;

    move-result-object p0

    :cond_0
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

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v2, v1}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Color;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static final toDisplayMode(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$DisplayMode;
    .locals 1

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;->captionDisplayMode:Ljava/lang/String;

    const-string v0, "permanent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$DisplayMode;->Permanent:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$DisplayMode;

    return-object p0

    :cond_0
    sget-object p0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$DisplayMode;->Permanent:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$DisplayMode;

    return-object p0
.end method

.method private static final toFontSize(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;
    .locals 2

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;->captionFontSize:Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4041708b

    if-eq v0, v1, :cond_4

    const v1, 0x61fbb3b

    if-eq v0, v1, :cond_2

    const v1, 0x6879507    # 5.100033E-35f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "small"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;->Small:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    return-object p0

    :cond_2
    const-string v0, "large"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;->Large:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    return-object p0

    :cond_4
    const-string v0, "medium"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;->Medium:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    return-object p0

    :cond_6
    :goto_0
    sget-object p0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;->Medium:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    return-object p0
.end method

.method private static final toHeight(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;
    .locals 1

    new-instance v0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;->captionHeight:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x32

    :goto_0
    invoke-direct {v0, p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;-><init>(I)V

    return-object v0
.end method

.method private static final toLanguageISO6391(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;
    .locals 1

    sget-object v0, Lcom/sightcall/livetranslation/data/MappersKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;->attendeeLanguage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;->guestLanguage:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;->guestLanguage:Ljava/lang/String;

    :goto_0
    const-string p1, "default"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;->getValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    if-nez p0, :cond_4

    invoke-static {}, Lcom/sightcall/livetranslation/domain/LanguagesKt;->getDefaultSelectedLanguage()Ljava/lang/String;

    move-result-object p0

    :cond_4
    :goto_1
    new-instance p1, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;

    invoke-direct {p1, p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method private static final toLanguageMode(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageMode;
    .locals 1

    sget-object v0, Lcom/sightcall/livetranslation/data/MappersKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;->attendeeLanguageMode:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;->guestLanguageMode:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;->guestLanguageMode:Ljava/lang/String;

    :goto_0
    const-string p1, "auto"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageMode;->Auto:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageMode;

    return-object p0

    :cond_3
    const-string p1, "confirmation"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageMode;->Confirmation:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageMode;

    return-object p0

    :cond_4
    sget-object p0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageMode;->Auto:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageMode;

    return-object p0
.end method

.method public static final toLiveTranslationSettings(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;->liveTranslation:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Disabled;->INSTANCE:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Disabled;

    return-object p0

    :cond_0
    new-instance v0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;

    invoke-static {p0}, Lcom/sightcall/livetranslation/data/MappersKt;->toDisplayMode(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$DisplayMode;

    move-result-object v1

    invoke-static {p0}, Lcom/sightcall/livetranslation/data/MappersKt;->toFontSize(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    move-result-object v2

    invoke-static {p0}, Lcom/sightcall/livetranslation/data/MappersKt;->toHeight(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;

    move-result-object v3

    invoke-static {p0}, Lcom/sightcall/livetranslation/data/MappersKt;->toSentenceTimeOut(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;

    move-result-object v4

    invoke-static {p0}, Lcom/sightcall/livetranslation/data/MappersKt;->toColors(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Ljava/util/List;

    move-result-object v5

    invoke-static {p0, p1, p2}, Lcom/sightcall/livetranslation/data/MappersKt;->toLanguageISO6391(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;

    move-result-object v6

    invoke-static {p0, p1}, Lcom/sightcall/livetranslation/data/MappersKt;->toLanguageMode(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageMode;

    move-result-object v7

    invoke-static {p0}, Lcom/sightcall/livetranslation/data/MappersKt;->toTranscriptHistory(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;

    move-result-object v8

    invoke-static {p0}, Lcom/sightcall/livetranslation/data/MappersKt;->toTranslationAutoStartMode(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;-><init>(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$DisplayMode;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageMode;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;)V

    return-object v0
.end method

.method private static final toSentenceTimeOut(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;
    .locals 3

    new-instance v0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;->captionSentenceTimeout:Ljava/lang/Long;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1388

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$SentenceTimeOut;-><init>(J)V

    return-object v0
.end method

.method private static final toTranscriptHistory(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;
    .locals 1

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;->transcriptHistory:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;->Enabled:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;

    return-object p0

    :cond_0
    sget-object p0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;->Disabled:Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;

    return-object p0
.end method

.method private static final toTranslationAutoStartMode(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;
    .locals 1

    new-instance v0, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;

    iget-object p0, p0, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;->liveTranslationAutoStart:Ljava/lang/Boolean;

    invoke-direct {v0, p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;-><init>(Ljava/lang/Boolean;)V

    return-object v0
.end method
