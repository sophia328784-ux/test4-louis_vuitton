.class final Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/di/SdkComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/di/DaggerSdkComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SdkComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl$ContextProvider;
    }
.end annotation


# instance fields
.field private final capabilitiesComponent:Lcom/sightcall/capabilities/di/CapabilitiesComponent;

.field contextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final httpClientModule:Lcom/sightcall/httpclient/di/HttpClientModule;

.field provideApplicationContext$sdk_installedReleaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field provideNetworkConnectorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/network/NetworkConnector;",
            ">;"
        }
    .end annotation
.end field

.field provideRxJava2ExecutionScheduler$sdk_installedReleaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field provideRxJava2PostExecutionScheduler$sdk_installedReleaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private final sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

.field private final sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/di/SdkModule;Lcom/sightcall/httpclient/di/HttpClientModule;Lcom/sightcall/core/di/SightCallComponent;Lcom/sightcall/capabilities/di/CapabilitiesComponent;Lcom/sightcall/universal/internal/report/di/CaseReportComponent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    iput-object p4, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->capabilitiesComponent:Lcom/sightcall/capabilities/di/CapabilitiesComponent;

    iput-object p2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->httpClientModule:Lcom/sightcall/httpclient/di/HttpClientModule;

    iput-object p3, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    invoke-direct/range {p0 .. p5}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->initialize(Lcom/sightcall/universal/di/SdkModule;Lcom/sightcall/httpclient/di/HttpClientModule;Lcom/sightcall/core/di/SightCallComponent;Lcom/sightcall/capabilities/di/CapabilitiesComponent;Lcom/sightcall/universal/internal/report/di/CaseReportComponent;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;)Lcom/sightcall/capabilities/di/CapabilitiesComponent;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->capabilitiesComponent:Lcom/sightcall/capabilities/di/CapabilitiesComponent;

    return-object p0
.end method

.method private initialize(Lcom/sightcall/universal/di/SdkModule;Lcom/sightcall/httpclient/di/HttpClientModule;Lcom/sightcall/core/di/SightCallComponent;Lcom/sightcall/capabilities/di/CapabilitiesComponent;Lcom/sightcall/universal/internal/report/di/CaseReportComponent;)V
    .locals 0

    invoke-static {p1}, Lcom/sightcall/universal/di/SdkModule_ProvideApplicationContext$sdk_installedReleaseFactory;->create(Lcom/sightcall/universal/di/SdkModule;)Lcom/sightcall/universal/di/SdkModule_ProvideApplicationContext$sdk_installedReleaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->provideApplicationContext$sdk_installedReleaseProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/sightcall/universal/di/SdkModule_ProvideRxJava2PostExecutionScheduler$sdk_installedReleaseFactory;->create(Lcom/sightcall/universal/di/SdkModule;)Lcom/sightcall/universal/di/SdkModule_ProvideRxJava2PostExecutionScheduler$sdk_installedReleaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->provideRxJava2PostExecutionScheduler$sdk_installedReleaseProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/sightcall/universal/di/SdkModule_ProvideRxJava2ExecutionScheduler$sdk_installedReleaseFactory;->create(Lcom/sightcall/universal/di/SdkModule;)Lcom/sightcall/universal/di/SdkModule_ProvideRxJava2ExecutionScheduler$sdk_installedReleaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->provideRxJava2ExecutionScheduler$sdk_installedReleaseProvider:Ldagger/internal/Provider;

    invoke-static {p1}, Lcom/sightcall/universal/di/SdkModule_ProvideNetworkConnectorFactory;->create(Lcom/sightcall/universal/di/SdkModule;)Lcom/sightcall/universal/di/SdkModule_ProvideNetworkConnectorFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->provideNetworkConnectorProvider:Ldagger/internal/Provider;

    new-instance p1, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl$ContextProvider;

    invoke-direct {p1, p3}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl$ContextProvider;-><init>(Lcom/sightcall/core/di/SightCallComponent;)V

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->contextProvider:Ldagger/internal/Provider;

    return-void
.end method

.method private injectAgentUsecaseStep(Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;)Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->analyticsAgentSessionRepositoryImpl()Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepositoryImpl;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep_MembersInjector;->injectAnalyticsAgentSessionRepository(Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;)V

    return-object p1
.end method

