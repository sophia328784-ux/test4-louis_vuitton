.class final Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/CallComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/di/DaggerSdkComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallComponentImpl"
.end annotation


# instance fields
.field advancedAnnotationsApiProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;",
            ">;"
        }
    .end annotation
.end field

.field advancedAnnotationsContainerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final callComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;

.field callComponentProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/CallComponent;",
            ">;"
        }
    .end annotation
.end field

.field initialSenderColorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;",
            ">;"
        }
    .end annotation
.end field

.field newAnnotationSenderProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;",
            ">;"
        }
    .end annotation
.end field

.field provideAdvancedAnnotationTouchWrapper$sdk_installedReleaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;",
            ">;"
        }
    .end annotation
.end field

.field provideCallCoordinator$sdk_installedReleaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/CallCoordinatorImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

.field senderIdGetterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;",
            ">;"
        }
    .end annotation
.end field

.field sessionConfigProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/universal/model/Config;",
            ">;"
        }
    .end annotation
.end field

.field settingsUrlProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;",
            ">;"
        }
    .end annotation
.end field

.field stateHandlerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;Lcom/sightcall/universal/CallComponent$Module;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;Lcom/sightcall/universal/model/Config;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->callComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move-object p5, p6

    move-object p6, p7

    move-object p7, p8

    invoke-direct/range {p0 .. p7}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->initialize(Lcom/sightcall/universal/CallComponent$Module;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;Lcom/sightcall/universal/model/Config;)V

    return-void
.end method

