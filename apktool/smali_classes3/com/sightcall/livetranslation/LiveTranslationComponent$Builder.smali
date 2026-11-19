.class public interface abstract Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Component$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/livetranslation/LiveTranslationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005H\'J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008H\'J\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\'J\u0010\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rH\'J\u0010\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fH\'\u00a8\u0006\u0010\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;",
        "",
        "build",
        "Lcom/sightcall/livetranslation/LiveTranslationComponent;",
        "useCaseSettings",
        "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;",
        "userRole",
        "role",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;",
        "localLanguage",
        "localeLanguage",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;",
        "liveTranslationUrl",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;",
        "networkConnector",
        "Lcom/sightcall/libraries/network/NetworkConnector;",
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
.method public abstract build()Lcom/sightcall/livetranslation/LiveTranslationComponent;
.end method

.method public abstract liveTranslationUrl(Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method

.method public abstract localLanguage(Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;)Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method

.method public abstract networkConnector(Lcom/sightcall/libraries/network/NetworkConnector;)Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method

.method public abstract useCaseSettings(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method

.method public abstract userRole(Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;)Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;
    .annotation runtime Ldagger/BindsInstance;
    .end annotation
.end method
