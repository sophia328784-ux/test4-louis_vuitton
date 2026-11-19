.class final Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;
.super Lcom/vuitton/android/presentation/LVApplication_HiltComponents$ActivityC;
.source "SourceFile"


# instance fields
.field public final a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

.field public final b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field public final c:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/vuitton/android/presentation/LVApplication_HiltComponents$ActivityC;-><init>()V

    iput-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->c:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    iput-object p1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    return-void
.end method


# virtual methods
.method public final A(Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final A0()Lcom/vuitton/android/presentation/link/parsing/LinkParser;
    .locals 5

    new-instance v0, Lcom/vuitton/android/presentation/link/parsing/LinkParser;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->y0()Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->y0()Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter;-><init>(Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    new-instance v4, Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object p0

    invoke-direct {v4, p0}, Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vuitton/android/presentation/link/parsing/LinkParser;-><init>(Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;)V

    return-object v0
.end method

.method public final B(Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final B0()Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;
    .locals 5

    new-instance v0, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/domain/usecase/config/GetUrlCatchingListUseCase;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vuitton/android/domain/usecase/config/GetUrlCatchingListUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V

    iget-object v3, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/logger/Logger;

    new-instance v4, Lcom/vuitton/android/presentation/link/builder/DeepLinkBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-direct {v4, p0}, Lcom/vuitton/android/presentation/link/builder/DeepLinkBuilder;-><init>(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/GetUrlCatchingListUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/link/builder/DeepLinkBuilder;)V

    return-object v0
.end method

.method public final C(Lcom/vuitton/android/presentation/screen/options/OptionsActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    new-instance p0, Lcom/vuitton/android/presentation/PreprodRouter;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/PreprodRouter;-><init>()V

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;->p:Lcom/vuitton/android/presentation/PreprodRouter;

    return-void
.end method

.method public final D(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/logger/Logger;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->s:Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->t:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->v0()Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->u:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->w0()Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->v:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->x0()Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->w:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    return-void
.end method

.method public final E(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final F(Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/logger/Logger;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->l:Lcom/vuitton/foundation/logger/Logger;

    new-instance v0, Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfigParserProdImpl;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfigParserProdImpl;-><init>()V

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->m:Lcom/vuitton/android/presentation/screen/splash/AutomatedTestConfigParserProdImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->o:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->c()Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/splash/SplashScreenActivity;->p:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    return-void
.end method

.method public final G(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    new-instance p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;-><init>()V

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity;->p:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    return-void
.end method

.method public final H(Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final I(Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final J(Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final K(Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final L(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/ScanActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    new-instance p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;-><init>()V

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/ScanActivity;->s:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;

    return-void
.end method

.method public final M(Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->z0()Lcom/vuitton/android/presentation/link/LinkHandler;

    return-void
.end method

.method public final N(Lcom/vuitton/android/presentation/screen/options/settings/SettingsActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final O(Lcom/vuitton/android/presentation/screen/plp/activities/ExclusivePLPActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final P(Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final Q(Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final R(Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->x0()Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionActivity;->u:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    return-void
.end method

.method public final S(Lcom/vuitton/android/presentation/screen/plp/activities/SkusPLPActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final T(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final U(Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->B0()Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;->p:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    return-void
.end method

.method public final V(Lcom/vuitton/android/presentation/screen/thankyou/ThankYouActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final W(Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final X(Lcom/vuitton/android/presentation/screen/search/SearchActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->x0()Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->w:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    return-void
.end method

.method public final Y(Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final Z(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final a()Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;
    .locals 3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->k()Ldagger/internal/LazyClassKeyMap;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCBuilder;

    iget-object v2, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    invoke-direct {v1, v2, p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCBuilder;-><init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;)V

    new-instance p0, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;

    invoke-direct {p0, v0, v1}, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;-><init>(Ldagger/internal/LazyClassKeyMap;Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;)V

    return-object p0
.end method

.method public final a0(Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->x0()Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/portal/PortalSliderActivity;->p:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    return-void
.end method

.method public final b(Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final b0(Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;->p:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->x0()Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;->q:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->w0()Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;->r:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->v0()Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;->u:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    return-void
.end method

.method public final c(Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->i:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/contracts/environment/Environment;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;->p:Lcom/vuitton/foundation/contracts/environment/Environment;

    return-void
.end method

.method public final c0(Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final d(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final d0(Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->z0()Lcom/vuitton/android/presentation/link/LinkHandler;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;->r:Lcom/vuitton/android/presentation/link/LinkHandler;

    return-void
.end method

.method public final e(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/logger/Logger;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->p:Lcom/vuitton/foundation/logger/Logger;

    return-void
.end method

.method public final e0(Lcom/vuitton/android/presentation/screen/story/StoryActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->z0()Lcom/vuitton/android/presentation/link/LinkHandler;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/story/StoryActivity;->q:Lcom/vuitton/android/presentation/link/LinkHandler;

    return-void
.end method

.method public final f(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final f0(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;-><init>()V

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->r:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/Json;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->s:Lkotlinx/serialization/json/Json;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->c()Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->t:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    return-void
.end method

.method public final g(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->t:Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->v0()Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->u:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    return-void
.end method

.method public final g0(Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->x0()Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->q:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->w0()Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->r:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->v0()Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->s:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->t:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/core/events/LVEventSender;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->u:Lcom/vuitton/android/core/events/LVEventSender;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/logger/Logger;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->v:Lcom/vuitton/foundation/logger/Logger;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->C1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->w:Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;

    return-void
.end method

.method public final h(Lcom/vuitton/android/presentation/screen/booking/MyExperiencesActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->x0()Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/booking/MyExperiencesActivity;->q:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    return-void
.end method

.method public final h0(Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;)V
    .locals 7

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->A0()Lcom/vuitton/android/presentation/link/parsing/LinkParser;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->l:Lcom/vuitton/android/presentation/link/parsing/LinkParser;

    new-instance v1, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->B0()Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    move-result-object v2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v3

    new-instance v4, Lcom/vuitton/android/presentation/helper/NavigationHelper;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v4, v5}, Lcom/vuitton/android/presentation/helper/NavigationHelper;-><init>(Lcom/vuitton/foundation/logger/Logger;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v5

    iget-object v6, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p1:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/webview/WebViewSocialAuthenticationHandler;

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/presentation/helper/NavigationHelper;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/screen/webview/WebViewSocialAuthenticationHandler;)V

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->m:Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;

    new-instance v1, Lcom/vuitton/android/presentation/link/parsing/WarmStartLinkExclusionPolicy;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->y0()Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/link/parsing/WarmStartLinkExclusionPolicy;-><init>(Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;)V

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->n:Lcom/vuitton/android/presentation/link/parsing/WarmStartLinkExclusionPolicy;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/logger/Logger;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherActivity;->o:Lcom/vuitton/foundation/logger/Logger;

    return-void
.end method

.method public final i(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final i0(Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->z0()Lcom/vuitton/android/presentation/link/LinkHandler;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;->p:Lcom/vuitton/android/presentation/link/LinkHandler;

    return-void
.end method

.method public final j(Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/logger/Logger;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->p:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity;->q:Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    return-void
.end method

.method public final j0(Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final k()Ldagger/internal/LazyClassKeyMap;
    .locals 2

    const/16 p0, 0x7c

    invoke-static {p0}, Lcom/google/common/collect/ImmutableMap;->a(I)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.options.accessibility.AccessibilityPreferencesViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.certificates.diamonds.add.AddCertificateViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.options.appinfo.AppInfoViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.audioplayer.AudioPlayerViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.authentication.AuthenticationViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.booking.confirmation.BookingConfirmationViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.booking.pass.BookingPassViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.repairs.cancellationreasons.bff.CancellationReasonsBffViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.repairs.cancellationreasons.CancellationReasonsViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.catalog.CatalogRoutingViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.catalog.CatalogViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.certificates.nfc.CertificateNfcScanViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.certificates.diamonds.transfer.CertificateTransferViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.certificates.CertificateViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.ConnectToWifiViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.distantrepairs.form.datepicker.DatePickerViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.deeplink.DeepLinkDispatcherViewModel"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing.DeviceDetectedViewModel"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.account.editavatar.EditAvatarViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.exclusivesales.ExclusiveSalesViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesViewModel"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.faq.FaqViewModel"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.pdp.FindInStoreViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.forceupdate.ForceUpdateViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.imagepicker.ImagePickerViewModel"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.imageviewer.ImageViewerViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.lightup.keepall.KeepAllDetailViewModel"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.options.legaltext.LegalTextViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailViewModel"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.LightUpScanViewModel"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.redirectlink.LinkViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.livevideo.LiveVideoViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.main.MainActivityViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.maintenance.MaintenanceViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.onboarding.OnboardingViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.options.optoutprivacymenu.OptOutPrivacyMenuViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.options.OptionsViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.osa.list.OsaListViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPExclusiveViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPSkusViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PSPViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.personalselections.list.PersonalSelectionsListViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.portal.PortalSliderViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.privacy.PrivacyViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.account.lvpass.QRCodeViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screenshot.ScreenshotViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.search.SearchViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.services.ServicesViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.options.settings.SettingsViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerDetailViewModel"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.authentication.social.SocialRegisterViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.splash.SplashScreenViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.spotlight.SpotlightViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.story.StoryViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.thankyou.ThankYouViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.thelookimmersivearticle.TheLookImmersiveArticleViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.mylv.TopBarAvatarViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.travel.form.TravelFormViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.travel.list.TravelListViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.tutorial.TutorialViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.account.userworldwideid.UserWorldwideIdViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.video.VideoViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.watch.detail.WatchDetailsViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.watch.settings.WatchSettingsViewModel"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.watch.tutorial.categories.WatchTutorialCategoriesViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.watchface.WatchfacePresentationViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.webview.WebViewViewModel"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.detail.WifiDeviceDetailViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const-string v1, "com.vuitton.android.presentation.screen.wishlist.WishlistViewModelImpl"

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->d(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->a(Z)Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    new-instance v0, Ldagger/internal/LazyClassKeyMap;

    invoke-direct {v0, p0}, Ldagger/internal/LazyClassKeyMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final k0(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->v0()Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->p:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->z0()Lcom/vuitton/android/presentation/link/LinkHandler;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->q:Lcom/vuitton/android/presentation/link/LinkHandler;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->r:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    return-void
.end method

.method public final l(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/common/BaseTrunkActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final l0(Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;)V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    new-instance v1, Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

    new-instance v2, Lcom/vuitton/android/domain/usecase/config/GetLanguageTagOfFacadeMyLVApiUrlUseCase;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vuitton/android/domain/usecase/config/GetLanguageTagOfFacadeMyLVApiUrlUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;-><init>(Lcom/vuitton/android/domain/usecase/config/GetLanguageTagOfFacadeMyLVApiUrlUseCase;)V

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->p:Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->w0()Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->q:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->v0()Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->r:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->s:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/logger/Logger;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/plp/activities/CatalogPLPActivity;->t:Lcom/vuitton/foundation/logger/Logger;

    return-void
.end method

.method public final m(Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final m0(Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final n(Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final n0(Lcom/vuitton/android/presentation/screen/orders/OrderActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    return-void
.end method

.method public final o(Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;-><init>()V

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivity;->p:Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivityRouter;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchActivity;->q:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    return-void
.end method

.method public final o0(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->x0()Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightActivity;->p:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    return-void
.end method

.method public final p(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->x0()Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideActivity;->p:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    return-void
.end method

.method public final p0()Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    invoke-direct {v0, v1, p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCBuilder;-><init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;)V

    return-object v0
.end method

.method public final q(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    new-instance p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;-><init>()V

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListActivity;->s:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;

    return-void
.end method

.method public final q0()Ldagger/hilt/android/internal/builders/FragmentComponentBuilder;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->c:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-direct {v0, p0, v1, v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$FragmentCBuilder;-><init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;)V

    return-object v0
.end method

.method public final r(Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->z0()Lcom/vuitton/android/presentation/link/LinkHandler;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;->p:Lcom/vuitton/android/presentation/link/LinkHandler;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->v0()Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;->q:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;->r:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    return-void
.end method

.method public final r0(Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final s(Lcom/vuitton/android/presentation/screen/booking/BookingActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->x0()Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/booking/BookingActivity;->p:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    return-void
.end method

.method public final s0(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    new-instance p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpRouter;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpRouter;-><init>()V

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->q:Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpRouter;

    return-void
.end method

.method public final t(Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/WatchTutorialsActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    new-instance p0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/WatchTutorialRouter;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/WatchTutorialRouter;-><init>()V

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/WatchTutorialsActivity;->p:Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/WatchTutorialRouter;

    return-void
.end method

.method public final t0(Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final u(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;)V
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    new-instance v0, Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;

    new-instance v1, Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;

    invoke-direct {v1}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;-><init>()V

    new-instance v2, Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;

    invoke-direct {v2}, Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;-><init>()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->B0()Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->x0()Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->p:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    return-void
.end method

.method public final u0(Lcom/vuitton/android/presentation/screen/main/MainActivity;)V
    .locals 9

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/main/MainActivity;->v:Lcom/vuitton/android/core/events/LVEventSender;

    new-instance v2, Lcom/vuitton/android/domain/usecase/authentication/oauth/RefreshAuthFromCheckoutUseCase;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->L0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->U:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v5

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v6

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/domain/usecase/authentication/oauth/RefreshAuthFromCheckoutUseCase;-><init>(Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/logger/Logger;)V

    iput-object v2, p1, Lcom/vuitton/android/presentation/screen/main/MainActivity;->w:Lcom/vuitton/android/domain/usecase/authentication/oauth/RefreshAuthFromCheckoutUseCase;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->v0()Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/main/MainActivity;->x:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    new-instance v1, Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

    new-instance v2, Lcom/vuitton/android/domain/usecase/config/GetLanguageTagOfFacadeMyLVApiUrlUseCase;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vuitton/android/domain/usecase/config/GetLanguageTagOfFacadeMyLVApiUrlUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;-><init>(Lcom/vuitton/android/domain/usecase/config/GetLanguageTagOfFacadeMyLVApiUrlUseCase;)V

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/main/MainActivity;->y:Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->z0()Lcom/vuitton/android/presentation/link/LinkHandler;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/main/MainActivity;->z:Lcom/vuitton/android/presentation/link/LinkHandler;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->w0()Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/main/MainActivity;->A:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->y0()Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/main/MainActivity;->B:Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

    new-instance v1, Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->y0()Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter;-><init>(Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;)V

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/main/MainActivity;->C:Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->x0()Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-result-object v1

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/main/MainActivity;->D:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    new-instance v1, Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;

    new-instance v2, Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;

    invoke-direct {v2}, Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;-><init>()V

    new-instance v3, Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;

    invoke-direct {v3}, Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;-><init>()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->B0()Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0}, Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;-><init>(Lcom/vuitton/android/presentation/screen/mylv/MyLvDeeplinkRouter;Lcom/vuitton/android/presentation/screen/services/ServicesDeeplinkRouter;Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;)V

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/main/MainActivity;->E:Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/main/MainActivity;->F:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    iget-object p0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/main/MainActivity;->G:Lcom/vuitton/android/presentation/chat/ChatAttachable;

    return-void
.end method

.method public final v(Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->B0()Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuActivity;->p:Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    return-void
.end method

.method public final v0()Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;
    .locals 8

    new-instance v0, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    iget-object v1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/chat/ChatCoordinator;

    move-object v3, v1

    move-object v1, v2

    new-instance v2, Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;

    iget-object v4, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v1:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/contracts/chat/ChatManager;

    invoke-direct {v2, v4}, Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;-><init>(Lcom/vuitton/foundation/contracts/chat/ChatManager;)V

    move-object v4, v3

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->z0()Lcom/vuitton/android/presentation/link/LinkHandler;

    move-result-object p0

    iget-object v5, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/chat/ChatAttachable;

    iget-object v6, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v4, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->o:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;-><init>(Lcom/vuitton/android/presentation/chat/ChatCoordinator;Lcom/vuitton/android/domain/usecase/chat/StreamChatEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/link/LinkHandler;Lcom/vuitton/android/presentation/chat/ChatAttachable;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/data/datasource/inappbanner/InAppBannerMemCacheDataSource;)V

    return-object v0
.end method

.method public final w(Lcom/vuitton/android/presentation/screen/repairs/RepairActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v0

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity;->p:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->v0()Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity;->q:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    return-void
.end method

.method public final w0()Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->B0()Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;)V

    return-object v0
.end method

.method public final x(Lcom/vuitton/android/presentation/screen/osa/OsaActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->x0()Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->p:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    return-void
.end method

.method public final x0()Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    iget-object v1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    move-object v2, v1

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v1

    move-object v3, v2

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v2

    move-object v4, v3

    new-instance v3, Lcom/vuitton/android/presentation/helper/NavigationHelper;

    iget-object v5, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v3, v5}, Lcom/vuitton/android/presentation/helper/NavigationHelper;-><init>(Lcom/vuitton/foundation/logger/Logger;)V

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v4

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->z0()Lcom/vuitton/android/presentation/link/LinkHandler;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;-><init>(Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/presentation/helper/NavigationHelper;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/link/LinkHandler;)V

    return-object v0
.end method

.method public final y(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v1, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->z0()Lcom/vuitton/android/presentation/link/LinkHandler;

    move-result-object p0

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->s:Lcom/vuitton/android/presentation/link/LinkHandler;

    return-void
.end method

.method public final y0()Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;-><init>(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V

    return-object v0
.end method

.method public final z(Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityActivity;)V
    .locals 1

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iput-object v0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->l:Lcom/vuitton/android/presentation/screenshaker/ScreenShakerSensorManager;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iput-object p0, p1, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->m:Lcom/vuitton/android/presentation/push/NotificationsManager;

    return-void
.end method

.method public final z0()Lcom/vuitton/android/presentation/link/LinkHandler;
    .locals 9

    new-instance v0, Lcom/vuitton/android/presentation/link/LinkHandler;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->y0()Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->A0()Lcom/vuitton/android/presentation/link/parsing/LinkParser;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->B0()Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    move-result-object v4

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ActivityCImpl;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v5

    new-instance v6, Lcom/vuitton/android/presentation/helper/NavigationHelper;

    iget-object v7, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v6, v7}, Lcom/vuitton/android/presentation/helper/NavigationHelper;-><init>(Lcom/vuitton/foundation/logger/Logger;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v7

    iget-object v8, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p1:Ldagger/internal/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/webview/WebViewSocialAuthenticationHandler;

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;-><init>(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/presentation/helper/NavigationHelper;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/screen/webview/WebViewSocialAuthenticationHandler;)V

    new-instance v4, Lcom/vuitton/android/presentation/helper/NavigationHelper;

    iget-object p0, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v4, p0}, Lcom/vuitton/android/presentation/helper/NavigationHelper;-><init>(Lcom/vuitton/foundation/logger/Logger;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vuitton/android/presentation/link/LinkHandler;-><init>(Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;Lcom/vuitton/android/presentation/link/parsing/LinkParser;Lcom/vuitton/android/presentation/link/navigation/LinkNavigator;Lcom/vuitton/android/presentation/helper/NavigationHelper;)V

    return-object v0
.end method
