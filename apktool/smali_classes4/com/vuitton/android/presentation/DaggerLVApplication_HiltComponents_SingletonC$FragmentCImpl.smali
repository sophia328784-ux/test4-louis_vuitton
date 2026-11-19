.class final Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;
.super Lcom/vuitton/android/presentation/LVApplication_HiltComponents$FragmentC;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;
    }
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

.field public final b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

.field public final c:Ldagger/internal/Provider;

.field public final d:Ldagger/internal/Provider;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/vuitton/android/presentation/LVApplication_HiltComponents$FragmentC;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iput-object p3, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    new-instance p2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;-><init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;I)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->c:Ldagger/internal/Provider;

    new-instance p2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;-><init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;I)V

    iput-object p2, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->d:Ldagger/internal/Provider;

    return-void
.end method


# virtual methods
.method public final A(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;)V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->I()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->I:Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->J:Lcom/vuitton/android/core/events/LVEventSender;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->w0()Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->K:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->L:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    return-void
.end method

.method public final B(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;)V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;-><init>()V

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;->G:Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;

    new-instance v0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookRouter;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookRouter;-><init>()V

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;->H:Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookRouter;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->I()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;->I:Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->w0()Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;->J:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentBffFragment;->K:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    return-void
.end method

.method public final C(Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;)V
    .locals 0

    new-instance p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/WatchTutorialRouter;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/WatchTutorialRouter;-><init>()V

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/WatchTutorialRouter;

    return-void
.end method

.method public final D(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;)V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;-><init>()V

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;-><init>()V

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/core/events/LVEventSender;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->K:Lcom/vuitton/android/core/events/LVEventSender;

    return-void
.end method

.method public final E(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;)V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;-><init>()V

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;->G:Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;->H:Lcom/vuitton/android/core/events/LVEventSender;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->w0()Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;->I:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairPaymentFailedFragment;->J:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    return-void
.end method

.method public final F(Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;)V
    .locals 0

    new-instance p0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;-><init>()V

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;

    return-void
.end method

.method public final G(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;)V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;-><init>()V

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;->H:Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->w0()Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;->I:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffFragment;->J:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    return-void
.end method

.method public final H(Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;)V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;-><init>()V

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->M:Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/core/events/LVEventSender;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsFragment;->N:Lcom/vuitton/android/core/events/LVEventSender;

    return-void
.end method

.method public final I()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    iget-object v1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->B0()Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    move-result-object v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V

    return-object v0
.end method

.method public final a()Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a()Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/core/events/LVEventSender;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/SpeakerTrunkEqualizerFragment;->L:Lcom/vuitton/android/core/events/LVEventSender;

    return-void
.end method

.method public final c(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairShippingConfirmationFragment;)V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;-><init>()V

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairShippingConfirmationFragment;->G:Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/core/events/LVEventSender;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairShippingConfirmationFragment;->H:Lcom/vuitton/android/core/events/LVEventSender;

    return-void
.end method

