.class public interface abstract Lcom/sightcall/livetranslation/LiveTranslationAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;,
        Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;,
        Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;,
        Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;,
        Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;,
        Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;,
        Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;,
        Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008f\u0018\u00002\u00020\u0001:\u0008789:;<=>J\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H&J\u0008\u0010!\u001a\u00020\u001cH&J\u0010\u0010\"\u001a\u00020\u001c2\u0006\u0010#\u001a\u00020\u000cH&J\u0016\u0010$\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010%2\u0006\u0010&\u001a\u00020\'H&J$\u0010(\u001a\u0006\u0012\u0002\u0008\u00030%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H&J\u001c\u0010-\u001a\u0006\u0012\u0002\u0008\u00030%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010)\u001a\u00020.H&J\u0010\u0010/\u001a\u00020\u001c2\u0006\u00100\u001a\u00020\u0008H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u0010X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0012\u0010\u0013\u001a\u00020\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\nR\u0012\u0010\u0017\u001a\u00020\u0018X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0012\u00101\u001a\u00020\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u0010\u0015R\u0014\u00103\u001a\u0004\u0018\u000104X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u00085\u00106\u00a8\u0006?\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/LiveTranslationAPI;",
        "",
        "defaultLanguage",
        "",
        "getDefaultLanguage",
        "()Ljava/lang/String;",
        "visible",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "getVisible",
        "()Lio/reactivex/rxjava3/core/Observable;",
        "selectedLanguage",
        "Lcom/sightcall/livetranslation/domain/Language;",
        "getSelectedLanguage",
        "()Lcom/sightcall/livetranslation/domain/Language;",
        "languages",
        "",
        "getLanguages",
        "()Ljava/util/List;",
        "enabled",
        "getEnabled",
        "()Z",
        "isReady",
        "autoTranslate",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;",
        "getAutoTranslate",
        "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;",
        "onNewMessage",
        "",
        "message",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;",
        "pid",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;",
        "clear",
        "selectLanguage",
        "language",
        "createLiveSentencesCoordinator",
        "Lcom/sightcall/libraries/archi/coordinator/Coordinator;",
        "rootView",
        "Landroid/view/ViewGroup;",
        "createSettingsPanelCoordinator",
        "closeFeature",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;",
        "openHistory",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;",
        "createHistoryCoordinator",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;",
        "enableLiveTranslation",
        "isEnabled",
        "shouldConfirmLanguage",
        "getShouldConfirmLanguage",
        "initialSelectedLanguage",
        "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;",
        "getInitialSelectedLanguage",
        "()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;",
        "Message",
        "Pid",
        "LocaleLanguage",
        "Role",
        "CloseSettings",
        "OpenHistory",
        "CloseHistory",
        "LiveTranslationLanguagesUrl",
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
.method public abstract clear()V
.end method

.method public abstract createHistoryCoordinator(Landroid/view/ViewGroup;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;)Lcom/sightcall/libraries/archi/coordinator/Coordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseHistory;",
            ")",
            "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract createLiveSentencesCoordinator(Landroid/view/ViewGroup;)Lcom/sightcall/libraries/archi/coordinator/Coordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract createSettingsPanelCoordinator(Landroid/view/ViewGroup;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;)Lcom/sightcall/libraries/archi/coordinator/Coordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;",
            ")",
            "Lcom/sightcall/libraries/archi/coordinator/Coordinator<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract enableLiveTranslation(Z)V
.end method

.method public abstract getAutoTranslate()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$TranslationAutoStartValue;
.end method

.method public abstract getDefaultLanguage()Ljava/lang/String;
.end method

.method public abstract getEnabled()Z
.end method

.method public abstract getInitialSelectedLanguage()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;
.end method

.method public abstract getLanguages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Language;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectedLanguage()Lcom/sightcall/livetranslation/domain/Language;
.end method

.method public abstract getShouldConfirmLanguage()Z
.end method

.method public abstract getVisible()Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isReady()Lio/reactivex/rxjava3/core/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onNewMessage(Lcom/sightcall/livetranslation/LiveTranslationAPI$Message;Lcom/sightcall/livetranslation/LiveTranslationAPI$Pid;)V
.end method

.method public abstract selectLanguage(Lcom/sightcall/livetranslation/domain/Language;)V
.end method
