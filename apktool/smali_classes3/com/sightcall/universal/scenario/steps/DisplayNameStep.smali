.class public Lcom/sightcall/universal/scenario/steps/DisplayNameStep;
.super Lcom/sightcall/universal/scenario/Step;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/scenario/Step$WithSession;


# static fields
.field private static final EMPTY_NAME:Ljava/lang/String; = ""


# instance fields
.field private final displayNameAndLiveTranslation:Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;

.field private final session:Lcom/sightcall/universal/model/Session;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/scenario/Step;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/DisplayNameStep;->session:Lcom/sightcall/universal/model/Session;

    iput-object p2, p0, Lcom/sightcall/universal/scenario/steps/DisplayNameStep;->displayNameAndLiveTranslation:Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;

    return-void
.end method

.method public static nextStep(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/scenario/Step;
    .locals 6

    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/di/SDKInjectorI;->getReferenceComponent()Lcom/sightcall/universal/ReferenceComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/ReferenceComponent;->getLiveTranslationAPI()Lcom/sightcall/livetranslation/LiveTranslationAPI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->getLanguages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->getInitialSelectedLanguage()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sightcall/universal/scenario/steps/DisplayNameStep;->selectDefaultLanguage(Lcom/sightcall/livetranslation/LiveTranslationAPI;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;)V

    iget-object v3, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v3}, Lcom/sightcall/universal/model/Config;->displayNameMode()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-interface {v0}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->getShouldConfirmLanguage()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sightcall/universal/scenario/steps/ConnectionStep;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;-><init>(Lcom/sightcall/universal/model/Session;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v3, Lcom/sightcall/universal/scenario/steps/DisplayNameStep;

    new-instance v4, Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;

    const-string v5, ""

    invoke-interface {v0}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->getShouldConfirmLanguage()Z

    move-result v0

    invoke-direct {v4, v5, v2, v1, v0}, Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;-><init>(Ljava/lang/String;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;Ljava/util/List;Z)V

    invoke-direct {v3, p0, v4}, Lcom/sightcall/universal/scenario/steps/DisplayNameStep;-><init>(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;)V

    return-object v3
.end method

.method private static selectDefaultLanguage(Lcom/sightcall/livetranslation/LiveTranslationAPI;Ljava/util/List;Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI;",
            "Ljava/util/List<",
            "Lcom/sightcall/livetranslation/domain/Language;",
            ">;",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$LanguageISO6391;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sightcall/livetranslation/domain/LanguagesKt;->getLanguage(Ljava/util/List;Ljava/lang/String;)Lcom/sightcall/livetranslation/domain/Language;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->selectLanguage(Lcom/sightcall/livetranslation/domain/Language;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Lcom/sightcall/universal/scenario/Scenario;)V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onDisplayNameResultEvent(Lcom/sightcall/universal/displayname/DisplayNameResultEvent;)V
    .locals 2
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    new-instance p1, Lcom/sightcall/universal/scenario/steps/ConnectionStep;

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/DisplayNameStep;->session:Lcom/sightcall/universal/model/Session;

    invoke-direct {p1, v0}, Lcom/sightcall/universal/scenario/steps/ConnectionStep;-><init>(Lcom/sightcall/universal/model/Session;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/sightcall/universal/scenario/Step;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Step;->success([Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method

.method public onUnbind()V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 2

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->bindService()V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/displayname/DisplayNameRequestEvent;

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/DisplayNameStep;->displayNameAndLiveTranslation:Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/displayname/DisplayNameRequestEvent;-><init>(Lcom/sightcall/universal/displayname/DisplayNameAndLiveTranslation;)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public session()Lcom/sightcall/universal/model/Session;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/DisplayNameStep;->session:Lcom/sightcall/universal/model/Session;

    return-object p0
.end method
