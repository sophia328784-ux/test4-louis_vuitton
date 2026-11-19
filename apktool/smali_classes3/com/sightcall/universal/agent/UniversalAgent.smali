.class public Lcom/sightcall/universal/agent/UniversalAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private final context:Landroid/content/Context;

.field private currentStep:Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;

.field private final isFeatureAgentEnabled:Z

.field private final isFeatureAgentNotificationsEnabled:Z

.field private final isRegistering:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final lazyAgent:Lcom/sightcall/universal/util/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/util/Lazy<",
            "Lcom/sightcall/universal/agent/Agent;",
            ">;"
        }
    .end annotation
.end field

.field private lazyArOverlayModels:Lcom/sightcall/universal/util/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/util/Lazy<",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/ArOverlayModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lazyCode:Lcom/sightcall/universal/util/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/util/Lazy<",
            "Lcom/sightcall/universal/agent/Code;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyConsent:Lcom/sightcall/universal/util/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/util/Lazy<",
            "Lcom/sightcall/universal/agent/Consent;",
            ">;"
        }
    .end annotation
.end field

.field private final lazyIntegrationScopes:Lcom/sightcall/universal/util/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/util/Lazy<",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/IntegrationScope;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lazyProviderCustimizations:Lcom/sightcall/universal/util/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/util/Lazy<",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/ProviderCustomization;",
            ">;>;"
        }
    .end annotation
.end field

.field private final lazyUsecases:Lcom/sightcall/universal/util/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sightcall/universal/util/Lazy<",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/Usecase;",
            ">;>;"
        }
    .end annotation
.end field

.field private final repository:Lcom/sightcall/universal/agent/Repository;

.field final resultReceiver:Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UNIVERSAL_AGENT"

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Ljava/lang/String;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/agent/UniversalAgent;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sightcall/universal/agent/UniversalAgent$1;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/agent/UniversalAgent$1;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;)V

    iput-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->resultReceiver:Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;

    new-instance v0, Lcom/sightcall/universal/agent/UniversalAgent$2;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/agent/UniversalAgent$2;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;)V

    iput-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyAgent:Lcom/sightcall/universal/util/Lazy;

    new-instance v0, Lcom/sightcall/universal/agent/UniversalAgent$3;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/agent/UniversalAgent$3;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;)V

    iput-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyCode:Lcom/sightcall/universal/util/Lazy;

    new-instance v0, Lcom/sightcall/universal/agent/UniversalAgent$4;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/agent/UniversalAgent$4;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;)V

    iput-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyUsecases:Lcom/sightcall/universal/util/Lazy;

    new-instance v0, Lcom/sightcall/universal/agent/UniversalAgent$5;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/agent/UniversalAgent$5;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;)V

    iput-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyConsent:Lcom/sightcall/universal/util/Lazy;

    new-instance v0, Lcom/sightcall/universal/agent/UniversalAgent$6;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/agent/UniversalAgent$6;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;)V

    iput-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyProviderCustimizations:Lcom/sightcall/universal/util/Lazy;

    new-instance v0, Lcom/sightcall/universal/agent/UniversalAgent$7;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/agent/UniversalAgent$7;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;)V

    iput-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyIntegrationScopes:Lcom/sightcall/universal/util/Lazy;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->isRegistering:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/sightcall/universal/agent/UniversalAgent$8;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/agent/UniversalAgent$8;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;)V

    iput-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyArOverlayModels:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->context:Landroid/content/Context;

    sget-object v0, Lcom/sightcall/universal/util/Feature;->AGENT:Lcom/sightcall/universal/util/Feature;

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/util/Feature;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->isFeatureAgentEnabled:Z

    sget-object v0, Lcom/sightcall/universal/util/Feature;->AGENT_NOTIFICATIONS:Lcom/sightcall/universal/util/Feature;

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/util/Feature;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->isFeatureAgentNotificationsEnabled:Z

    new-instance v0, Lcom/sightcall/universal/agent/Repository;

    invoke-static {}, Lcom/sightcall/universal/api/Apis;->lazyMoshi()Lcom/sightcall/universal/util/Lazy;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sightcall/universal/agent/Repository;-><init>(Landroid/content/Context;Lcom/sightcall/universal/util/Lazy;)V

    iput-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->repository:Lcom/sightcall/universal/agent/Repository;

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/event/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->lambda$syncFcmToken$0(Lcom/sightcall/universal/agent/Agent;Ljava/lang/String;)V

    return-void
.end method

