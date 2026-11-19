.class final Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/livetranslation/LiveTranslationComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiveTranslationComponentImpl"
.end annotation


# instance fields
.field private final liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

.field liveTranslationComponentProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationComponent;",
            ">;"
        }
    .end annotation
.end field

.field liveTranslationUrlProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;",
            ">;"
        }
    .end annotation
.end field

.field localLanguageProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;",
            ">;"
        }
    .end annotation
.end field

.field networkConnectorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/network/NetworkConnector;",
            ">;"
        }
    .end annotation
.end field

.field provideAPIProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI;",
            ">;"
        }
    .end annotation
.end field

.field provideInteractorImplProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;>;"
        }
    .end annotation
.end field

.field provideInteractorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationInteractor$State;",
            ">;>;"
        }
    .end annotation
.end field

.field provideNetworkApiProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/data/API;",
            ">;"
        }
    .end annotation
.end field

.field provideRepositoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;",
            ">;"
        }
    .end annotation
.end field

.field provideSettingsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/domain/LiveTranslationSettings;",
            ">;"
        }
    .end annotation
.end field

.field useCaseSettingsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/session/Reference$UseCase$LiveTranslation;",
            ">;"
        }
    .end annotation
.end field

.field userRoleProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;Lcom/sightcall/libraries/network/NetworkConnector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    invoke-direct/range {p0 .. p6}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->initialize(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;Lcom/sightcall/libraries/network/NetworkConnector;)V

    return-void
.end method

.method private initialize(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Lcom/sightcall/session/Reference$UseCase$LiveTranslation;Lcom/sightcall/livetranslation/LiveTranslationAPI$Role;Lcom/sightcall/livetranslation/LiveTranslationAPI$LocaleLanguage;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;Lcom/sightcall/libraries/network/NetworkConnector;)V
    .locals 0

    invoke-static {p2}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->useCaseSettingsProvider:Ldagger/internal/Provider;

    invoke-static {p3}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->userRoleProvider:Ldagger/internal/Provider;

    invoke-static {p4}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->localLanguageProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->useCaseSettingsProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->userRoleProvider:Ldagger/internal/Provider;

    invoke-static {p1, p3, p4, p2}, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideSettingsFactory;->create(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideSettingsFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->provideSettingsProvider:Ldagger/internal/Provider;

    invoke-static {p6}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->networkConnectorProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideNetworkApiFactory;->create(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideNetworkApiFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->provideNetworkApiProvider:Ldagger/internal/Provider;

    invoke-static {p5}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->liveTranslationUrlProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->provideNetworkApiProvider:Ldagger/internal/Provider;

    invoke-static {p1, p3, p2}, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideRepositoryFactory;->create(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideRepositoryFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->provideRepositoryProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->provideSettingsProvider:Ldagger/internal/Provider;

    invoke-static {p1, p3, p2}, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideInteractorImplFactory;->create(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideInteractorImplFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->provideInteractorImplProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    invoke-static {p2}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->liveTranslationComponentProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->provideInteractorImplProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->provideSettingsProvider:Ldagger/internal/Provider;

    invoke-static {p1, p3, p4, p2}, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideAPIFactory;->create(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideAPIFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->provideAPIProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->provideInteractorImplProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideInteractorFactory;->create(Lcom/sightcall/livetranslation/LiveTranslationComponent$Module;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/LiveTranslationComponent_Module_ProvideInteractorFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->provideInteractorProvider:Ldagger/internal/Provider;

    return-void
.end method


# virtual methods
.method public getLiveTranslationAPI()Lcom/sightcall/livetranslation/LiveTranslationAPI;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->provideAPIProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/LiveTranslationAPI;

    return-object p0
.end method

.method public history()Lcom/sightcall/livetranslation/history/HistoryComponent$Builder;
    .locals 2

    new-instance v0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentBuilder;

    iget-object p0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$HistoryComponentBuilder;-><init>(Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;I)V

    return-object v0
.end method

.method public liveSentences()Lcom/sightcall/livetranslation/live/LiveSentencesComponent$Builder;
    .locals 2

    new-instance v0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentBuilder;

    iget-object p0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveSentencesComponentBuilder;-><init>(Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;I)V

    return-object v0
.end method

.method public settingsPanel()Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Builder;
    .locals 2

    new-instance v0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;

    iget-object p0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentBuilder;-><init>(Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;I)V

    return-object v0
.end method
