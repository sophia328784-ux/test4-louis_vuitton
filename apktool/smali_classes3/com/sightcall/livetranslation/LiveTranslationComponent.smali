.class public interface abstract Lcom/sightcall/livetranslation/LiveTranslationComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/sightcall/livetranslation/LiveTranslationScope;
.end annotation

.annotation runtime Ldagger/Component;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;,
        Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001:\u0002\u000c\rJ\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&J\u0008\u0010\n\u001a\u00020\u000bH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000e\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/LiveTranslationComponent;",
        "",
        "liveTranslationAPI",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI;",
        "getLiveTranslationAPI",
        "()Lcom/sightcall/livetranslation/LiveTranslationAPI;",
        "liveSentences",
        "Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Builder;",
        "settingsPanel",
        "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Builder;",
        "history",
        "Lcom/sightcall/livetranslation/history/HistoryComponent$Builder;",
        "Builder",
        "Module",
        "livetranslation_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getLiveTranslationAPI()Lcom/sightcall/livetranslation/LiveTranslationAPI;
.end method

.method public abstract history()Lcom/sightcall/livetranslation/history/HistoryComponent$Builder;
.end method

.method public abstract liveSentences()Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Builder;
.end method

.method public abstract settingsPanel()Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Builder;
.end method