.method private api(Lcom/sightcall/universal/agent/Agent;)Lcom/sightcall/universal/agent/AgentApi;
    .locals 0

    .line 14
    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Agent;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/agent/UniversalAgent;->api(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/agent/AgentApi;

    move-result-object p0

    return-object p0
.end method

.method private api(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/agent/AgentApi;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sightcall/universal/api/Environment;->PROD:Lcom/sightcall/universal/api/Environment;

    :goto_0
    const-class p0, Lcom/sightcall/universal/agent/AgentApi;

    invoke-static {p0, p1}, Lcom/sightcall/universal/api/Apis;->get(Ljava/lang/Class;Lcom/sightcall/universal/api/Environment;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/agent/AgentApi;

    return-object p0
.end method

.method private applyUpdates(Lcom/sightcall/universal/agent/IdentityExtractor;Lcom/sightcall/universal/agent/Agent;)V
    .locals 2

    iget-object v0, p1, Lcom/sightcall/universal/agent/IdentityExtractor;->identity:Lcom/sightcall/universal/agent/Identity;

    invoke-virtual {p2, v0}, Lcom/sightcall/universal/agent/Agent;->update(Lcom/sightcall/universal/agent/Identity;)Lcom/sightcall/universal/agent/Agent;

    iget-object v0, p1, Lcom/sightcall/universal/agent/IdentityExtractor;->included:[Lcom/sightcall/universal/api/JsonApi$Included;

    invoke-virtual {p2, v0}, Lcom/sightcall/universal/agent/Agent;->update([Lcom/sightcall/universal/api/JsonApi$Included;)Lcom/sightcall/universal/agent/Agent;

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyAgent:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {v0, p2}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/sightcall/universal/agent/IdentityExtractor;->consent:Lcom/sightcall/universal/agent/Consent;

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyConsent:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {v0, p2}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    iget-object p2, p1, Lcom/sightcall/universal/agent/IdentityExtractor;->arOverlayModels:Ljava/util/List;

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyArOverlayModels:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {v0, p2}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/sightcall/universal/agent/IdentityExtractor;->usecases:Ljava/util/List;

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyUsecases:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {v0, p2}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/agent/Usecases;

    invoke-direct {v1, p2}, Lcom/sightcall/universal/agent/Usecases;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/sightcall/universal/agent/IdentityExtractor;->providerCustomizations:Ljava/util/List;

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyProviderCustimizations:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {v0, p2}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    iget-object p2, p1, Lcom/sightcall/universal/agent/IdentityExtractor;->integrationScopes:Ljava/util/List;

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyIntegrationScopes:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {v0, p2}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyCode:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p2}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sightcall/universal/agent/Code;

    iget-object p1, p1, Lcom/sightcall/universal/agent/IdentityExtractor;->code:Lcom/sightcall/universal/agent/Code;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Lcom/sightcall/universal/agent/Code;->correspondsTo(Lcom/sightcall/universal/agent/Code;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/sightcall/universal/agent/Code;->applyState(Lcom/sightcall/universal/agent/Code;)V

    :cond_1
    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyCode:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private authToken()Lcom/sightcall/universal/api/Headers$Authorization$Bearer;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Agent;->token()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lcom/sightcall/universal/api/Headers$Authorization$Bearer;->with(Ljava/lang/String;)Lcom/sightcall/universal/api/Headers$Authorization$Bearer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/agent/UniversalAgent;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->currentStep:Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sightcall/universal/agent/UniversalAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->isRegistering:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private defaultApi()Lcom/sightcall/universal/agent/AgentApi;
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->defaultEnv()Lcom/sightcall/universal/api/Environment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->api(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/agent/AgentApi;

    move-result-object p0

    return-object p0
.end method

.method private defaultEnv()Lcom/sightcall/universal/api/Environment;
    .locals 0

    invoke-static {}, Lcom/sightcall/universal/Universal;->settings()Lcom/sightcall/universal/util/UniversalSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/util/UniversalSettings;->defaultEnvironment()Lcom/sightcall/universal/util/Lazy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/api/Environment;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lcom/sightcall/universal/api/Environment;->PROD:Lcom/sightcall/universal/api/Environment;

    return-object p0
.end method

.method private detectAgentInvalidated(Lcom/sightcall/universal/agent/Agent;Lretrofit2/Call;Lretrofit2/Response;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/agent/Agent;",
            "Lretrofit2/Call<",
            "*>;",
            "Lretrofit2/Response<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object p2

    const/4 v0, 0x1

    if-eq p1, p2, :cond_0

    return v0

    :cond_0
    iget-object p2, p3, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-boolean p3, p2, Lokhttp3/Response;->r:Z

    if-nez p3, :cond_1

    iget p2, p2, Lokhttp3/Response;->e:I

    const/16 p3, 0x191

    if-ne p2, p3, :cond_1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/agent/UniversalAgent;->invalidate(Lcom/sightcall/universal/agent/Agent;)V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic e(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/util/Lazy;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyAgent:Lcom/sightcall/universal/util/Lazy;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/util/Lazy;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyCode:Lcom/sightcall/universal/util/Lazy;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/util/Lazy;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyConsent:Lcom/sightcall/universal/util/Lazy;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/util/Lazy;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyUsecases:Lcom/sightcall/universal/util/Lazy;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sightcall/universal/agent/UniversalAgent;)Lcom/sightcall/universal/agent/Repository;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->repository:Lcom/sightcall/universal/agent/Repository;

    return-object p0
.end method

.method private invalidate(Lcom/sightcall/universal/agent/Agent;)V
    .locals 1

    const/4 v0, 0x1

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->wipe(Lcom/sightcall/universal/agent/Agent;Z)V

    return-void
.end method

.method public static bridge synthetic j(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/IdentityExtractor;Lcom/sightcall/universal/agent/Agent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent;->applyUpdates(Lcom/sightcall/universal/agent/IdentityExtractor;Lcom/sightcall/universal/agent/Agent;)V

    return-void
.end method

.method public static bridge synthetic k(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lretrofit2/Call;Lretrofit2/Response;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/universal/agent/UniversalAgent;->detectAgentInvalidated(Lcom/sightcall/universal/agent/Agent;Lretrofit2/Call;Lretrofit2/Response;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic l(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/agent/UniversalAgent;->invalidate(Lcom/sightcall/universal/agent/Agent;)V

    return-void
.end method

.method private synthetic lambda$syncFcmToken$0(Lcom/sightcall/universal/agent/Agent;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sightcall/universal/agent/UniversalAgent;->api(Lcom/sightcall/universal/agent/Agent;)Lcom/sightcall/universal/agent/AgentApi;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Agent;->token()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sightcall/universal/agent/UniversalAgent;->tokenV3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/sightcall/universal/agent/pushnotification/PushNotificationMappersKt;->createUpdatePushNotificationRequest(Ljava/lang/String;)Lcom/sightcall/universal/agent/pushnotification/UpdatePushNotificationRequest;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sightcall/universal/agent/AgentApi;->updatePushNotificationToken(Ljava/lang/String;Lcom/sightcall/universal/agent/pushnotification/UpdatePushNotificationRequest;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/agent/UniversalAgent$23;

    invoke-direct {v1, p0, p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent$23;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method public static bridge synthetic m(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->wipe(Lcom/sightcall/universal/agent/Agent;Z)V

    return-void
.end method

.method public static bridge synthetic n()Lnet/rtccloud/sdk/util/OldLogger;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/agent/UniversalAgent;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    return-object v0
.end method

.method public static bridge synthetic o(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/universal/agent/UniversalAgent;->traceOnFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic p(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/universal/agent/UniversalAgent;->traceOnResponse(Lretrofit2/Call;Lretrofit2/Response;)V

    return-void
.end method

.method private static shouldSyncFcmToken(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private tokenV3(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object p0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Agent;->token()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/sightcall/universal/api/Headers$Authorization$PlaneTokenV3;->with(Ljava/lang/String;)Lcom/sightcall/universal/api/Headers$Authorization$PlaneTokenV3;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static traceOnFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object p0

    sget-object v0, Lcom/sightcall/universal/agent/UniversalAgent;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/Request;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static traceOnResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "*>;",
            "Lretrofit2/Response<",
            "*>;)V"
        }
    .end annotation

    invoke-interface {p0}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object p0

    sget-object v0, Lcom/sightcall/universal/agent/UniversalAgent;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lokhttp3/Request;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " ["

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget p0, p0, Lokhttp3/Response;->e:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lretrofit2/Response;->a:Lokhttp3/Response;

    iget-object p0, p0, Lokhttp3/Response;->d:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method private updateIdentity(Lcom/sightcall/universal/agent/Identity;Lcom/sightcall/universal/agent/UpdateIdentityCallback;)V
    .locals 3

    const-string v0, "[identity] must not be null"

    invoke-static {p1, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[callback] must not be null"

    invoke-static {p2, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/sightcall/universal/agent/UpdateIdentityCallback$Error;

    invoke-direct {p0}, Lcom/sightcall/universal/agent/UpdateIdentityCallback$Error;-><init>()V

    invoke-interface {p2, p0}, Lcom/sightcall/universal/agent/UpdateIdentityCallback;->onUpdateIdentityError(Lcom/sightcall/universal/agent/UpdateIdentityCallback$Error;)V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->api(Lcom/sightcall/universal/agent/Agent;)Lcom/sightcall/universal/agent/AgentApi;

    move-result-object v1

    invoke-direct {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->authToken()Lcom/sightcall/universal/api/Headers$Authorization$Bearer;

    move-result-object v2

    invoke-static {p1}, Lcom/sightcall/universal/api/JsonApi;->wrap(Ljava/lang/Object;)Lcom/sightcall/universal/api/JsonApi$Wrapper;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Lcom/sightcall/universal/agent/AgentApi;->updateIdentity(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/sightcall/universal/agent/UniversalAgent$24;

    invoke-direct {v1, p0, v0, p2}, Lcom/sightcall/universal/agent/UniversalAgent$24;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/agent/UpdateIdentityCallback;)V

    invoke-interface {p1, v1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method private wipe(Lcom/sightcall/universal/agent/Agent;Z)V
    .locals 1

    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyAgent:Lcom/sightcall/universal/util/Lazy;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyCode:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p2, v0}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyUsecases:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p2, v0}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyConsent:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p2, v0}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyProviderCustimizations:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p2, v0}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyIntegrationScopes:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->media()Lcom/sightcall/universal/media/UniversalMedia;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/media/UniversalMedia;->invalidate()V

    if-eqz p1, :cond_0

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p0

    new-instance p2, Lcom/sightcall/universal/agent/UnregistrationEvent;

    invoke-direct {p2, p1}, Lcom/sightcall/universal/agent/UnregistrationEvent;-><init>(Lcom/sightcall/universal/agent/Agent;)V

    invoke-virtual {p0, p2}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public acceptConsent(Lcom/sightcall/universal/agent/Consent;Lcom/sightcall/universal/agent/AcceptConsentCallback;)V
    .locals 3

    const-string v0, "[consent] must not be null"

    invoke-static {p1, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[callback] must not be null"

    invoke-static {p2, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/sightcall/universal/agent/AcceptConsentCallback$Error;

    invoke-direct {p0}, Lcom/sightcall/universal/agent/AcceptConsentCallback$Error;-><init>()V

    invoke-interface {p2, p0}, Lcom/sightcall/universal/agent/AcceptConsentCallback;->onAcceptConsentError(Lcom/sightcall/universal/agent/AcceptConsentCallback$Error;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sightcall/universal/agent/Identity;->acceptConsent(Lcom/sightcall/universal/agent/Consent;)Lcom/sightcall/universal/agent/Identity;

    move-result-object v1

    new-instance v2, Lcom/sightcall/universal/agent/UniversalAgent$26;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/sightcall/universal/agent/UniversalAgent$26;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/AcceptConsentCallback;Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/agent/Consent;)V

    invoke-direct {p0, v1, v2}, Lcom/sightcall/universal/agent/UniversalAgent;->updateIdentity(Lcom/sightcall/universal/agent/Identity;Lcom/sightcall/universal/agent/UpdateIdentityCallback;)V

    return-void
.end method

.method public arOverlayModels()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/ArOverlayModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyArOverlayModels:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public code()Lcom/sightcall/universal/agent/Code;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyCode:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/agent/Code;

    return-object p0
.end method

.method public config(Lcom/sightcall/universal/agent/Usecase;)Lcom/sightcall/universal/model/Config;
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object p0

    new-instance v0, Lcom/sightcall/universal/model/Config;

    invoke-direct {v0}, Lcom/sightcall/universal/model/Config;-><init>()V

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Usecase;->hash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/model/Config;->hash(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;

    move-result-object p1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Agent;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sightcall/universal/model/Config;->environment(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/model/Config;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Agent;->hap()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/model/Config;->hap(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;

    :cond_0
    return-object p1
.end method

.method public consent()Lcom/sightcall/universal/agent/Consent;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyConsent:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/agent/Consent;

    return-object p0
.end method

.method public declared-synchronized createCode(Lcom/sightcall/universal/agent/CreateCode;Lcom/sightcall/universal/agent/CreateCodeCallback;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "[callback] must not be null"

    invoke-static {p2, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[create] must not be null"

    invoke-static {p1, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sightcall/universal/agent/UniversalAgent;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "createCode() expected a valid agent instance"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/universal/agent/CreateCodeCallback$Error;

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/CreateCodeCallback$Error;-><init>(Lcom/sightcall/universal/agent/CreateCode;)V

    invoke-interface {p2, v0}, Lcom/sightcall/universal/agent/CreateCodeCallback;->onCreateCodeError(Lcom/sightcall/universal/agent/CreateCodeCallback$Error;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/sightcall/universal/agent/CreateCode;->usecase()Lcom/sightcall/universal/agent/Usecase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/universal/agent/Usecase;->callDistribution()Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    move-result-object v1

    sget-object v2, Lcom/sightcall/universal/agent/Usecase$CallDistribution;->CODE:Lcom/sightcall/universal/agent/Usecase$CallDistribution;

    if-eq v1, v2, :cond_1

    sget-object v0, Lcom/sightcall/universal/agent/UniversalAgent;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v3, "createCode() expected usecase callDistribution [%s], but found [%s]"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/sightcall/universal/agent/CreateCodeCallback$Error;

    invoke-direct {v0, p1}, Lcom/sightcall/universal/agent/CreateCodeCallback$Error;-><init>(Lcom/sightcall/universal/agent/CreateCode;)V

    invoke-interface {p2, v0}, Lcom/sightcall/universal/agent/CreateCodeCallback;->onCreateCodeError(Lcom/sightcall/universal/agent/CreateCodeCallback$Error;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    sget-object v1, Lcom/sightcall/universal/agent/UniversalAgent$35;->$SwitchMap$com$sightcall$universal$agent$CreateCode$Media:[I

    iget-object v2, p1, Lcom/sightcall/universal/agent/CreateCode;->media:Lcom/sightcall/universal/agent/CreateCode$Media;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/sightcall/universal/agent/CreateCode;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object v2, p1, Lcom/sightcall/universal/agent/CreateCode;->reference:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sightcall/universal/agent/Pincode;->url(Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;)Lcom/sightcall/universal/agent/Pincode;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_3
    iget-object v1, p1, Lcom/sightcall/universal/agent/CreateCode;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object v2, p1, Lcom/sightcall/universal/agent/CreateCode;->reference:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/agent/CreateCode;->recipient:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sightcall/universal/agent/Pincode;->email(Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/agent/Pincode;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lcom/sightcall/universal/agent/CreateCode;->usecase:Lcom/sightcall/universal/agent/Usecase;

    iget-object v2, p1, Lcom/sightcall/universal/agent/CreateCode;->reference:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/universal/agent/CreateCode;->recipient:Ljava/lang/String;

    iget-object v4, p1, Lcom/sightcall/universal/agent/CreateCode;->countryCode:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/sightcall/universal/agent/Pincode;->sms(Lcom/sightcall/universal/agent/Usecase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sightcall/universal/agent/Pincode;

    move-result-object v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->api(Lcom/sightcall/universal/agent/Agent;)Lcom/sightcall/universal/agent/AgentApi;

    move-result-object v2

    invoke-direct {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->authToken()Lcom/sightcall/universal/api/Headers$Authorization$Bearer;

    move-result-object v3

    invoke-static {v1}, Lcom/sightcall/universal/api/JsonApi;->wrap(Ljava/lang/Object;)Lcom/sightcall/universal/api/JsonApi$Wrapper;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/sightcall/universal/agent/AgentApi;->createPincode(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/sightcall/universal/agent/UniversalAgent$28;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/sightcall/universal/agent/UniversalAgent$28;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/agent/CreateCodeCallback;Lcom/sightcall/universal/agent/CreateCode;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public createRecording(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/agent/CreateRecordingCallback;)V
    .locals 2

    const-string v0, "[session] must not be null"

    invoke-static {p1, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[callback] must not be null"

    invoke-static {p2, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v1

    invoke-virtual {v1}, Lnet/rtccloud/sdk/Rtcc;->user()Lnet/rtccloud/sdk/User;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sightcall/universal/model/Session;->caseReportId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->api(Lcom/sightcall/universal/agent/Agent;)Lcom/sightcall/universal/agent/AgentApi;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->token()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->tokenV3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/sightcall/universal/agent/recording/RecordingV3MappersKt;->createRecording(Lcom/sightcall/universal/model/Session;)Lcom/sightcall/universal/agent/recording/RecordingV3Request;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/sightcall/universal/agent/AgentApi;->startRecording(Ljava/lang/String;Lcom/sightcall/universal/agent/recording/RecordingV3Request;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/sightcall/universal/agent/UniversalAgent$32;

    invoke-direct {v0, p0, p2}, Lcom/sightcall/universal/agent/UniversalAgent$32;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/CreateRecordingCallback;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void

    :cond_1
    :goto_0
    new-instance p0, Lcom/sightcall/universal/agent/CreateRecordingCallback$Error;

    invoke-direct {p0}, Lcom/sightcall/universal/agent/CreateRecordingCallback$Error;-><init>()V

    invoke-interface {p2, p0}, Lcom/sightcall/universal/agent/CreateRecordingCallback;->onCreateRecordingError(Lcom/sightcall/universal/agent/CreateRecordingCallback$Error;)V

    return-void
.end method

.method public deleteCode(Lcom/sightcall/universal/agent/Code;Lcom/sightcall/universal/agent/DeleteCodeCallback;)V
    .locals 4

    const-string v0, "[code] must not be null"

    invoke-static {p1, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[callback] must not be null"

    invoke-static {p2, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/sightcall/universal/agent/DeleteCodeCallback$Error;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/agent/DeleteCodeCallback$Error;-><init>(Lcom/sightcall/universal/agent/Code;)V

    invoke-interface {p2, p0}, Lcom/sightcall/universal/agent/DeleteCodeCallback;->onDeleteCodeError(Lcom/sightcall/universal/agent/DeleteCodeCallback$Error;)V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->api(Lcom/sightcall/universal/agent/Agent;)Lcom/sightcall/universal/agent/AgentApi;

    move-result-object v1

    invoke-direct {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->authToken()Lcom/sightcall/universal/api/Headers$Authorization$Bearer;

    move-result-object v2

    iget-object v3, p1, Lcom/sightcall/universal/agent/Code;->value:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/sightcall/universal/agent/AgentApi;->deletePincode(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/sightcall/universal/agent/UniversalAgent$31;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/sightcall/universal/agent/UniversalAgent$31;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/agent/Code;Lcom/sightcall/universal/agent/DeleteCodeCallback;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method public fetchCode(Ljava/lang/String;Lcom/sightcall/universal/agent/FetchCodeCallback;)V
    .locals 3

    const-string v0, "[id] must not be null"

    invoke-static {p1, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[callback] must not be null"

    invoke-static {p2, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/sightcall/universal/agent/FetchCodeCallback$Error;

    invoke-direct {p0}, Lcom/sightcall/universal/agent/FetchCodeCallback$Error;-><init>()V

    invoke-interface {p2, p0}, Lcom/sightcall/universal/agent/FetchCodeCallback;->onFetchCodeError(Lcom/sightcall/universal/agent/FetchCodeCallback$Error;)V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->api(Lcom/sightcall/universal/agent/Agent;)Lcom/sightcall/universal/agent/AgentApi;

    move-result-object v1

    invoke-direct {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->authToken()Lcom/sightcall/universal/api/Headers$Authorization$Bearer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/sightcall/universal/agent/AgentApi;->getPincode(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/sightcall/universal/agent/UniversalAgent$29;

    invoke-direct {v1, p0, v0, p2}, Lcom/sightcall/universal/agent/UniversalAgent$29;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/agent/FetchCodeCallback;)V

    invoke-interface {p1, v1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method public fetchConsent(Lcom/sightcall/universal/agent/FetchConsentCallback;)V
    .locals 3

    const-string v0, "[callback] must not be null"

    invoke-static {p1, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/sightcall/universal/agent/FetchConsentCallback$Error;

    invoke-direct {p0}, Lcom/sightcall/universal/agent/FetchConsentCallback$Error;-><init>()V

    invoke-interface {p1, p0}, Lcom/sightcall/universal/agent/FetchConsentCallback;->onFetchConsentError(Lcom/sightcall/universal/agent/FetchConsentCallback$Error;)V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->api(Lcom/sightcall/universal/agent/Agent;)Lcom/sightcall/universal/agent/AgentApi;

    move-result-object v1

    invoke-direct {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->authToken()Lcom/sightcall/universal/api/Headers$Authorization$Bearer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sightcall/universal/agent/AgentApi;->getConsent(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/sightcall/universal/agent/UniversalAgent$25;

    invoke-direct {v2, p0, v0, p1}, Lcom/sightcall/universal/agent/UniversalAgent$25;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/agent/FetchConsentCallback;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method public fetchUsecase(Ljava/lang/String;Lcom/sightcall/universal/agent/FetchUsecaseCallback;)V
    .locals 3

    const-string v0, "[id] must not be null"

    invoke-static {p1, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[callback] must not be null"

    invoke-static {p2, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/sightcall/universal/agent/FetchUsecaseCallback$Error;

    invoke-direct {p0}, Lcom/sightcall/universal/agent/FetchUsecaseCallback$Error;-><init>()V

    invoke-interface {p2, p0}, Lcom/sightcall/universal/agent/FetchUsecaseCallback;->onFetchUsecaseError(Lcom/sightcall/universal/agent/FetchUsecaseCallback$Error;)V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->api(Lcom/sightcall/universal/agent/Agent;)Lcom/sightcall/universal/agent/AgentApi;

    move-result-object v1

    invoke-direct {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->authToken()Lcom/sightcall/universal/api/Headers$Authorization$Bearer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/sightcall/universal/agent/AgentApi;->getUsecase(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance v1, Lcom/sightcall/universal/agent/UniversalAgent$27;

    invoke-direct {v1, p0, v0, p2}, Lcom/sightcall/universal/agent/UniversalAgent$27;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/agent/FetchUsecaseCallback;)V

    invoke-interface {p1, v1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method public fetchUsecases(Lcom/sightcall/universal/agent/FetchUsecasesCallback;)V
    .locals 1

    const-string v0, "[callback] must not be null"

    invoke-static {p1, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/sightcall/universal/agent/FetchUsecasesCallback$Error;

    invoke-direct {p0}, Lcom/sightcall/universal/agent/FetchUsecasesCallback$Error;-><init>()V

    invoke-interface {p1, p0}, Lcom/sightcall/universal/agent/FetchUsecasesCallback;->onFetchUsecasesError(Lcom/sightcall/universal/agent/FetchUsecasesCallback$Error;)V

    return-void

    :cond_0
    new-instance v0, Lcom/sightcall/universal/agent/UniversalAgent$19;

    invoke-direct {v0, p0, p1}, Lcom/sightcall/universal/agent/UniversalAgent$19;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/FetchUsecasesCallback;)V

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->refresh(Lcom/sightcall/universal/agent/RefreshCallback;)V

    return-void
.end method

.method public get()Lcom/sightcall/universal/agent/Agent;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyAgent:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/agent/Agent;

    return-object p0
.end method

.method public integrationScopes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/IntegrationScope;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyIntegrationScopes:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public invalidate()V
    .locals 2

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sightcall/universal/agent/UniversalAgent;->wipe(Lcom/sightcall/universal/agent/Agent;Z)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onAgentUnregistered(Lcom/sightcall/universal/fcm/messages/AgentUnregistered;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Lcom/sightcall/universal/fcm/messages/AgentUnregistered;->relatesTo(Lcom/sightcall/universal/agent/Agent;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p0, Lcom/sightcall/universal/agent/UniversalAgent;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string p1, "agent-unregistered"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Invalid [%s]"

    invoke-virtual {p0, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->invalidate(Lcom/sightcall/universal/agent/Agent;)V

    return-void
.end method

.method public onCodeCreated(Lcom/sightcall/universal/fcm/messages/Code$Created;)V
    .locals 2
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sightcall/universal/agent/UniversalAgent;->isFeatureAgentEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sightcall/universal/agent/UniversalAgent;->isFeatureAgentNotificationsEnabled:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sightcall/universal/fcm/messages/Code$Created;->id()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sightcall/universal/agent/UniversalAgent$33;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/agent/UniversalAgent$33;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;)V

    invoke-virtual {p0, p1, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->fetchCode(Ljava/lang/String;Lcom/sightcall/universal/agent/FetchCodeCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCodeDestroyed(Lcom/sightcall/universal/fcm/messages/Code$Destroyed;)V
    .locals 4
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sightcall/universal/agent/UniversalAgent;->isFeatureAgentEnabled:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sightcall/universal/agent/UniversalAgent;->isFeatureAgentNotificationsEnabled:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->code()Lcom/sightcall/universal/agent/Code;

    move-result-object v0

    const-string v1, "pincode-destroyed"

    if-nez v0, :cond_1

    sget-object p0, Lcom/sightcall/universal/agent/UniversalAgent;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string p1, "Unknown [%s], no [code] available"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v2, v0, Lcom/sightcall/universal/agent/Code;->value:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sightcall/universal/fcm/messages/Code$Destroyed;->id()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object p0, Lcom/sightcall/universal/agent/UniversalAgent;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Code;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sightcall/universal/fcm/messages/Code$Destroyed;->id()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Invalid [%s], expecting pincode [%s] but got [%s]"

    invoke-virtual {p0, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/sightcall/universal/agent/Code;->deleted:Z

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyCode:Lcom/sightcall/universal/util/Lazy;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p0

    invoke-virtual {p0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCodeResent(Lcom/sightcall/universal/fcm/messages/Code$Resent;)V
    .locals 2
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sightcall/universal/agent/UniversalAgent;->isFeatureAgentEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sightcall/universal/agent/UniversalAgent;->isFeatureAgentNotificationsEnabled:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sightcall/universal/fcm/messages/Code$Resent;->id()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/sightcall/universal/agent/UniversalAgent$34;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/agent/UniversalAgent$34;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;)V

    invoke-virtual {p0, p1, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->fetchCode(Ljava/lang/String;Lcom/sightcall/universal/agent/FetchCodeCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFcmTest(Lcom/sightcall/universal/fcm/messages/Test;)V
    .locals 1
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotification;->PING:Lcom/sightcall/universal/internal/ui/UniversalNotification;

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->context:Landroid/content/Context;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->show(Landroid/content/Context;[Ljava/lang/Object;)V

    return-void
.end method

.method public onFcmTokenUpdateEvent(Lcom/sightcall/universal/fcm/FcmTokenUpdateEvent;)V
    .locals 0
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->shouldSyncFcmToken()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->syncFcmToken()V

    :cond_0
    return-void
.end method

.method public onGuestReady(Lcom/sightcall/universal/fcm/messages/GuestReady;)V
    .locals 5
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sightcall/universal/agent/UniversalAgent;->isFeatureAgentEnabled:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/sightcall/universal/agent/UniversalAgent;->isFeatureAgentNotificationsEnabled:Z

    if-eqz v1, :cond_7

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->code()Lcom/sightcall/universal/agent/Code;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object p0, Lcom/sightcall/universal/agent/UniversalAgent;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string p1, "Unknown [guest-ready], no [code] available"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Code;->isDeleted()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lcom/sightcall/universal/agent/UniversalAgent;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string p1, "Invalid [guest-ready], [code] is deleted"

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sightcall/universal/fcm/messages/GuestReady;->pincode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Code;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object p0, Lcom/sightcall/universal/agent/UniversalAgent;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Code;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sightcall/universal/fcm/messages/GuestReady;->pincode()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Invalid [guest-ready], expecting pincode [%s] but got [%s]"

    invoke-virtual {p0, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/sightcall/universal/fcm/messages/GuestReady;->usecaseId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Code;->usecaseId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object p0, Lcom/sightcall/universal/agent/UniversalAgent;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Code;->usecaseId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sightcall/universal/fcm/messages/GuestReady;->usecaseId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Invalid [guest-ready], expecting usecaseId [%s] but got [%d]"

    invoke-virtual {p0, v0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Code;->caseReportId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sightcall/universal/fcm/messages/GuestReady;->caseReportId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/sightcall/universal/agent/UniversalAgent;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v4, "Updating case report id [%s] -> [%s]"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/sightcall/universal/agent/Code;->caseReportId:Ljava/lang/String;

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyCode:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {v1, v0}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    :cond_5
    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->call()Lnet/rtccloud/sdk/CallModule;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/CallModule;->get()Lnet/rtccloud/sdk/Call;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object p0, Lcom/sightcall/universal/agent/UniversalAgent;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string p1, "GuestReady received but a call is in progress, ignoring... "

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sightcall/universal/fcm/messages/GuestReady;->getRtccJwtAuth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/Rtcc;->provideRtccJWT(Ljava/lang/String;)V

    sget-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotification;->GUEST_READY:Lcom/sightcall/universal/internal/ui/UniversalNotification;

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->context:Landroid/content/Context;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->show(Landroid/content/Context;[Ljava/lang/Object;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onGuestReadyAccepted(Lcom/sightcall/universal/fcm/messages/GuestReady;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/agent/UniversalAgent;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "onGuestReadyAccepted() called with: message = [%s]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotification;->GUEST_READY:Lcom/sightcall/universal/internal/ui/UniversalNotification;

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->cancel(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onGuestReadyAccepted(Lcom/sightcall/universal/fcm/messages/GuestReady;)V

    invoke-static {p1}, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;->with(Lcom/sightcall/universal/fcm/messages/GuestReady;)Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent;->currentStep:Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;

    iget-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgent;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/sightcall/universal/permission/Permissions;->getPermissionList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->resultReceiver:Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;

    invoke-static {v0, p0, p1}, Lcom/sightcall/universal/permission/PermissionsActivity;->start(Landroid/content/Context;Lcom/sightcall/universal/permission/PermissionsActivity$PermissionsResultReceiver;[Ljava/lang/String;)V

    return-void
.end method

.method public onGuestReadyDenied(Lcom/sightcall/universal/fcm/messages/GuestReady;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/agent/UniversalAgent;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "onGuestReadyDenied() called with: message = [%s]"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/sightcall/universal/internal/ui/UniversalNotification;->GUEST_READY:Lcom/sightcall/universal/internal/ui/UniversalNotification;

    iget-object v1, p0, Lcom/sightcall/universal/agent/UniversalAgent;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sightcall/universal/internal/ui/UniversalNotification;->cancel(Landroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onGuestReadyDenied(Lcom/sightcall/universal/fcm/messages/GuestReady;)V

    invoke-static {p1}, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;->with(Lcom/sightcall/universal/fcm/messages/GuestReady;)Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/scenario/Scenario;->with(Lcom/sightcall/universal/scenario/Step;)Lcom/sightcall/universal/scenario/Scenario;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/Universal;->start(Lcom/sightcall/universal/scenario/Scenario;)V

    return-void
.end method

.method public providerCustomizations()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/ProviderCustomization;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyProviderCustimizations:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public refresh(Lcom/sightcall/universal/agent/RefreshCallback;)V
    .locals 3

    const-string v0, "[callback] must not be null"

    invoke-static {p1, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/sightcall/universal/agent/RefreshCallback$Error;

    invoke-direct {p0}, Lcom/sightcall/universal/agent/RefreshCallback$Error;-><init>()V

    invoke-interface {p1, p0}, Lcom/sightcall/universal/agent/RefreshCallback;->onRefreshError(Lcom/sightcall/universal/agent/RefreshCallback$Error;)V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->api(Lcom/sightcall/universal/agent/Agent;)Lcom/sightcall/universal/agent/AgentApi;

    move-result-object v1

    invoke-direct {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->authToken()Lcom/sightcall/universal/api/Headers$Authorization$Bearer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sightcall/universal/agent/AgentApi;->refresh(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/sightcall/universal/agent/UniversalAgent$20;

    invoke-direct {v2, p0, v0, p1}, Lcom/sightcall/universal/agent/UniversalAgent$20;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/agent/RefreshCallback;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method public refreshToken(Lcom/sightcall/universal/agent/registration/AccessTokensRequest;Lcom/sightcall/universal/agent/RefreshTokenCallback;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/agent/UniversalAgent$12;

    invoke-direct {v1, p0, p2, v0}, Lcom/sightcall/universal/agent/UniversalAgent$12;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/RefreshTokenCallback;Lcom/sightcall/universal/agent/Agent;)V

    invoke-direct {p0, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->api(Lcom/sightcall/universal/agent/Agent;)Lcom/sightcall/universal/agent/AgentApi;

    move-result-object p0

    invoke-static {p1}, Lcom/sightcall/universal/api/JsonApi;->wrap(Ljava/lang/Object;)Lcom/sightcall/universal/api/JsonApi$Wrapper;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/AgentApi;->refreshToken(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0, v1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method public register(Lcom/sightcall/universal/agent/registration/RegistrationRequest;Lcom/sightcall/universal/agent/RegisterCallback;Z)V
    .locals 8

    const-string v0, "[registration] must not be null"

    invoke-static {p1, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[callback] must not be null"

    invoke-static {p2, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->defaultEnv()Lcom/sightcall/universal/api/Environment;

    move-result-object v4

    invoke-static {}, Lcom/sightcall/universal/Universal;->settings()Lcom/sightcall/universal/util/UniversalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/util/UniversalSettings;->apiBaseUrl()Lcom/sightcall/universal/util/Lazy;

    move-result-object v0

    invoke-virtual {v4}, Lcom/sightcall/universal/api/Environment;->baseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/util/Lazy;->set(Ljava/lang/Object;)V

    invoke-direct {p0, v4}, Lcom/sightcall/universal/agent/UniversalAgent;->api(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/agent/AgentApi;

    move-result-object v6

    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v3, Lcom/sightcall/universal/agent/UniversalAgent$13;

    invoke-direct {v3, p0, p2}, Lcom/sightcall/universal/agent/UniversalAgent$13;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/RegisterCallback;)V

    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgent;->isRegistering:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Lcom/sightcall/universal/agent/UniversalAgent;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string p1, "Registration already pending..."

    invoke-virtual {p0, p1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    new-instance p0, Lcom/sightcall/universal/agent/RegisterCallback$Error;

    const/4 p1, 0x0

    invoke-static {p1, p1, p1}, Lcom/sightcall/universal/api/ApiCallback$Holder;->hold(Lretrofit2/Call;Lretrofit2/Response;Ljava/lang/Throwable;)Lcom/sightcall/universal/api/ApiCallback$Holder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/agent/RegisterCallback$Error;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    invoke-interface {v3, p0}, Lcom/sightcall/universal/agent/RegisterCallback;->onRegisterError(Lcom/sightcall/universal/agent/RegisterCallback$Error;)V

    return-void

    :cond_0
    new-instance v7, Lcom/sightcall/universal/agent/UniversalAgent$14;

    invoke-direct {v7, p0, v3, v5}, Lcom/sightcall/universal/agent/UniversalAgent$14;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/RegisterCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    new-instance v1, Lcom/sightcall/universal/agent/UniversalAgent$15;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/sightcall/universal/agent/UniversalAgent$15;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/RegisterCallback;Lcom/sightcall/universal/api/Environment;Ljava/util/concurrent/atomic/AtomicReference;Lcom/sightcall/universal/agent/AgentApi;Lretrofit2/Callback;)V

    move-object p0, v1

    new-instance v1, Lcom/sightcall/universal/agent/UniversalAgent$16;

    invoke-direct/range {v1 .. v7}, Lcom/sightcall/universal/agent/UniversalAgent$16;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/RegisterCallback;Lcom/sightcall/universal/api/Environment;Ljava/util/concurrent/atomic/AtomicReference;Lcom/sightcall/universal/agent/AgentApi;Lretrofit2/Callback;)V

    if-eqz p3, :cond_1

    check-cast p1, Lcom/sightcall/universal/agent/registration/OldRegistration;

    invoke-static {p1}, Lcom/sightcall/universal/api/JsonApi;->wrap(Ljava/lang/Object;)Lcom/sightcall/universal/api/JsonApi$Wrapper;

    move-result-object p1

    invoke-interface {v6, p1}, Lcom/sightcall/universal/agent/AgentApi;->createAuthorizationToken(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p0}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void

    :cond_1
    check-cast p1, Lcom/sightcall/universal/agent/registration/NewRegistrationRequest;

    invoke-static {p1}, Lcom/sightcall/universal/api/JsonApi;->wrap(Ljava/lang/Object;)Lcom/sightcall/universal/api/JsonApi$Wrapper;

    move-result-object p0

    invoke-interface {v6, p0}, Lcom/sightcall/universal/agent/AgentApi;->createSession(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0, v1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method public requestNotificationTest(Lcom/sightcall/universal/agent/RequestNotificationTestCallback;)V
    .locals 4

    const-string v0, "[callback] must not be null"

    invoke-static {p1, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/sightcall/universal/agent/RequestNotificationTestCallback$Error;

    invoke-direct {p0}, Lcom/sightcall/universal/agent/RequestNotificationTestCallback$Error;-><init>()V

    invoke-interface {p1, p0}, Lcom/sightcall/universal/agent/RequestNotificationTestCallback;->onRequestNotificationTestError(Lcom/sightcall/universal/agent/RequestNotificationTestCallback$Error;)V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->api(Lcom/sightcall/universal/agent/Agent;)Lcom/sightcall/universal/agent/AgentApi;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->token()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sightcall/universal/agent/UniversalAgent;->tokenV3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sightcall/universal/agent/AgentPushNotificationTests;

    invoke-direct {v3}, Lcom/sightcall/universal/agent/AgentPushNotificationTests;-><init>()V

    invoke-static {v3}, Lcom/sightcall/universal/api/JsonApi;->wrap(Ljava/lang/Object;)Lcom/sightcall/universal/api/JsonApi$Wrapper;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/sightcall/universal/agent/AgentApi;->createNotificationTest(Ljava/lang/String;Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/sightcall/universal/agent/UniversalAgent$18;

    invoke-direct {v2, p0, v0, p1}, Lcom/sightcall/universal/agent/UniversalAgent$18;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/agent/RequestNotificationTestCallback;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method public requestTemporaryToken(Lcom/sightcall/universal/agent/TemporaryToken;Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback;)V
    .locals 2

    const-string v0, "[temporaryToken] must not be null"

    invoke-static {p1, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[callback] must not be null"

    invoke-static {p2, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->defaultApi()Lcom/sightcall/universal/agent/AgentApi;

    move-result-object v0

    invoke-static {p1}, Lcom/sightcall/universal/api/JsonApi;->wrap(Ljava/lang/Object;)Lcom/sightcall/universal/api/JsonApi$Wrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sightcall/universal/agent/AgentApi;->createTemporaryToken(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/agent/UniversalAgent$10;

    invoke-direct {v1, p0, p2, p1}, Lcom/sightcall/universal/agent/UniversalAgent$10;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/RequestTemporaryTokenCallback;Lcom/sightcall/universal/agent/TemporaryToken;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method public resendCode(Lcom/sightcall/universal/agent/Code;Lcom/sightcall/universal/agent/ResendCodeCallback;)V
    .locals 5

    const-string v0, "[code] must not be null"

    invoke-static {p1, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[callback] must not be null"

    invoke-static {p2, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/sightcall/universal/agent/ResendCodeCallback$Error;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/agent/ResendCodeCallback$Error;-><init>(Lcom/sightcall/universal/agent/Code;)V

    invoke-interface {p2, p0}, Lcom/sightcall/universal/agent/ResendCodeCallback;->onResendCodeError(Lcom/sightcall/universal/agent/ResendCodeCallback$Error;)V

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->api(Lcom/sightcall/universal/agent/Agent;)Lcom/sightcall/universal/agent/AgentApi;

    move-result-object v1

    invoke-direct {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->authToken()Lcom/sightcall/universal/api/Headers$Authorization$Bearer;

    move-result-object v2

    iget-object v3, p1, Lcom/sightcall/universal/agent/Code;->value:Ljava/lang/String;

    invoke-static {v3}, Lcom/sightcall/universal/agent/Pincode;->resend(Ljava/lang/String;)Lcom/sightcall/universal/agent/Pincode;

    move-result-object v4

    invoke-static {v4}, Lcom/sightcall/universal/api/JsonApi;->wrap(Ljava/lang/Object;)Lcom/sightcall/universal/api/JsonApi$Wrapper;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/sightcall/universal/agent/AgentApi;->resendPincode(Lcom/sightcall/universal/api/Headers$Authorization$Bearer;Ljava/lang/String;Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;

    move-result-object v1

    new-instance v2, Lcom/sightcall/universal/agent/UniversalAgent$30;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/sightcall/universal/agent/UniversalAgent$30;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/agent/ResendCodeCallback;Lcom/sightcall/universal/agent/Code;)V

    invoke-interface {v1, v2}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method public resendTemporaryToken(Lcom/sightcall/universal/agent/TemporaryToken;Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback;)V
    .locals 3

    const-string v0, "[temporaryToken] must not be null"

    invoke-static {p1, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[callback] must not be null"

    invoke-static {p2, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-boolean v0, p1, Lcom/sightcall/universal/agent/TemporaryToken;->isResent:Z

    if-eqz v0, :cond_0

    new-instance p0, Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback$Error;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback$Error;-><init>(Lcom/sightcall/universal/agent/TemporaryToken;)V

    invoke-interface {p2, p0}, Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback;->onResendTemporaryTokenError(Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback$Error;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->defaultApi()Lcom/sightcall/universal/agent/AgentApi;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/TemporaryToken;->id()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/sightcall/universal/agent/TemporaryToken;->resend(Lcom/sightcall/universal/agent/TemporaryToken;)Lcom/sightcall/universal/agent/TemporaryToken;

    move-result-object v2

    invoke-static {v2}, Lcom/sightcall/universal/api/JsonApi;->wrap(Ljava/lang/Object;)Lcom/sightcall/universal/api/JsonApi$Wrapper;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sightcall/universal/agent/AgentApi;->resendTemporaryToken(Ljava/lang/String;Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/agent/UniversalAgent$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/sightcall/universal/agent/UniversalAgent$11;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/ResendTemporaryTokenCallback;Lcom/sightcall/universal/agent/TemporaryToken;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method public sendLead(Lcom/sightcall/universal/agent/Lead;Lcom/sightcall/universal/agent/SendLeadCallback;)V
    .locals 2

    const-string v0, "[lead] must not be null"

    invoke-static {p1, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[callback] must not be null"

    invoke-static {p2, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->defaultApi()Lcom/sightcall/universal/agent/AgentApi;

    move-result-object v0

    invoke-static {p1}, Lcom/sightcall/universal/api/JsonApi;->wrap(Ljava/lang/Object;)Lcom/sightcall/universal/api/JsonApi$Wrapper;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sightcall/universal/agent/AgentApi;->createProspect(Lcom/sightcall/universal/api/JsonApi$Wrapper;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/agent/UniversalAgent$9;

    invoke-direct {v1, p0, p2, p1}, Lcom/sightcall/universal/agent/UniversalAgent$9;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/SendLeadCallback;Lcom/sightcall/universal/agent/Lead;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method public shouldSyncFcmToken()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/Agent;->fcmToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sightcall/universal/Universal;->fcm()Lcom/sightcall/universal/fcm/UniversalFcm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/fcm/UniversalFcm;->token()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->shouldSyncFcmToken(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startRecording(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onRecordingStart(Ljava/lang/String;)V

    return-void
.end method

.method public stopRecording(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sightcall/universal/internal/report/di/CaseReportComponentKt;->getCaseReportComponent()Lcom/sightcall/universal/internal/report/di/CaseReportComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/universal/internal/report/di/CaseReportComponent;->getCaseReportRepository()Lcom/sightcall/universal/internal/report/CaseReportRepository;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sightcall/universal/internal/report/CaseReportRepository;->onRecordingEnd(Ljava/lang/String;)V

    return-void
.end method

.method public syncFcmToken()V
    .locals 4

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->e()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lgy0;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v0, v3}, Lgy0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->e(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/agent/UniversalAgent$22;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/agent/UniversalAgent$22;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public unregister(Lcom/sightcall/universal/agent/UnregisterCallback;)V
    .locals 2

    const-string v0, "[callback] must not be null"

    invoke-static {p1, v0}, Lcom/sightcall/universal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/sightcall/universal/agent/UnregisterCallback$Error;

    invoke-direct {p0}, Lcom/sightcall/universal/agent/UnregisterCallback$Error;-><init>()V

    invoke-interface {p1, p0}, Lcom/sightcall/universal/agent/UnregisterCallback;->onUnregisterError(Lcom/sightcall/universal/agent/UnregisterCallback$Error;)V

    return-void

    :cond_0
    new-instance v1, Lcom/sightcall/universal/agent/UniversalAgent$17;

    invoke-direct {v1, p0, v0, p1}, Lcom/sightcall/universal/agent/UniversalAgent$17;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;Lcom/sightcall/universal/agent/Agent;Lcom/sightcall/universal/agent/UnregisterCallback;)V

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/universal/agent/Agent;->refreshToken()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-direct {p0, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->api(Lcom/sightcall/universal/agent/Agent;)Lcom/sightcall/universal/agent/AgentApi;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->token()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/AgentApi;->deleteAuthorizationToken(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0, v1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/sightcall/universal/agent/UniversalAgent;->api(Lcom/sightcall/universal/agent/Agent;)Lcom/sightcall/universal/agent/AgentApi;

    move-result-object p0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->refreshToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sightcall/universal/agent/AgentApi;->deleteNewToken(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    invoke-interface {p0, v1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method public updateAgentInfos()V
    .locals 14

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sightcall/universal/agent/UniversalAgent;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sightcall/universal/agent/UniversalAgent;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v3, "PackageManager Failed to get version number."

    invoke-virtual {v2, v3, v0}, Lnet/rtccloud/sdk/util/OldLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/sightcall/universal/agent/UniversalAgent;->api(Lcom/sightcall/universal/agent/Agent;)Lcom/sightcall/universal/agent/AgentApi;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sightcall/universal/agent/Agent;->token()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sightcall/universal/agent/UniversalAgent;->tokenV3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/sightcall/universal/agent/AgentInfoRequestEntity;

    new-instance v4, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;

    new-instance v5, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v6, p0, Lcom/sightcall/universal/agent/UniversalAgent;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v0, :cond_1

    :goto_1
    move-object v11, v0

    goto :goto_2

    :cond_1
    const-string v0, "?"

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->context:Landroid/content/Context;

    sget v6, Lcom/sightcall/core/R$string;->universal_mobile_solution_value:I

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v6, "android"

    const-string v9, "app"

    const-string v12, "7.10.2"

    invoke-direct/range {v5 .. v13}, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "me"

    const-string v6, "agentInfos"

    const/4 v7, 0x1

    invoke-direct {v4, v0, v6, v7, v5}, Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/sightcall/universal/agent/AgentInfoRequestEntity$Data$Attributes;)V

    invoke-direct {v3, v4}, Lcom/sightcall/universal/agent/AgentInfoRequestEntity;-><init>(Lcom/sightcall/universal/agent/AgentInfoRequestEntity$Data;)V

    invoke-interface {v2, v1, v3}, Lcom/sightcall/universal/agent/AgentApi;->updateAgentInfos(Ljava/lang/String;Lcom/sightcall/universal/agent/AgentInfoRequestEntity;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/agent/UniversalAgent$21;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/agent/UniversalAgent$21;-><init>(Lcom/sightcall/universal/agent/UniversalAgent;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method public usecase(Ljava/lang/String;)Lcom/sightcall/universal/agent/Usecase;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyUsecases:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/agent/Usecase;

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Usecase;->id()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_3
    :goto_0
    return-object v1
.end method

.method public usecases()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/universal/agent/Usecase;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgent;->lazyUsecases:Lcom/sightcall/universal/util/Lazy;

    invoke-virtual {p0}, Lcom/sightcall/universal/util/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
