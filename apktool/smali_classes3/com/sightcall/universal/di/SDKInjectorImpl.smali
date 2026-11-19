.class public final Lcom/sightcall/universal/di/SDKInjectorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/di/SDKInjectorI;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\n\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016J:\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\n\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016J(\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0013H\u0016J\u0008\u0010#\u001a\u00020\u0017H\u0016J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010\'\u001a\u00020(H\u0016J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010)\u001a\u00020*H\u0016J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010+\u001a\u00020,H\u0016J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010-\u001a\u00020.H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/sightcall/universal/di/SDKInjectorImpl;",
        "Lcom/sightcall/universal/di/SDKInjectorI;",
        "sdkComponent",
        "Lcom/sightcall/universal/di/SdkComponent;",
        "<init>",
        "(Lcom/sightcall/universal/di/SdkComponent;)V",
        "callComponent",
        "Lcom/sightcall/universal/CallComponent;",
        "getCallComponent",
        "createCallComponent",
        "senderIdGetter",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;",
        "senderColor",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;",
        "annotationSender",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;",
        "stateHandler",
        "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;",
        "settingsUrl",
        "",
        "sessionConfig",
        "Lcom/sightcall/universal/model/Config;",
        "destroyCallComponent",
        "",
        "referenceComponent",
        "Lcom/sightcall/universal/ReferenceComponent;",
        "getReferenceComponent",
        "createReferenceComponent",
        "useCaseSettings",
        "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;",
        "role",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;",
        "localeLanguage",
        "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;",
        "baseUrlEnvironment",
        "destroyReferenceComponent",
        "inject",
        "universalAr",
        "Lcom/sightcall/universal/ar/UniversalAr;",
        "screenCastOverlay",
        "Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;",
        "myScreenshareConsumerView",
        "Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;",
        "fetchReferenceStep",
        "Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;",
        "agentUsecaseStep",
        "Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;",
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


# instance fields
.field private callComponent:Lcom/sightcall/universal/CallComponent;

.field private referenceComponent:Lcom/sightcall/universal/ReferenceComponent;

.field private final sdkComponent:Lcom/sightcall/universal/di/SdkComponent;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/di/SdkComponent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/di/SDKInjectorImpl;->sdkComponent:Lcom/sightcall/universal/di/SdkComponent;

    return-void
.end method


# virtual methods
.method public createCallComponent(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;Ljava/lang/String;Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/CallComponent;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/universal/di/SDKInjectorImpl;->callComponent:Lcom/sightcall/universal/CallComponent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/di/SDKInjectorImpl;->sdkComponent:Lcom/sightcall/universal/di/SdkComponent;

    invoke-interface {v0}, Lcom/sightcall/universal/di/SdkComponent;->callComponent()Lcom/sightcall/universal/CallComponent$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sightcall/universal/CallComponent$Builder;->senderIdGetter(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;)Lcom/sightcall/universal/CallComponent$Builder;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sightcall/universal/CallComponent$Builder;->initialSenderColor(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;)Lcom/sightcall/universal/CallComponent$Builder;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/sightcall/universal/CallComponent$Builder;->newAnnotationSender(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;)Lcom/sightcall/universal/CallComponent$Builder;

    move-result-object p1

    invoke-interface {p1, p4}, Lcom/sightcall/universal/CallComponent$Builder;->stateHandler(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;)Lcom/sightcall/universal/CallComponent$Builder;

    move-result-object p1

    new-instance p2, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;

    invoke-direct {p2, p5}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/sightcall/universal/CallComponent$Builder;->settingsUrl(Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;)Lcom/sightcall/universal/CallComponent$Builder;

    move-result-object p1

    invoke-interface {p1, p6}, Lcom/sightcall/universal/CallComponent$Builder;->sessionConfig(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/CallComponent$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/universal/CallComponent$Builder;->build()Lcom/sightcall/universal/CallComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/di/SDKInjectorImpl;->callComponent:Lcom/sightcall/universal/CallComponent;

    return-object p1

    :cond_0
    return-object v0
.end method

.method public createReferenceComponent(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;Ljava/lang/String;)Lcom/sightcall/universal/ReferenceComponent;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/universal/di/SDKInjectorImpl;->referenceComponent:Lcom/sightcall/universal/ReferenceComponent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/di/SDKInjectorImpl;->sdkComponent:Lcom/sightcall/universal/di/SdkComponent;

    invoke-interface {v0}, Lcom/sightcall/universal/di/SdkComponent;->referenceComponent()Lcom/sightcall/universal/ReferenceComponent$Builder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sightcall/universal/ReferenceComponent$Builder;->useCaseSettings(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;)Lcom/sightcall/universal/ReferenceComponent$Builder;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sightcall/universal/ReferenceComponent$Builder;->userRole(Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;)Lcom/sightcall/universal/ReferenceComponent$Builder;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/sightcall/universal/ReferenceComponent$Builder;->localeLanguage(Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;)Lcom/sightcall/universal/ReferenceComponent$Builder;

    move-result-object p1

    new-instance p2, Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;

    const-string p3, "v3/spokenLanguages"

    invoke-static {p4, p3}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/sightcall/universal/ReferenceComponent$Builder;->liveTranslationUrl(Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)Lcom/sightcall/universal/ReferenceComponent$Builder;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/universal/ReferenceComponent$Builder;->build()Lcom/sightcall/universal/ReferenceComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/di/SDKInjectorImpl;->referenceComponent:Lcom/sightcall/universal/ReferenceComponent;

    return-object p1

    :cond_0
    return-object v0
.end method

.method public destroyCallComponent()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/di/SDKInjectorImpl;->callComponent:Lcom/sightcall/universal/CallComponent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sightcall/universal/CallComponent;->getAdvancedAnnotationsAPI()Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/di/SDKInjectorImpl;->callComponent:Lcom/sightcall/universal/CallComponent;

    return-void
.end method

.method public destroyReferenceComponent()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/di/SDKInjectorImpl;->referenceComponent:Lcom/sightcall/universal/ReferenceComponent;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sightcall/universal/ReferenceComponent;->getLiveTranslationAPI()Lcom/sightcall/livetranslation/LiveTranslationAPI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/di/SDKInjectorImpl;->referenceComponent:Lcom/sightcall/universal/ReferenceComponent;

    return-void
.end method

.method public getCallComponent()Lcom/sightcall/universal/CallComponent;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/di/SDKInjectorImpl;->callComponent:Lcom/sightcall/universal/CallComponent;

    return-object p0
.end method

.method public getReferenceComponent()Lcom/sightcall/universal/ReferenceComponent;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/di/SDKInjectorImpl;->referenceComponent:Lcom/sightcall/universal/ReferenceComponent;

    return-object p0
.end method

.method public inject(Lcom/sightcall/universal/ar/UniversalAr;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/sightcall/universal/di/SDKInjectorImpl;->sdkComponent:Lcom/sightcall/universal/di/SdkComponent;

    invoke-interface {p0, p1}, Lcom/sightcall/universal/di/SdkComponent;->inject(Lcom/sightcall/universal/ar/UniversalAr;)V

    return-void
.end method

.method public inject(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    iget-object p0, p0, Lcom/sightcall/universal/di/SDKInjectorImpl;->sdkComponent:Lcom/sightcall/universal/di/SdkComponent;

    invoke-interface {p0, p1}, Lcom/sightcall/universal/di/SdkComponent;->inject(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;)V

    return-void
.end method

.method public inject(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-object p0, p0, Lcom/sightcall/universal/di/SDKInjectorImpl;->sdkComponent:Lcom/sightcall/universal/di/SdkComponent;

    invoke-interface {p0, p1}, Lcom/sightcall/universal/di/SdkComponent;->inject(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)V

    return-void
.end method

.method public inject(Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object p0, p0, Lcom/sightcall/universal/di/SDKInjectorImpl;->sdkComponent:Lcom/sightcall/universal/di/SdkComponent;

    invoke-interface {p0, p1}, Lcom/sightcall/universal/di/SdkComponent;->inject(Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;)V

    return-void
.end method

.method public inject(Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    iget-object p0, p0, Lcom/sightcall/universal/di/SDKInjectorImpl;->sdkComponent:Lcom/sightcall/universal/di/SdkComponent;

    invoke-interface {p0, p1}, Lcom/sightcall/universal/di/SdkComponent;->inject(Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;)V

    return-void
.end method
