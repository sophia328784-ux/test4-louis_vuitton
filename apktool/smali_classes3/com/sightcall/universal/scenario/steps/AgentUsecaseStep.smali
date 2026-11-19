.class public Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;
.super Lcom/sightcall/universal/scenario/Step;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/agent/FetchUsecaseCallback;


# instance fields
.field analyticsAgentSessionRepository:Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field final config:Lcom/sightcall/universal/model/Config;

.field private final usecaseId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/model/Config;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/scenario/Step;-><init>()V

    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sightcall/universal/di/SDKInjectorI;->inject(Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;)V

    iput-object p1, p0, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;->config:Lcom/sightcall/universal/model/Config;

    iput-object p2, p0, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;->usecaseId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;Lcom/sightcall/universal/model/Session;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;->lambda$onFetchUsecaseSuccess$1(Lcom/sightcall/universal/model/Session;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;Lcom/sightcall/universal/model/Session;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;->lambda$getAnalyticsAgentSession$2(Lcom/sightcall/universal/model/Session;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Boolean;)Z
    .locals 0

    invoke-static {p0}, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;->lambda$onFetchUsecaseSuccess$0(Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method private getAnalyticsAgentSession(Lcom/sightcall/universal/model/Session;)V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;->analyticsAgentSessionRepository:Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;

    new-instance v1, Ll0;

    const/4 v2, 0x7

    invoke-direct {v1, p0, p1, v2}, Ll0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, p1, v1}, Lcom/sightcall/universal/scenario/steps/FetchAnalyticsAgentSessionKt;->getAnalyticsAgentSession(Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;Lcom/sightcall/universal/model/Session;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private synthetic lambda$getAnalyticsAgentSession$2(Lcom/sightcall/universal/model/Session;)Lkotlin/Unit;
    .locals 0

    invoke-static {p1}, Lcom/sightcall/universal/scenario/steps/ConsentStep;->nextStep(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/scenario/Step;

    move-result-object p1

    filled-new-array {p1}, [Lcom/sightcall/universal/scenario/Step;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/scenario/Step;->success([Lcom/sightcall/universal/scenario/Step;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$onFetchUsecaseSuccess$0(Ljava/lang/Boolean;)Z
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

.method private synthetic lambda$onFetchUsecaseSuccess$1(Lcom/sightcall/universal/model/Session;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;->getAnalyticsAgentSession(Lcom/sightcall/universal/model/Session;)V

    return-void
.end method

.method public static with(Lcom/sightcall/universal/fcm/messages/GuestReady;)Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;
    .locals 3

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->code()Lcom/sightcall/universal/agent/Code;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/fcm/messages/GuestReady;->correspondsTo(Lcom/sightcall/universal/agent/Code;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sightcall/universal/model/Config;

    invoke-direct {v1}, Lcom/sightcall/universal/model/Config;-><init>()V

    sget-object v2, Lcom/sightcall/universal/model/Session$Role;->HOST:Lcom/sightcall/universal/model/Session$Role;

    invoke-virtual {v1, v2}, Lcom/sightcall/universal/model/Config;->role(Lcom/sightcall/universal/model/Session$Role;)Lcom/sightcall/universal/model/Config;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sightcall/universal/model/Config;->code(Lcom/sightcall/universal/agent/Code;)Lcom/sightcall/universal/model/Config;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/model/Config;->guestReady(Lcom/sightcall/universal/fcm/messages/GuestReady;)Lcom/sightcall/universal/model/Config;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;

    invoke-virtual {p0}, Lcom/sightcall/universal/fcm/messages/GuestReady;->usecaseId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;-><init>(Lcom/sightcall/universal/model/Config;Ljava/lang/String;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onBind(Lcom/sightcall/universal/scenario/Scenario;)V
    .locals 0

    return-void
.end method

.method public onFetchUsecaseError(Lcom/sightcall/universal/agent/FetchUsecaseCallback$Error;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->unbindService()V

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->interrupt()V

    return-void
.end method

.method public onFetchUsecaseSuccess(Lcom/sightcall/universal/agent/FetchUsecaseCallback$Success;)V
    .locals 6

    new-instance v0, Lcom/sightcall/universal/model/Session;

    iget-object v1, p0, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/FetchUsecaseCallback$Success;->usecase()Lcom/sightcall/universal/agent/Usecase;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/sightcall/universal/model/Session;-><init>(Lcom/sightcall/universal/model/Config;Lcom/sightcall/universal/agent/Usecase;)V

    invoke-static {}, Lcom/sightcall/universal/di/SDKInjector;->getSdkInjector()Lcom/sightcall/universal/di/SDKInjectorI;

    move-result-object p1

    new-instance v1, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;

    invoke-direct {v1}, Lcom/sightcall/session/Reference$UseCase$LiveTranslation;-><init>()V

    sget-object v2, Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;->Host:Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;

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

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Session;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sightcall/universal/api/Environment;->baseUrl()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/sightcall/universal/di/SDKInjectorI;->createReferenceComponent(Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;Ljava/lang/String;)Lcom/sightcall/universal/ReferenceComponent;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/universal/ReferenceComponent;->getLiveTranslationAPI()Lcom/sightcall/livetranslation/LiveTranslationAPI;

    move-result-object p1

    invoke-interface {p1}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->getEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/sightcall/livetranslation/LiveTranslationAPI;->isReady()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lx1;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lx1;-><init>(I)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-wide/16 v1, 0x1

    invoke-virtual {p1, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->take(J)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lp3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;->getAnalyticsAgentSession(Lcom/sightcall/universal/model/Session;)V

    return-void
.end method

.method public onServiceConnected(Lcom/sightcall/universal/scenario/ScenarioService;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sightcall/universal/scenario/Step;->onServiceConnected(Lcom/sightcall/universal/scenario/ScenarioService;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object p1

    iget-object v0, p0, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;->usecaseId:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/sightcall/universal/agent/UniversalAgent;->fetchUsecase(Ljava/lang/String;Lcom/sightcall/universal/agent/FetchUsecaseCallback;)V

    return-void
.end method

.method public onUnbind()V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 2

    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->networkExpected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array v0, v1, [Lcom/sightcall/universal/scenario/Step;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Step;->failure([Lcom/sightcall/universal/scenario/Step;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v0, v1, [Lcom/sightcall/universal/scenario/Step;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/scenario/Step;->failure([Lcom/sightcall/universal/scenario/Step;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sightcall/universal/scenario/Step;->bindService()V

    return-void
.end method
