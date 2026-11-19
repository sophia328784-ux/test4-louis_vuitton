.class public final Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;,
        Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;,
        Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentImpl;,
        Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;,
        Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentImpl;,
        Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentBuilder;,
        Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;,
        Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentBuilder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;
    .locals 2

    new-instance v0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$Builder;-><init>(I)V

    return-object v0
.end method