.method private injectFetchReferenceStep(Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;)Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->sessionRepositoryImpl()Lcom/sightcall/session/SessionRepositoryImpl;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sightcall/universal/scenario/steps/FetchReferenceStep_MembersInjector;->injectSessionRepository(Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;Lcom/sightcall/session/SessionRepository;)V

    return-object p1
.end method

.method private injectMyScreenshareConsumerView(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->capabilitiesComponent:Lcom/sightcall/capabilities/di/CapabilitiesComponent;

    invoke-interface {p0}, Lcom/sightcall/capabilities/di/CapabilitiesComponent;->getCapabilitiesRepository()Lcom/sightcall/capabilities/CapabilitiesRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->b(Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView_MembersInjector;->injectCapabilitiesRepository(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;Lcom/sightcall/capabilities/CapabilitiesRepository;)V

    return-object p1
.end method

.method private injectScreenCastOverlay(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;)Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->capabilitiesComponent:Lcom/sightcall/capabilities/di/CapabilitiesComponent;

    invoke-interface {p0}, Lcom/sightcall/capabilities/di/CapabilitiesComponent;->getCapabilitiesRepository()Lcom/sightcall/capabilities/CapabilitiesRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->b(Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay_MembersInjector;->injectCapabilitiesRepository(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;Lcom/sightcall/capabilities/CapabilitiesRepository;)V

    return-object p1
.end method

.method private injectUniversalAr(Lcom/sightcall/universal/ar/UniversalAr;)Lcom/sightcall/universal/ar/UniversalAr;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->capabilitiesComponent:Lcom/sightcall/capabilities/di/CapabilitiesComponent;

    invoke-interface {p0}, Lcom/sightcall/capabilities/di/CapabilitiesComponent;->getCapabilitiesRepository()Lcom/sightcall/capabilities/CapabilitiesRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->b(Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lcom/sightcall/universal/ar/UniversalAr_MembersInjector;->injectCapabilitiesRepository(Lcom/sightcall/universal/ar/UniversalAr;Lcom/sightcall/capabilities/CapabilitiesRepository;)V

    return-object p1
.end method


# virtual methods
.method public agentSessionDataSourceV3Impl()Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl;
    .locals 1

    new-instance v0, Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl;

    invoke-virtual {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->agentSessionsApi()Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl;-><init>(Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;)V

    return-object v0
.end method

.method public agentSessionsApi()Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->retrofit()Lretrofit2/Retrofit;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/analyticsagentsession/di/AnalyticsAgentSessionModule_Companion_ProvideAgentSessionsApi$analyticsagentsession_releaseFactory;->provideAgentSessionsApi$analyticsagentsession_release(Lretrofit2/Retrofit;)Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionsApi;

    move-result-object p0

    return-object p0
.end method

.method public analyticsAgentSessionRepositoryImpl()Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepositoryImpl;
    .locals 1

    new-instance v0, Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepositoryImpl;

    invoke-virtual {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->agentSessionDataSourceV3Impl()Lcom/sightcall/analyticsagentsession/datasource/agentsession/AgentSessionDataSourceV3Impl;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepositoryImpl;-><init>(Lcom/sightcall/analyticsagentsession/datasource/AgentSessionDataSource;)V

    return-object v0
.end method

.method public callComponent()Lcom/sightcall/universal/CallComponent$Builder;
    .locals 2

    new-instance v0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentBuilder;-><init>(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;I)V

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->provideApplicationContext$sdk_installedReleaseProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method public getIoScheduler()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->provideRxJava2ExecutionScheduler$sdk_installedReleaseProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

.method public getMainScheduler()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->provideRxJava2PostExecutionScheduler$sdk_installedReleaseProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

.method public getNetworkConnector()Lcom/sightcall/libraries/network/NetworkConnector;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->provideNetworkConnectorProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/libraries/network/NetworkConnector;

    return-object p0
.end method

.method public gpsDatasource()Lcom/sightcall/gpslocation/datasource/GpsDatasource;
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    invoke-interface {v0}, Lcom/sightcall/core/di/SightCallComponent;->context()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->locationManager()Landroid/location/LocationManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->holder()Lcom/sightcall/gpslocation/di/Holder;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideGpsLocationDataSource$GpsLocation_releaseFactory;->provideGpsLocationDataSource$GpsLocation_release(Landroid/content/Context;Landroid/location/LocationManager;Lcom/sightcall/gpslocation/di/Holder;)Lcom/sightcall/gpslocation/datasource/GpsDatasource;

    move-result-object p0

    return-object p0
.end method

.method public gpsRepositoryImpl()Lcom/sightcall/gpslocation/GpsRepositoryImpl;
    .locals 1

    new-instance v0, Lcom/sightcall/gpslocation/GpsRepositoryImpl;

    invoke-virtual {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->gpsDatasource()Lcom/sightcall/gpslocation/datasource/GpsDatasource;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sightcall/gpslocation/GpsRepositoryImpl;-><init>(Lcom/sightcall/gpslocation/datasource/GpsDatasource;)V

    return-object v0
.end method

.method public holder()Lcom/sightcall/gpslocation/di/Holder;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    invoke-interface {p0}, Lcom/sightcall/core/di/SightCallComponent;->context()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->b(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideGmsLocationManagerFactory;->provideGmsLocationManager(Landroid/content/Context;)Lcom/sightcall/gpslocation/di/Holder;

    move-result-object p0

    return-object p0
.end method

.method public inject(Lcom/sightcall/universal/ar/UniversalAr;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->injectUniversalAr(Lcom/sightcall/universal/ar/UniversalAr;)Lcom/sightcall/universal/ar/UniversalAr;

    return-void
.end method

.method public inject(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->injectScreenCastOverlay(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;)Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;

    return-void
.end method

.method public inject(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->injectMyScreenshareConsumerView(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    return-void
.end method

.method public inject(Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->injectAgentUsecaseStep(Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;)Lcom/sightcall/universal/scenario/steps/AgentUsecaseStep;

    return-void
.end method

.method public inject(Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->injectFetchReferenceStep(Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;)Lcom/sightcall/universal/scenario/steps/FetchReferenceStep;

    return-void
.end method

.method public locationManager()Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    invoke-interface {p0}, Lcom/sightcall/core/di/SightCallComponent;->context()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->b(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/sightcall/gpslocation/di/GpsLocationModule_Companion_ProvideLocationManagerFactory;->provideLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object p0

    return-object p0
.end method

.method public referenceApiV3()Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;
    .locals 0

    invoke-virtual {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->retrofit()Lretrofit2/Retrofit;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/session/di/SessionModule_Companion_ProvideReferenceApiV3$session_releaseFactory;->provideReferenceApiV3$session_release(Lretrofit2/Retrofit;)Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;

    move-result-object p0

    return-object p0
.end method

.method public referenceComponent()Lcom/sightcall/universal/ReferenceComponent$Builder;
    .locals 2

    new-instance v0, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sightcall/universal/di/DaggerSdkComponent$ReferenceComponentBuilder;-><init>(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;I)V

    return-object v0
.end method

.method public referenceDataSourceV3Impl()Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;
    .locals 2

    new-instance v0, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;

    invoke-virtual {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->referenceApiV3()Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;

    move-result-object v1

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    invoke-interface {p0}, Lcom/sightcall/core/di/SightCallComponent;->context()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->b(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p0}, Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;-><init>(Lcom/sightcall/session/datasource/reference/v3/ReferenceApiV3;Landroid/content/Context;)V

    return-object v0
.end method

.method public retrofit()Lretrofit2/Retrofit;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->httpClientModule:Lcom/sightcall/httpclient/di/HttpClientModule;

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->sightCallComponent:Lcom/sightcall/core/di/SightCallComponent;

    invoke-interface {p0}, Lcom/sightcall/core/di/SightCallComponent;->context()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->b(Ljava/lang/Object;)V

    invoke-static {v0, p0}, Lcom/sightcall/httpclient/di/HttpClientModule_ProvideRetrofitFactory;->provideRetrofit(Lcom/sightcall/httpclient/di/HttpClientModule;Landroid/content/Context;)Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method

.method public sessionRepositoryImpl()Lcom/sightcall/session/SessionRepositoryImpl;
    .locals 1

    new-instance v0, Lcom/sightcall/session/SessionRepositoryImpl;

    invoke-virtual {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->referenceDataSourceV3Impl()Lcom/sightcall/session/datasource/reference/v3/ReferenceDataSourceV3Impl;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sightcall/session/SessionRepositoryImpl;-><init>(Lcom/sightcall/session/datasource/reference/ReferenceDataSource;)V

    return-object v0
.end method
