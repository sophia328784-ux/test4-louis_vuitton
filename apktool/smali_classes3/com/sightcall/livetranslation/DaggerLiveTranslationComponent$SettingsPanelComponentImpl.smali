.class final Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingsPanelComponentImpl"
.end annotation


# instance fields
.field closeFeatureProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

.field openHistoryProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;",
            ">;"
        }
    .end annotation
.end field

.field provideCoordinatorImpl$livetranslation_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;",
            ">;"
        }
    .end annotation
.end field

.field provideInteractorImplProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;>;"
        }
    .end annotation
.end field

.field provideInteractorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;>;"
        }
    .end annotation
.end field

.field provideStartStopTranslationProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/domain/StartStopTranslation;",
            ">;"
        }
    .end annotation
.end field

.field provideTextSizeSelectorProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/domain/TextSizeSelector;",
            ">;"
        }
    .end annotation
.end field

.field provideViewHolder$livetranslation_releaseProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field rootViewProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsPanelComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;

.field settingsPanelComponentProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Landroid/view/ViewGroup;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->settingsPanelComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->initialize(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Landroid/view/ViewGroup;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;)V

    return-void
.end method

.method private initialize(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Landroid/view/ViewGroup;Lcom/sightcall/livetranslation/LiveTranslationAPI$CloseSettings;Lcom/sightcall/livetranslation/LiveTranslationAPI$OpenHistory;)V
    .locals 1

    invoke-static {p2}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->rootViewProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->settingsPanelComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;

    invoke-static {p2}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->settingsPanelComponentProvider:Ldagger/internal/Provider;

    invoke-static {p3}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->closeFeatureProvider:Ldagger/internal/Provider;

    invoke-static {p4}, Ldagger/internal/InstanceFactory;->a(Ljava/lang/Object;)Ldagger/internal/InstanceFactory;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->openHistoryProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->settingsPanelComponentProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->closeFeatureProvider:Ldagger/internal/Provider;

    invoke-static {p1, p3, p4, p2}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideCoordinatorImpl$livetranslation_releaseFactory;->create(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideCoordinatorImpl$livetranslation_releaseFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->provideCoordinatorImpl$livetranslation_releaseProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    iget-object p2, p2, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->provideInteractorImplProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideStartStopTranslationFactory;->create(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideStartStopTranslationFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->provideStartStopTranslationProvider:Ldagger/internal/Provider;

    iget-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    iget-object p2, p2, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->provideInteractorImplProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideTextSizeSelectorFactory;->create(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideTextSizeSelectorFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->provideTextSizeSelectorProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->liveTranslationComponentImpl:Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;

    iget-object p3, p3, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$LiveTranslationComponentImpl;->provideInteractorProvider:Ldagger/internal/Provider;

    iget-object p4, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->provideCoordinatorImpl$livetranslation_releaseProvider:Ldagger/internal/Provider;

    iget-object v0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->provideStartStopTranslationProvider:Ldagger/internal/Provider;

    invoke-static {p1, p3, p4, v0, p2}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorImplFactory;->create(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorImplFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->provideInteractorImplProvider:Ldagger/internal/Provider;

    invoke-static {p1, p2}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorFactory;->create(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideInteractorFactory;

    move-result-object p2

    invoke-static {p2}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->provideInteractorProvider:Ldagger/internal/Provider;

    iget-object p3, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->rootViewProvider:Ldagger/internal/Provider;

    invoke-static {p1, p3, p2}, Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory;->create(Lcom/sightcall/livetranslation/settings/SettingsPanelComponent$Module;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lcom/sightcall/livetranslation/settings/SettingsPanelComponent_Module_ProvideViewHolder$livetranslation_releaseFactory;

    move-result-object p1

    invoke-static {p1}, Ldagger/internal/DoubleCheck;->b(Ldagger/internal/Provider;)Ldagger/internal/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->provideViewHolder$livetranslation_releaseProvider:Ldagger/internal/Provider;

    return-void
.end method


# virtual methods
.method public getCoordinator()Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->provideCoordinatorImpl$livetranslation_releaseProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/settings/SettingsPanelCoordinatorImpl;

    return-object p0
.end method

.method public getInteractor()Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl<",
            "Lcom/sightcall/livetranslation/settings/SettingsPanelInteractor$State;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->provideInteractorImplProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/libraries/archi/nucleus/NucleusInteractorImpl;

    return-object p0
.end method

.method public getViewHolder()Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/livetranslation/DaggerLiveTranslationComponent$SettingsPanelComponentImpl;->provideViewHolder$livetranslation_releaseProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/livetranslation/settings/SettingsPanelViewHolder;

    return-object p0
.end method
