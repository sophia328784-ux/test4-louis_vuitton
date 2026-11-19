.class public Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;
.super Lcom/sightcall/universal/scenario/Step;
.source "SourceFile"


# instance fields
.field private final config:Lcom/sightcall/universal/model/Config;

.field sessionRepository:Lcom/sightcall/session/SessionRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/model/Config;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/scenario/Step;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;->config:Lcom/sightcall/universal/model/Config;

    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sightcall/universal/di/SDKInjectorI;->inject(Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Boolean;)Z
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;->lambda$onReferenceReady$0(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;Lcom/sightcall/universal/model/Session;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;->lambda$onReferenceReady$1(Lcom/sightcall/universal/model/Session;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;)Lcom/sightcall/universal/model/Config;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;->config:Lcom/sightcall/universal/model/Config;

    return-object p0
.end method

.method private getLiveTranslationRole(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;
    .locals 1

    sget-object p0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep$2;->$SwitchMap$com$sightcall$universal$model$Session$Role:[I

    iget-object v0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;->Attendee:Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;

    return-object p0

    :cond_0
    iget-object p0, p1, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->role()Lcom/sightcall/universal/model/Session$Role;

    move-result-object p0

    const-string p1, "Unexpected value: "

    invoke-static {p0, p1}, Lct0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;->Guest:Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;

    return-object p0

    :cond_2
    sget-object p0, Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;->Host:Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;

    return-object p0
.end method

.method private static synthetic lambda$onReferenceReady$0(Ljava/lang/Boolean;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onReferenceReady$1(Lcom/sightcall/universal/model/Session;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {p1}, Lcom/sightcall/universal/scenario/steps/ConsentStep;->nextStep(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/scenario/Step;

    move-result-object p1

    filled-new-array {p1}, [Lcom/sightcall/universal/scenario/Step;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->success([Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method

.method public static next(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/scenario/Step;
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->hash()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p0

    const-string v0, "[hash] must not be null"

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;-><init>(Lcom/sightcall/universal/model/Config;)V

    return-object v0
.end method

.method private onReferenceReady(Lcom/sightcall/universal/model/Session;)V
    .locals 6

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    iget-object v1, p1, Lcom/sightcall/universal/model/Session;->rtccJwt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/Rtcc;->provideRtccJWT(Ljava/lang/String;)V

    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object v0

    iget-object v1, p1, Lcom/sightcall/universal/model/Session;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object v1, v1, Lcom/sightcall/universal/agent/Usecase;->liveTranslation:Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;->getLiveTranslationRole(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;

    move-result-object v2

    new-instance v3, Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sightcall/universal/api/Environment;->baseUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/sightcall/universal/di/SDKInjectorI;->createReferenceComponent(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;Ljava/lang/String;)Lcom/sightcall/universal/ReferenceComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/ReferenceComponent;->getLiveTranslationAPI()Lcom/sightcall/livetranslation/LiveTranslationAPI;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->isReady()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lmt;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lmt;-><init>(I)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->take(J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lp3;

    const/16 v2, 0xd

    invoke-direct {v1, p0, p1, v2}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sightcall/universal/scenario/steps/ConsentStep;->nextStep(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/scenario/Step;

    move-result-object p1

    filled-new-array {p1}, [Lcom/sightcall/universal/scenario/Step;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->success([Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method

.method public static with(Lcom/sightcall/universal/agent/Usecase;)Lcom/sightcall/universal/scenario/Step;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/model/Config;

    invoke-direct {v0}, Lcom/sightcall/universal/model/Config;-><init>()V

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Usecase;->hash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/model/Config;->hash(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;

    move-result-object p0

    new-instance v0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;-><init>(Lcom/sightcall/universal/model/Config;)V

    return-object v0
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;->sessionRepository:Lcom/sightcall/session/SessionRepository;

    invoke-interface {v0}, Lcom/sightcall/session/SessionRepository;->interruptGetReference()V

    invoke-super {p0}, Lcom/sightcall/universal/scenario/Step;->interrupt()V

    return-void
.end method

.method public onBind(Lcom/sightcall/universal/scenario/Scenario;)V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onFetchReferenceFailure()V
    .locals 1

    sget-object v0, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->unbindService()V

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sightcall/universal/scenario/Step;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Step;->failure([Lcom/sightcall/universal/scenario/Step;)V

    return-void
.end method

.method public onFetchReferenceSuccess(Lcom/sightcall/universal/model/Session;)V
    .locals 1

    sget-object v0, Lcom/sightcall/universal/scenario/Step$State;->ACTIVE:Lcom/sightcall/universal/scenario/Step$State;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Step;->is(Lcom/sightcall/universal/scenario/Step$State;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;->onReferenceReady(Lcom/sightcall/universal/model/Session;)V

    return-void
.end method

.method public onServiceConnected(Lcom/sightcall/universal/scenario/ScenarioService;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sightcall/universal/scenario/Step;->onServiceConnected(Lcom/sightcall/universal/scenario/ScenarioService;)V

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onServiceConnected() called with: service = ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;->sessionRepository:Lcom/sightcall/session/SessionRepository;

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->uri()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep$1;

    invoke-direct {v2, p0, p1}, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep$1;-><init>(Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;Lcom/sightcall/universal/scenario/ScenarioService;)V

    invoke-interface {v0, v1, v2}, Lcom/sightcall/session/SessionRepository;->getReference(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    return-void
.end method

.method public onUnbind()V
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->networkExpected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/sightcall/universal/scenario/Step;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Step;->failure([Lcom/sightcall/universal/scenario/Step;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->bindService()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FetchReferenceStep{hash=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->hash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