.method public final d(Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->I()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment;->G:Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/core/events/LVEventSender;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment;->H:Lcom/vuitton/android/core/events/LVEventSender;

    return-void
.end method

.method public final e(Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->F:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iget-object v1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->z0()Lcom/vuitton/android/presentation/link/LinkHandler;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->G:Lcom/vuitton/android/presentation/link/LinkHandler;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->c:Ldagger/internal/Provider;

    check-cast p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/AnalyticsWebInterface;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->H:Lcom/vuitton/android/presentation/screen/webview/AnalyticsWebInterface;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->I:Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/logger/Logger;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->J:Lcom/vuitton/foundation/logger/Logger;

    new-instance p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;-><init>()V

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->K:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    return-void
.end method

.method public final f(Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;)V
    .locals 0

    new-instance p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;-><init>()V

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    return-void
.end method

.method public final g(Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;)V
    .locals 0

    new-instance p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;-><init>()V

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeFragment;->H:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    return-void
.end method

.method public final h(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;)V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;-><init>()V

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->I:Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityFragment;->J:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    return-void
.end method

.method public final i(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;)V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->I()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;->G:Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;->H:Lcom/vuitton/android/core/events/LVEventSender;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->x0()Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;->I:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->w0()Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;->J:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;->K:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    return-void
.end method

.method public final j(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;)V
    .locals 0

    new-instance p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;-><init>()V

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;->F:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    return-void
.end method

.method public final k(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;)V
    .locals 1

    new-instance p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/helper/ScanNavigationHelper;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanBottomSheetRouter;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanBottomSheetRouter;-><init>()V

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/helper/ScanNavigationHelper;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanBottomSheetRouter;)V

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;->Q:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/helper/ScanNavigationHelper;

    return-void
.end method

.method public final l(Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->K:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    return-void
.end method

.method public final m(Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->c:Ldagger/internal/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->G:Ldagger/Lazy;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->d:Ldagger/internal/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->H:Ldagger/Lazy;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->B0()Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->I:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->J:Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/logger/Logger;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->K:Lcom/vuitton/foundation/logger/Logger;

    iget-object v1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/Json;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->L:Lkotlinx/serialization/json/Json;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->B0()Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->M:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    iget-object v1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->N:Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->z0()Lcom/vuitton/android/presentation/link/LinkHandler;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->O:Lcom/vuitton/android/presentation/link/LinkHandler;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->w0()Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->P:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    iget-object v1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->Q:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->v0()Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->R:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewFragment;->S:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    return-void
.end method

.method public final n(Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->F:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iget-object v1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->z0()Lcom/vuitton/android/presentation/link/LinkHandler;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->G:Lcom/vuitton/android/presentation/link/LinkHandler;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->c:Ldagger/internal/Provider;

    check-cast p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/AnalyticsWebInterface;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->H:Lcom/vuitton/android/presentation/screen/webview/AnalyticsWebInterface;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->I:Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/logger/Logger;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->J:Lcom/vuitton/foundation/logger/Logger;

    new-instance p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;-><init>()V

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->K:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    return-void
.end method

.method public final o(Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;->F:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iget-object v1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->z0()Lcom/vuitton/android/presentation/link/LinkHandler;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;->G:Lcom/vuitton/android/presentation/link/LinkHandler;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->c:Ldagger/internal/Provider;

    check-cast p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl$SwitchingProvider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/webview/AnalyticsWebInterface;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;->H:Lcom/vuitton/android/presentation/screen/webview/AnalyticsWebInterface;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;->I:Lcom/vuitton/android/presentation/security/AkamaiSecurityHelper;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/logger/Logger;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;->J:Lcom/vuitton/foundation/logger/Logger;

    return-void
.end method

.method public final p(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;)V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;-><init>()V

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/core/events/LVEventSender;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;->K:Lcom/vuitton/android/core/events/LVEventSender;

    return-void
.end method

.method public final q(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;)V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;-><init>()V

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;->G:Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->I()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;->H:Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->w0()Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;->I:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentFragment;->J:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    return-void
.end method

.method public final r(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;)V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->I()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->I:Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->J:Lcom/vuitton/android/core/events/LVEventSender;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->w0()Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->K:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->L:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    return-void
.end method

.method public final s(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;)V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;-><init>()V

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;->H:Lcom/vuitton/android/presentation/screen/distantrepairs/DistantRepairRouter;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->w0()Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;->I:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormFragment;->J:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    return-void
.end method

.method public final t(Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;)V
    .locals 0

    new-instance p0, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;-><init>()V

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/home/WatchVersionChooserBottomSheet;->O:Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityRouter;

    return-void
.end method

.method public final u(Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;)V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;-><init>()V

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->O:Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivityRouter;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/PairingBottomSheetDialogFragment;->P:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    return-void
.end method

.method public final v(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->I()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->H:Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->w0()Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->I:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->J:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    return-void
.end method

.method public final w(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;)V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->I()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->H:Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->w0()Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->I:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->J:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    return-void
.end method

.method public final x(Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;)V
    .locals 0

    new-instance p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;-><init>()V

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    return-void
.end method

.method public final y(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/core/events/LVEventSender;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->H:Lcom/vuitton/android/core/events/LVEventSender;

    new-instance p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;-><init>()V

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;

    return-void
.end method

.method public final z(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;)V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->I()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->G:Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->H:Lcom/vuitton/android/core/events/LVEventSender;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->x0()Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->I:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->w0()Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->J:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->K:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    return-void
.end method
