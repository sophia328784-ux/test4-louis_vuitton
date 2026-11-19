.class public final Lcom/sightcall/universal/ReferenceComponent$Module;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/ReferenceComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Module"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J0\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0007\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/sightcall/universal/ReferenceComponent$Module;",
        "",
        "<init>",
        "()V",
        "provideLiveTranslationApi",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI;",
        "useCaseSettings",
        "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;",
        "userRole",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;",
        "localeLanguage",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;",
        "liveTranslationUrl",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;",
        "networkConnector",
        "Lcom/sightcall/libraries/network/NetworkConnector;",
        "sdk_installedRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideLiveTranslationApi(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;Lcom/sightcall/libraries/network/NetworkConnector;)Lcom/sightcall/livetranslation/LiveTranslationAPI;
    .locals 0
    .annotation runtime Lcom/sightcall/universal/ReferenceScope;
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent;->builder()Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;->useCaseSettings(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;->userRole(Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;)Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;->localLanguage(Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;)Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p4}, Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;->liveTranslationUrl(Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;

    move-result-object p0

    invoke-interface {p0, p5}, Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;->networkConnector(Lcom/sightcall/libraries/network/NetworkConnector;)Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/livetranslation/LiveTranslationComponent$Builder;->build()Lcom/sightcall/livetranslation/LiveTranslationComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/livetranslation/LiveTranslationComponent;->getLiveTranslationAPI()Lcom/sightcall/livetranslation/LiveTranslationAPI;

    move-result-object p0

    return-object p0
.end method