.method private initialize(Lcom/sightcall/universal/CallComponent$Module;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$SenderIdGetter;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$InitialSenderColor;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$MessageSender;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$StateHandler;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;Lcom/sightcall/universal/model/Config;)V
    .locals 9

    invoke-static {p3}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p3

    iput-object p3, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->initialSenderColorProvider:Ldagger/internal/Provider;

    invoke-static {p2}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->senderIdGetterProvider:Ldagger/internal/Provider;

    invoke-static {p4}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->newAnnotationSenderProvider:Ldagger/internal/Provider;

    invoke-static {p5}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->stateHandlerProvider:Ldagger/internal/Provider;

    invoke-static {p6}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object v8

    iput-object v8, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->settingsUrlProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    iget-object v1, p2, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->contextProvider:Ldagger/internal/Provider;

    iget-object v2, p2, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->provideRxJava2PostExecutionScheduler$sdk_installedReleaseProvider:Ldagger/internal/Provider;

    iget-object v3, p2, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->provideNetworkConnectorProvider:Ldagger/internal/Provider;

    iget-object v4, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->initialSenderColorProvider:Ldagger/internal/Provider;

    iget-object v5, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->senderIdGetterProvider:Ldagger/internal/Provider;

    iget-object v6, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->newAnnotationSenderProvider:Ldagger/internal/Provider;

    iget-object v7, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->stateHandlerProvider:Ldagger/internal/Provider;

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;->create(Lcom/sightcall/universal/CallComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsApiFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->advancedAnnotationsApiProvider:Ldagger/internal/Provider;

    invoke-static/range {p7 .. p7}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->sessionConfigProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->advancedAnnotationsApiProvider:Ldagger/internal/Provider;

    invoke-static {p1, p3, p2}, Lcom/sightcall/universal/CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory;->create(Lcom/sightcall/universal/CallComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/universal/CallComponent_Module_ProvideAdvancedAnnotationTouchWrapper$sdk_installedReleaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->provideAdvancedAnnotationTouchWrapper$sdk_installedReleaseProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->advancedAnnotationsApiProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsContainerFactory;->create(Lcom/sightcall/universal/CallComponent$Module;Ldagger/internal/Provider;)Lcom/sightcall/universal/CallComponent_Module_AdvancedAnnotationsContainerFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->advancedAnnotationsContainerProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->callComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;

    invoke-static {p2}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->callComponentProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/universal/CallComponent_Module_ProvideCallCoordinator$sdk_installedReleaseFactory;->create(Lcom/sightcall/universal/CallComponent$Module;Ldagger/internal/Provider;)Lcom/sightcall/universal/CallComponent_Module_ProvideCallCoordinator$sdk_installedReleaseFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->provideCallCoordinator$sdk_installedReleaseProvider:Ldagger/internal/Provider;

    return-void
.end method

.method private injectCallActivity(Lcom/sightcall/universal/internal/ui/CallActivity;)Lcom/sightcall/universal/internal/ui/CallActivity;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->advancedAnnotationsContainerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->injectAdvancedAnnotationsContainer(Lcom/sightcall/universal/internal/ui/CallActivity;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->provideAdvancedAnnotationTouchWrapper$sdk_installedReleaseProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->injectAdvancedAnnotationsWrapper(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;)V

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->provideCallCoordinator$sdk_installedReleaseProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/CallCoordinatorImpl;

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->injectCoordinator(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/universal/CallCoordinatorImpl;)V

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    invoke-static {v0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->a(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;)Lcom/sightcall/capabilities/di/CapabilitiesComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/capabilities/di/CapabilitiesComponent;->getCapabilitiesRepository()Lcom/sightcall/capabilities/CapabilitiesRepository;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->b(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->injectCapabilitiesRepository(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/capabilities/CapabilitiesRepository;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->callViewModelFactory()Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sightcall/universal/internal/ui/CallActivity_MembersInjector;->injectCallViewModelFactory(Lcom/sightcall/universal/internal/ui/CallActivity;Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;)V

    return-object p1
.end method

.method private injectCallStep(Lcom/sightcall/universal/scenario/steps/CallStep;)Lcom/sightcall/universal/scenario/steps/CallStep;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->advancedAnnotationsApiProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    invoke-static {p1, v0}, Lcom/sightcall/universal/scenario/steps/CallStep_MembersInjector;->injectAdvancedAnnotationsAPI(Lcom/sightcall/universal/scenario/steps/CallStep;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;)V

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    invoke-static {v0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->a(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;)Lcom/sightcall/capabilities/di/CapabilitiesComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/sightcall/capabilities/di/CapabilitiesComponent;->getCapabilitiesRepository()Lcom/sightcall/capabilities/CapabilitiesRepository;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->b(Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lcom/sightcall/universal/scenario/steps/CallStep_MembersInjector;->injectCapabilitiesRepository(Lcom/sightcall/universal/scenario/steps/CallStep;Lcom/sightcall/capabilities/CapabilitiesRepository;)V

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    invoke-virtual {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->gpsRepositoryImpl()Lcom/sightcall/gpslocation/GpsRepositoryImpl;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sightcall/universal/scenario/steps/CallStep_MembersInjector;->injectGpsRepository(Lcom/sightcall/universal/scenario/steps/CallStep;Lcom/sightcall/gpslocation/GpsRepository;)V

    return-object p1
.end method

.method private injectMyScreenshareConsumerView(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    invoke-static {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->a(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;)Lcom/sightcall/capabilities/di/CapabilitiesComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/capabilities/di/CapabilitiesComponent;->getCapabilitiesRepository()Lcom/sightcall/capabilities/CapabilitiesRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->b(Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView_MembersInjector;->injectCapabilitiesRepository(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;Lcom/sightcall/capabilities/CapabilitiesRepository;)V

    return-object p1
.end method

.method private injectMyScreenshareProducerWebView(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;)Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->provideAdvancedAnnotationTouchWrapper$sdk_installedReleaseProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView_MembersInjector;->injectAdvancedAnnotationsWrapper(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;)V

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    invoke-static {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->a(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;)Lcom/sightcall/capabilities/di/CapabilitiesComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/capabilities/di/CapabilitiesComponent;->getCapabilitiesRepository()Lcom/sightcall/capabilities/CapabilitiesRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->b(Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView_MembersInjector;->injectCapabilitiesRepository(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;Lcom/sightcall/capabilities/CapabilitiesRepository;)V

    return-object p1
.end method

.method private injectMyVideoConsumerView(Lcom/sightcall/universal/internal/view/MyVideoConsumerView;)Lcom/sightcall/universal/internal/view/MyVideoConsumerView;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->provideAdvancedAnnotationTouchWrapper$sdk_installedReleaseProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView_MembersInjector;->injectAdvancedAnnotationsWrapper(Lcom/sightcall/universal/internal/view/MyVideoConsumerView;Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;)V

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->advancedAnnotationsContainerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView_MembersInjector;->injectAdvancedAnnotationsContainer(Lcom/sightcall/universal/internal/view/MyVideoConsumerView;Landroid/view/ViewGroup;)V

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    invoke-static {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->a(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;)Lcom/sightcall/capabilities/di/CapabilitiesComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/capabilities/di/CapabilitiesComponent;->getCapabilitiesRepository()Lcom/sightcall/capabilities/CapabilitiesRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->b(Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerView_MembersInjector;->injectCapabilitiesRepository(Lcom/sightcall/universal/internal/view/MyVideoConsumerView;Lcom/sightcall/capabilities/CapabilitiesRepository;)V

    return-object p1
.end method

.method private injectMyVideoProducerCameraView(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->provideAdvancedAnnotationTouchWrapper$sdk_installedReleaseProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView_MembersInjector;->injectAdvancedAnnotationsWrapper(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;)V

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->advancedAnnotationsContainerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView_MembersInjector;->injectAdvancedAnnotationsContainer(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;Landroid/view/ViewGroup;)V

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    invoke-static {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->a(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;)Lcom/sightcall/capabilities/di/CapabilitiesComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/capabilities/di/CapabilitiesComponent;->getCapabilitiesRepository()Lcom/sightcall/capabilities/CapabilitiesRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->b(Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView_MembersInjector;->injectCapabilitiesRepository(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;Lcom/sightcall/capabilities/CapabilitiesRepository;)V

    return-object p1
.end method

.method private injectMyVideoProducerWrapper(Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;)Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->provideAdvancedAnnotationTouchWrapper$sdk_installedReleaseProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-static {p1, p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper_MembersInjector;->injectAdvancedAnnotationsWrapper(Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;)V

    return-object p1
.end method

.method private injectProgressivexImageView(Lcom/sightcall/universal/internal/view/ProgressivexImageView;)Lcom/sightcall/universal/internal/view/ProgressivexImageView;
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->provideAdvancedAnnotationTouchWrapper$sdk_installedReleaseProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/view/ProgressivexImageView_MembersInjector;->injectAdvancedAnnotationsWrapper(Lcom/sightcall/universal/internal/view/ProgressivexImageView;Lcom/sightcall/advancedannotations/AdvancedAnnotationsWrapper;)V

    iget-object v0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->advancedAnnotationsContainerProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1, v0}, Lcom/sightcall/universal/internal/view/ProgressivexImageView_MembersInjector;->injectAdvancedAnnotationsContainer(Lcom/sightcall/universal/internal/view/ProgressivexImageView;Landroid/view/ViewGroup;)V

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    invoke-static {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->a(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;)Lcom/sightcall/capabilities/di/CapabilitiesComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/capabilities/di/CapabilitiesComponent;->getCapabilitiesRepository()Lcom/sightcall/capabilities/CapabilitiesRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->b(Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lcom/sightcall/universal/internal/view/ProgressivexImageView_MembersInjector;->injectCapabilitiesRepository(Lcom/sightcall/universal/internal/view/ProgressivexImageView;Lcom/sightcall/capabilities/CapabilitiesRepository;)V

    return-object p1
.end method

.method private injectScreenCastOverlay(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;)Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    invoke-static {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->a(Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;)Lcom/sightcall/capabilities/di/CapabilitiesComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/capabilities/di/CapabilitiesComponent;->getCapabilitiesRepository()Lcom/sightcall/capabilities/CapabilitiesRepository;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->b(Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lcom/sightcall/universal/internal/ui/ScreenCastOverlay_MembersInjector;->injectCapabilitiesRepository(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;Lcom/sightcall/capabilities/CapabilitiesRepository;)V

    return-object p1
.end method


# virtual methods
.method public callViewModelFactory()Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;
    .locals 2

    new-instance v0, Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;

    iget-object v1, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    invoke-virtual {v1}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->sessionRepositoryImpl()Lcom/sightcall/session/SessionRepositoryImpl;

    move-result-object v1

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->sdkComponentImpl:Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;

    invoke-virtual {p0}, Lcom/sightcall/universal/di/DaggerSdkComponent$SdkComponentImpl;->gpsRepositoryImpl()Lcom/sightcall/gpslocation/GpsRepositoryImpl;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;-><init>(Lcom/sightcall/session/SessionRepository;Lcom/sightcall/gpslocation/GpsRepository;)V

    return-object v0
.end method

.method public getAdvancedAnnotationsAPI()Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->advancedAnnotationsApiProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI;

    return-object p0
.end method

.method public inject(Lcom/sightcall/universal/internal/ui/CallActivity;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->injectCallActivity(Lcom/sightcall/universal/internal/ui/CallActivity;)Lcom/sightcall/universal/internal/ui/CallActivity;

    return-void
.end method

.method public inject(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->injectScreenCastOverlay(Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;)Lcom/sightcall/universal/internal/ui/ScreenCastOverlay;

    return-void
.end method

.method public inject(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->injectMyScreenshareConsumerView(Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;)Lcom/sightcall/universal/internal/view/MyScreenshareConsumerView;

    return-void
.end method

.method public inject(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->injectMyScreenshareProducerWebView(Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;)Lcom/sightcall/universal/internal/view/MyScreenshareProducerWebView;

    return-void
.end method

.method public inject(Lcom/sightcall/universal/internal/view/MyVideoConsumerView;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->injectMyVideoConsumerView(Lcom/sightcall/universal/internal/view/MyVideoConsumerView;)Lcom/sightcall/universal/internal/view/MyVideoConsumerView;

    return-void
.end method

.method public inject(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->injectMyVideoProducerCameraView(Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;)Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView;

    return-void
.end method

.method public inject(Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->injectMyVideoProducerWrapper(Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;)Lcom/sightcall/universal/internal/view/MyVideoProducerWrapper;

    return-void
.end method

.method public inject(Lcom/sightcall/universal/internal/view/ProgressivexImageView;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->injectProgressivexImageView(Lcom/sightcall/universal/internal/view/ProgressivexImageView;)Lcom/sightcall/universal/internal/view/ProgressivexImageView;

    return-void
.end method

.method public inject(Lcom/sightcall/universal/scenario/steps/CallStep;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/sightcall/universal/di/DaggerSdkComponent$CallComponentImpl;->injectCallStep(Lcom/sightcall/universal/scenario/steps/CallStep;)Lcom/sightcall/universal/scenario/steps/CallStep;

    return-void
.end method
