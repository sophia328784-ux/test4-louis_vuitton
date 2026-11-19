.class public final Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toInitialState",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;",
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
.method public static final synthetic access$toInitialState(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractorKt;->toInitialState(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    move-result-object p0

    return-object p0
.end method

.method private static final toInitialState(Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;)Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;
    .locals 6

    new-instance v0, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    new-instance v2, Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;

    invoke-virtual {p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;->getTranslationAutoStartMode()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;->isAutoTranslateActive()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;->getFontSize()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled;->getTranscriptHistory()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;

    move-result-object p0

    invoke-direct {v2, v3, v4, v5, p0}, Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;-><init>(ZLcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$FontSize;Lcom/sightcall/livetranslation/domain/Language;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranscriptHistory;)V

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;-><init>(Ljava/util/List;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationDisplaySettings;Ljava/util/List;)V

    return-object v0
.end method
