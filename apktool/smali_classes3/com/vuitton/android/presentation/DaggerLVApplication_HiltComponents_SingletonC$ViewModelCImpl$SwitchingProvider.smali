.class final Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SwitchingProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

.field public final b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;

    iput p3, p0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 51

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;

    iget v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1

    :pswitch_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v3

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->d1()Lcom/vuitton/android/domain/usecase/account/GetPassUseCase;

    move-result-object v2

    iget-object v4, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/logger/Logger;

    iget-object v1, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/account/GetPassUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;)V

    return-object v0

    :pswitch_1
    new-instance v5, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v6

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->n0()Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;

    move-result-object v8

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->q1()Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;

    move-result-object v9

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;-><init>(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v5

    :pswitch_2
    new-instance v6, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v8

    new-instance v9, Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-direct {v9, v0}, Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;-><init>(Lcom/vuitton/android/domain/repository/ConsentRepository;)V

    new-instance v10, Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;

    iget-object v0, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-direct {v10, v0}, Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;-><init>(Lcom/vuitton/android/domain/repository/ConsentRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->P2()Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;

    move-result-object v11

    new-instance v12, Lcom/vuitton/android/domain/usecase/permissions/SetNotificationsPermissionAskedUseCase;

    iget-object v0, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D4:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/PermissionsRepository;

    invoke-direct {v12, v0}, Lcom/vuitton/android/domain/usecase/permissions/SetNotificationsPermissionAskedUseCase;-><init>(Lcom/vuitton/android/domain/repository/PermissionsRepository;)V

    new-instance v13, Lcom/vuitton/android/domain/usecase/privacy/consent/SetPiplCbdtAgreementUseCase;

    iget-object v0, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-direct {v13, v0}, Lcom/vuitton/android/domain/usecase/privacy/consent/SetPiplCbdtAgreementUseCase;-><init>(Lcom/vuitton/android/domain/repository/ConsentRepository;)V

    new-instance v14, Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;

    iget-object v0, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-direct {v14, v0}, Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;-><init>(Lcom/vuitton/android/domain/repository/ConsentRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K2()Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;

    move-result-object v15

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->R1()Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;

    move-result-object v16

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->Q2()Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;

    move-result-object v17

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->R2()Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StopAppsFlyerUseCase;

    move-result-object v18

    new-instance v0, Lcom/vuitton/android/domain/usecase/privacy/consent/UserHasConsentForAppsFlyerUseCase;

    iget-object v2, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-direct {v0, v2}, Lcom/vuitton/android/domain/usecase/privacy/consent/UserHasConsentForAppsFlyerUseCase;-><init>(Lcom/vuitton/android/domain/repository/ConsentRepository;)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v22

    move-object/from16 v19, v0

    invoke-direct/range {v6 .. v22}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;-><init>(Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;Lcom/vuitton/android/domain/usecase/permissions/SetNotificationsPermissionAskedUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/SetPiplCbdtAgreementUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/SetConsentsUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StopAppsFlyerUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/UserHasConsentForAppsFlyerUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V

    return-object v6

    :pswitch_3
    new-instance v7, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->h1()Lcom/vuitton/android/domain/usecase/booking/GetPreBookSummaryUseCase;

    move-result-object v9

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->l()Lcom/vuitton/android/domain/usecase/booking/AddPreBookUseCase;

    move-result-object v10

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->i3()Lcom/vuitton/android/domain/usecase/booking/UpdatePreBookUseCase;

    move-result-object v11

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->J()Lcom/vuitton/android/domain/usecase/booking/DeletePrebookUseCase;

    move-result-object v12

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->G()Lcom/vuitton/android/domain/usecase/booking/DeleteAllPrebooksUseCase;

    move-result-object v13

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->C()Lcom/vuitton/android/domain/usecase/booking/ConfirmPreBookUseCase;

    move-result-object v14

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v15

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v17

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v19

    invoke-direct/range {v7 .. v19}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModelImpl;-><init>(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/usecase/booking/GetPreBookSummaryUseCase;Lcom/vuitton/android/domain/usecase/booking/AddPreBookUseCase;Lcom/vuitton/android/domain/usecase/booking/UpdatePreBookUseCase;Lcom/vuitton/android/domain/usecase/booking/DeletePrebookUseCase;Lcom/vuitton/android/domain/usecase/booking/DeleteAllPrebooksUseCase;Lcom/vuitton/android/domain/usecase/booking/ConfirmPreBookUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V

    return-object v7

    :pswitch_4
    new-instance v0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;

    invoke-static {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v2

    iget-object v5, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object v6, v4

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v4

    move-object v7, v1

    move-object v1, v3

    move-object v3, v5

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->f1()Lcom/vuitton/android/domain/usecase/portal/GetPortalSliderFeedUseCase;

    move-result-object v5

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->z()Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/portal/GetPortalSliderFeedUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;)V

    return-object v0

    :pswitch_5
    move-object v6, v2

    new-instance v0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;

    new-instance v1, Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;

    iget-object v2, v6, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->c2:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/PlaceRepository;

    invoke-direct {v1, v2}, Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;-><init>(Lcom/vuitton/android/domain/repository/PlaceRepository;)V

    new-instance v2, Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByPlaceIdUseCase;

    iget-object v3, v6, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->c2:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/PlaceRepository;

    invoke-direct {v2, v3}, Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByPlaceIdUseCase;-><init>(Lcom/vuitton/android/domain/repository/PlaceRepository;)V

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByPlaceIdUseCase;)V

    return-object v0

    :pswitch_6
    move-object v7, v1

    move-object v6, v2

    new-instance v4, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;

    iget-object v0, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v0

    iget-object v1, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/monitoring/Monitor;

    new-instance v8, Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsListUseCase;

    iget-object v2, v6, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->S4:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/PersonalSelectionsRepository;

    invoke-direct {v8, v2}, Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsListUseCase;-><init>(Lcom/vuitton/android/domain/repository/PersonalSelectionsRepository;)V

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v9

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v10

    move-object v6, v0

    move-object v7, v1

    invoke-direct/range {v4 .. v10}, Lcom/vuitton/android/presentation/screen/personalselections/list/PersonalSelectionsListViewModelImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsListUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;)V

    return-object v4

    :pswitch_7
    move-object v7, v1

    move-object v6, v2

    new-instance v5, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;

    invoke-static {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v0

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v1

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->t2()Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

    move-result-object v8

    iget-object v2, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/vuitton/foundation/logger/Logger;

    iget-object v2, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-static {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v11

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v12

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K1()Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

    move-result-object v13

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->o()Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    move-result-object v14

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K()Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    move-result-object v15

    iget-object v2, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v17

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v18

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v19

    new-instance v2, Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;

    iget-object v3, v6, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->S4:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/PersonalSelectionsRepository;

    invoke-direct {v2, v3}, Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;-><init>(Lcom/vuitton/android/domain/repository/PersonalSelectionsRepository;)V

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->x1()Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

    move-result-object v21

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v22

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v23

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->V1()Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    move-result-object v24

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v25

    move-object v6, v0

    move-object v7, v1

    move-object/from16 v20, v2

    invoke-direct/range {v5 .. v25}, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/core/events/LVEventSender;Landroid/app/Application;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;)V

    return-object v5

    :pswitch_8
    move-object v7, v1

    move-object v6, v2

    new-instance v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;

    invoke-static {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v1

    invoke-static {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v8

    iget-object v2, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/vuitton/foundation/logger/Logger;

    iget-object v2, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v11

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v12

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v13

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->i2()Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

    move-result-object v14

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v15

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->k1()Lcom/vuitton/android/domain/usecase/products/GetProductShortUseCase;

    move-result-object v16

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v17

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->x1()Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

    move-result-object v18

    new-instance v2, Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;

    iget-object v3, v6, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->S4:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/PersonalSelectionsRepository;

    invoke-direct {v2, v3}, Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;-><init>(Lcom/vuitton/android/domain/repository/PersonalSelectionsRepository;)V

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->X1()Lcom/vuitton/android/domain/usecase/personalselections/LikePersonalSelectionsUseCase;

    move-result-object v20

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v21

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->V2()Lcom/vuitton/android/domain/usecase/personalselections/UnlikePersonalSelectionsUseCase;

    move-result-object v22

    move-object v6, v0

    move-object v7, v1

    move-object/from16 v19, v2

    invoke-direct/range {v6 .. v22}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModelImpl;-><init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/products/GetProductShortUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsDetailUseCase;Lcom/vuitton/android/domain/usecase/personalselections/LikePersonalSelectionsUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/personalselections/UnlikePersonalSelectionsUseCase;)V

    return-object v6

    :pswitch_9
    move-object v7, v1

    move-object v6, v2

    new-instance v0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;

    invoke-static {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v8

    invoke-static {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v9

    iget-object v1, v6, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v10

    iget-object v2, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v12

    iget-object v2, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;

    new-instance v14, Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j1:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    invoke-direct {v14, v2}, Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;-><init>(Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;)V

    new-instance v15, Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;

    iget-object v1, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    invoke-direct {v15, v1}, Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;-><init>(Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;)V

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->v0()Lcom/vuitton/android/domain/usecase/account/notifications/GetContactabilityUseCase;

    move-result-object v16

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->u0()Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;

    move-result-object v17

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->P2()Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;

    move-result-object v18

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->e3()Lcom/vuitton/android/domain/usecase/privacy/UpdateConsentForCustomisationTrackerUseCase;

    move-result-object v19

    move-object v7, v0

    invoke-direct/range {v7 .. v19}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModelImpl;-><init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;Lcom/vuitton/android/domain/usecase/account/notifications/GetContactabilityUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;Lcom/vuitton/android/domain/usecase/privacy/UpdateConsentForCustomisationTrackerUseCase;)V

    return-object v7

    :pswitch_a
    move-object v7, v1

    move-object v6, v2

    new-instance v8, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;

    invoke-static {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v9

    iget-object v0, v6, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v10

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v11

    iget-object v1, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/vuitton/foundation/logger/Logger;

    iget-object v1, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-static {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v14

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v15

    iget-object v1, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->C0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    iget-object v1, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v18

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v19

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v20

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v21

    new-instance v1, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->S2:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/CatalogRepository;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;-><init>(Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->R0()Lcom/vuitton/android/domain/usecase/legal/GetLegalConsentUseCase;

    move-result-object v23

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->z0()Lcom/vuitton/android/domain/usecase/pdp/customization/GetCustomizationUseCase;

    move-result-object v24

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->n()Lcom/vuitton/android/domain/usecase/cart/AddProductToCartUseCase;

    move-result-object v25

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->L()Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

    move-result-object v26

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->j1()Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;

    move-result-object v27

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->J2()Lcom/vuitton/android/domain/usecase/pdp/vto/SetBeautyConsentUseCase;

    move-result-object v28

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->H2()Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase;

    move-result-object v29

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v30

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->L1()Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;

    move-result-object v31

    new-instance v2, Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->O1()Lcom/vuitton/android/domain/usecase/pdp/vto/HasConsentedBeautyUseCase;

    move-result-object v33

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->V1()Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    move-result-object v34

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->r2()Lcom/vuitton/android/domain/usecase/pdp/customization/RemoveCustomizationUseCase;

    move-result-object v35

    new-instance v3, Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->V2:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/BackInStockRepository;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;-><init>(Lcom/vuitton/android/domain/repository/BackInStockRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->o()Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    move-result-object v37

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->W1()Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

    move-result-object v38

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->z()Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;

    move-result-object v39

    new-instance v4, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->S2:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/CatalogRepository;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v7

    move-object/from16 v22, v1

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v1

    invoke-direct {v4, v5, v7, v1}, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;-><init>(Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V

    new-instance v1, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E2:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/DynamicYieldRepository;

    invoke-direct {v1, v5}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;-><init>(Lcom/vuitton/android/domain/repository/DynamicYieldRepository;)V

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->A0()Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPdpChooseVariationUseCase;

    move-result-object v42

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->y0()Lcom/vuitton/android/domain/usecase/products/GetCrossSellProductListUseCase;

    move-result-object v43

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->j()Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;

    move-result-object v44

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K()Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    move-result-object v45

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->t2()Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

    move-result-object v46

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->l1()Lcom/vuitton/android/domain/usecase/products/GetProductVariationsAvailabilityUseCase;

    move-result-object v47

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->u0()Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;

    move-result-object v48

    new-instance v5, Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;

    iget-object v6, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->H1:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/domain/repository/AICompanionRepository;

    invoke-direct {v5, v6}, Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;-><init>(Lcom/vuitton/android/domain/repository/AICompanionRepository;)V

    new-instance v6, Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->H1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AICompanionRepository;

    invoke-direct {v6, v0}, Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;-><init>(Lcom/vuitton/android/domain/repository/AICompanionRepository;)V

    move-object/from16 v41, v1

    move-object/from16 v32, v2

    move-object/from16 v36, v3

    move-object/from16 v40, v4

    move-object/from16 v49, v5

    move-object/from16 v50, v6

    invoke-direct/range {v8 .. v50}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;Lcom/vuitton/android/domain/usecase/legal/GetLegalConsentUseCase;Lcom/vuitton/android/domain/usecase/pdp/customization/GetCustomizationUseCase;Lcom/vuitton/android/domain/usecase/cart/AddProductToCartUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/pdp/GetProductDetailUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/SetBeautyConsentUseCase;Lcom/vuitton/android/domain/usecase/pdp/customization/SaveCustomizationUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/HasConsentedBeautyUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/pdp/customization/RemoveCustomizationUseCase;Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPdpChooseVariationUseCase;Lcom/vuitton/android/domain/usecase/products/GetCrossSellProductListUseCase;Lcom/vuitton/android/domain/usecase/products/AddLastViewedProductSkuUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductVariationsAvailabilityUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;)V

    return-object v8

    :pswitch_b
    move-object v7, v1

    move-object v6, v2

    new-instance v9, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;

    iget-object v0, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v0, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v0, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->o4:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->q1()Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;

    move-result-object v13

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K1()Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

    move-result-object v14

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v15

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->V1()Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    move-result-object v16

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->o()Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    move-result-object v17

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K()Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    move-result-object v18

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v19

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->t2()Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

    move-result-object v20

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v21

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v22

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v23

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v24

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v25

    new-instance v0, Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;

    iget-object v1, v6, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->P3:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/SearchHistoryRepository;

    invoke-direct {v0, v1}, Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;-><init>(Lcom/vuitton/android/domain/repository/SearchHistoryRepository;)V

    move-object/from16 v26, v0

    invoke-direct/range {v9 .. v26}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PSPViewModelImpl;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;)V

    return-object v9

    :pswitch_c
    move-object v7, v1

    move-object v6, v2

    new-instance v10, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;

    iget-object v0, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v0, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v0, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->o4:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->q1()Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;

    move-result-object v14

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K1()Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

    move-result-object v15

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v16

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->V1()Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    move-result-object v17

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->o()Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    move-result-object v18

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v19

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K()Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    move-result-object v20

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v21

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->t2()Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

    move-result-object v22

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v23

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v24

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v25

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->p1()Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;

    move-result-object v26

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->L()Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

    move-result-object v27

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->W1()Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

    move-result-object v28

    invoke-direct/range {v10 .. v28}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModelImpl;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/plp/GetSearchPLPUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;)V

    return-object v10

    :pswitch_d
    move-object v7, v1

    move-object v6, v2

    new-instance v11, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;

    iget-object v0, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v0, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v0, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->o4:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->n0()Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;

    move-result-object v15

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K1()Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

    move-result-object v16

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v17

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->V1()Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    move-result-object v18

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->o()Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    move-result-object v19

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v20

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K()Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    move-result-object v21

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v22

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->t2()Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

    move-result-object v23

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v24

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v25

    invoke-static {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v26

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v27

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->p1()Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;

    move-result-object v28

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->L()Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

    move-result-object v29

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->W1()Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

    move-result-object v30

    invoke-direct/range {v11 .. v30}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModelImpl;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;)V

    return-object v11

    :pswitch_e
    move-object v7, v1

    move-object v6, v2

    new-instance v12, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPSkusViewModelImpl;

    iget-object v0, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v0, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->w1()Lcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;

    move-result-object v15

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K1()Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

    move-result-object v16

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v17

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->V1()Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    move-result-object v18

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->o()Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    move-result-object v19

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K()Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    move-result-object v20

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v21

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->t2()Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

    move-result-object v22

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v23

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v24

    invoke-static {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v25

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v26

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v27

    new-instance v0, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSlotClickUseCase;

    iget-object v1, v6, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E2:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/DynamicYieldRepository;

    iget-object v1, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v0, v2, v1}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSlotClickUseCase;-><init>(Lcom/vuitton/android/domain/repository/DynamicYieldRepository;Lcom/vuitton/foundation/logger/Logger;)V

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v29

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->B0()Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase;

    move-result-object v30

    move-object/from16 v28, v0

    invoke-direct/range {v12 .. v30}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPSkusViewModelImpl;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSlotClickUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase;)V

    return-object v12

    :pswitch_f
    move-object v7, v1

    move-object v6, v2

    new-instance v13, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl;

    iget-object v0, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v0, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v0, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->o4:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;

    invoke-static {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v17

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K1()Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

    move-result-object v18

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->G0()Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;

    move-result-object v19

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v20

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->V1()Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    move-result-object v21

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->o()Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    move-result-object v22

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K()Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    move-result-object v23

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v24

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->t2()Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

    move-result-object v25

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v26

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v27

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v28

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v29

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v30

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->B0()Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase;

    move-result-object v31

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->G1()Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;

    move-result-object v32

    invoke-direct/range {v13 .. v32}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPExclusiveViewModelImpl;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/domain/usecase/plp/GetExclusivePLPUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase;Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;)V

    return-object v13

    :pswitch_10
    move-object v7, v1

    move-object v6, v2

    new-instance v14, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl;

    iget-object v0, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v0, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v0, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->o4:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;

    invoke-static {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v18

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->n0()Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;

    move-result-object v19

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K1()Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

    move-result-object v20

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v21

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->V1()Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    move-result-object v22

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->o()Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    move-result-object v23

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K()Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    move-result-object v24

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v25

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->t2()Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

    move-result-object v26

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v27

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v28

    new-instance v0, Lcom/vuitton/android/domain/usecase/catalog/GetCatalogUseCase;

    iget-object v1, v6, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->S2:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/CatalogRepository;

    invoke-direct {v0, v1}, Lcom/vuitton/android/domain/usecase/catalog/GetCatalogUseCase;-><init>(Lcom/vuitton/android/domain/repository/CatalogRepository;)V

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v30

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v31

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v32

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->B0()Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase;

    move-result-object v33

    move-object/from16 v29, v0

    invoke-direct/range {v14 .. v33}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/PLPCatalogViewModelImpl;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/plp/GetCategoryPlpUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/catalog/GetCatalogUseCase;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYPlpChooseVariationUseCase;)V

    return-object v14

    :pswitch_11
    move-object v7, v1

    move-object v6, v2

    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;

    invoke-static {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v1

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v3

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v4

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->Z()Lcom/vuitton/android/domain/usecase/appointment/GetAppointmentReasonListUseCase;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/appointment/GetAppointmentReasonListUseCase;)V

    return-object v0

    :pswitch_12
    move-object v7, v1

    move-object v6, v2

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;

    invoke-static {v6}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v2

    iget-object v0, v6, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v3

    iget-object v4, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v5

    move-object v8, v6

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v6

    iget-object v9, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    move-object v10, v8

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v8

    move-object v11, v7

    move-object v7, v9

    invoke-virtual {v11}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v9

    move-object v12, v10

    invoke-virtual {v11}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v10

    move-object v13, v11

    invoke-virtual {v12}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->T0()Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;

    move-result-object v11

    move-object v14, v12

    new-instance v12, Lcom/vuitton/android/domain/usecase/account/consent/PatchUserConsentsUseCase;

    iget-object v15, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->h1:Ldagger/internal/Provider;

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/android/domain/repository/AccountRepository;

    move-object/from16 p0, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->P:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/LoginStateRepository;

    invoke-direct {v12, v15, v1}, Lcom/vuitton/android/domain/usecase/account/consent/PatchUserConsentsUseCase;-><init>(Lcom/vuitton/android/domain/repository/AccountRepository;Lcom/vuitton/android/domain/repository/LoginStateRepository;)V

    move-object v1, v13

    new-instance v13, Lcom/vuitton/android/domain/usecase/appointment/PrebookAppointmentUseCase;

    iget-object v15, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y3:Ldagger/internal/Provider;

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/android/domain/repository/AppointmentRepository;

    invoke-direct {v13, v15}, Lcom/vuitton/android/domain/usecase/appointment/PrebookAppointmentUseCase;-><init>(Lcom/vuitton/android/domain/repository/AppointmentRepository;)V

    move-object v15, v14

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v14

    move-object v1, v15

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->z1()Lcom/vuitton/android/domain/usecase/osa/GetStoreListByCodesUseCase;

    move-result-object v15

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->U0()Lcom/vuitton/android/domain/usecase/osa/GetLocatedStoreListUseCase;

    move-result-object v16

    new-instance v1, Lcom/vuitton/android/domain/usecase/appointment/GetStoreTimeSlotListUseCase;

    move-object/from16 v17, v2

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v2

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y3:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/AppointmentRepository;

    invoke-direct {v1, v2, v3}, Lcom/vuitton/android/domain/usecase/appointment/GetStoreTimeSlotListUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/AppointmentRepository;)V

    new-instance v2, Lcom/vuitton/android/domain/usecase/appointment/GetStoreAvailabilityListUseCase;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v3

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AppointmentRepository;

    invoke-direct {v2, v3, v0}, Lcom/vuitton/android/domain/usecase/appointment/GetStoreAvailabilityListUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/AppointmentRepository;)V

    move-object/from16 v3, v18

    move-object/from16 v18, v2

    move-object/from16 v2, v17

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v18}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;Lcom/vuitton/android/domain/usecase/account/consent/PatchUserConsentsUseCase;Lcom/vuitton/android/domain/usecase/appointment/PrebookAppointmentUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/osa/GetStoreListByCodesUseCase;Lcom/vuitton/android/domain/usecase/osa/GetLocatedStoreListUseCase;Lcom/vuitton/android/domain/usecase/appointment/GetStoreTimeSlotListUseCase;Lcom/vuitton/android/domain/usecase/appointment/GetStoreAvailabilityListUseCase;)V

    return-object v1

    :pswitch_13
    move-object v15, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v3

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v6

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v8

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v9

    new-instance v10, Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;

    iget-object v0, v15, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v11

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->l4:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/OnlineStoreAppointmentRepository;

    invoke-direct {v10, v11, v0}, Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/OnlineStoreAppointmentRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v11

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b1()Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;

    move-result-object v12

    invoke-direct/range {v2 .. v12}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;)V

    return-object v2

    :pswitch_14
    move-object v15, v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v4

    invoke-static {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v5

    iget-object v0, v15, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v6

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lkotlinx/serialization/json/Json;

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v10

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v11

    new-instance v12, Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;

    invoke-direct {v12}, Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;-><init>()V

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M()Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    move-result-object v13

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M()Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    move-result-object v14

    move-object v2, v15

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M()Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    move-result-object v15

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v16

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v17

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v18

    move-object/from16 p0, v3

    new-instance v3, Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;

    move-object/from16 v19, v4

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->h1:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/AccountRepository;

    invoke-direct {v3, v4}, Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;-><init>(Lcom/vuitton/android/domain/repository/AccountRepository;)V

    new-instance v4, Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;

    move-object/from16 v20, v3

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v3

    move-object/from16 v21, v5

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->l4:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/OnlineStoreAppointmentRepository;

    invoke-direct {v4, v3, v5}, Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/OnlineStoreAppointmentRepository;)V

    move-object/from16 v5, v21

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->f2()Lcom/vuitton/android/domain/usecase/appointment/ModifyAppointmentUseCase;

    move-result-object v21

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v22

    new-instance v1, Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v3

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AppointmentRepository;

    invoke-direct {v1, v3, v0}, Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/AppointmentRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->L0()Lcom/vuitton/android/domain/usecase/forms/GetGuestAppointmentFormUseCase;

    move-result-object v24

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->U()Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    move-result-object v25

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b1()Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;

    move-result-object v26

    move-object/from16 v3, v20

    move-object/from16 v20, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v3

    move-object/from16 v3, p0

    move-object/from16 v23, v1

    invoke-direct/range {v3 .. v26}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;-><init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;Lcom/vuitton/android/domain/usecase/osa/CancelAppointmentUseCase;Lcom/vuitton/android/domain/usecase/appointment/ModifyAppointmentUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;Lcom/vuitton/android/domain/usecase/forms/GetGuestAppointmentFormUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;)V

    return-object v3

    :pswitch_15
    new-instance v4, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;

    invoke-static {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v5

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v7

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v9

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v10

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v11

    new-instance v12, Lcom/vuitton/android/domain/usecase/account/order/GetOrdersUseCase;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->z2:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/OrderRepository;

    invoke-direct {v12, v3}, Lcom/vuitton/android/domain/usecase/account/order/GetOrdersUseCase;-><init>(Lcom/vuitton/android/domain/repository/OrderRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->a1()Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;

    move-result-object v13

    new-instance v14, Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->z2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/OrderRepository;

    invoke-direct {v14, v0}, Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;-><init>(Lcom/vuitton/android/domain/repository/OrderRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->O0()Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase;

    move-result-object v15

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v16

    invoke-direct/range {v4 .. v16}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOrdersUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetInvoiceUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V

    return-object v4

    :pswitch_16
    new-instance v5, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnViewModelImpl;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v7

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v8

    new-instance v9, Lcom/vuitton/android/domain/usecase/account/order/GetOrderReturnReasonsUseCase;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->z2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/OrderRepository;

    invoke-direct {v9, v0}, Lcom/vuitton/android/domain/usecase/account/order/GetOrderReturnReasonsUseCase;-><init>(Lcom/vuitton/android/domain/repository/OrderRepository;)V

    new-instance v10, Lcom/vuitton/android/domain/usecase/account/order/ConfirmOrderReturnUseCase;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->z2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/OrderRepository;

    invoke-direct {v10, v0}, Lcom/vuitton/android/domain/usecase/account/order/ConfirmOrderReturnUseCase;-><init>(Lcom/vuitton/android/domain/repository/OrderRepository;)V

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnViewModelImpl;-><init>(Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/account/order/GetOrderReturnReasonsUseCase;Lcom/vuitton/android/domain/usecase/account/order/ConfirmOrderReturnUseCase;)V

    return-object v5

    :pswitch_17
    new-instance v6, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v7

    invoke-static {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v8

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v9

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v10

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v11

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/vuitton/android/domain/monitoring/Monitor;

    new-instance v13, Lcom/vuitton/android/domain/usecase/account/order/GetOrdersUseCase;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->z2:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/OrderRepository;

    invoke-direct {v13, v3}, Lcom/vuitton/android/domain/usecase/account/order/GetOrdersUseCase;-><init>(Lcom/vuitton/android/domain/repository/OrderRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v14

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/vuitton/foundation/logger/Logger;

    new-instance v3, Lcom/vuitton/android/domain/usecase/account/order/GetOrderReturnReasonsUseCase;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->z2:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/OrderRepository;

    invoke-direct {v3, v4}, Lcom/vuitton/android/domain/usecase/account/order/GetOrderReturnReasonsUseCase;-><init>(Lcom/vuitton/android/domain/repository/OrderRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->F0()Lcom/vuitton/android/domain/usecase/account/order/GetExchangeVariationsUseCase;

    move-result-object v17

    new-instance v4, Lcom/vuitton/android/domain/usecase/account/order/ConfirmOrderReturnUseCase;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->z2:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/OrderRepository;

    invoke-direct {v4, v5}, Lcom/vuitton/android/domain/usecase/account/order/ConfirmOrderReturnUseCase;-><init>(Lcom/vuitton/android/domain/repository/OrderRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->O2()Lcom/vuitton/android/domain/usecase/account/order/SetupExchangeUseCase;

    move-result-object v19

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->T2()Lcom/vuitton/android/domain/usecase/account/order/SubmitExchangeUseCase;

    move-result-object v20

    new-instance v2, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->S2:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/CatalogRepository;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v0

    invoke-direct {v2, v5, v0}, Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;-><init>(Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v22

    move-object/from16 v21, v2

    move-object/from16 v16, v3

    move-object/from16 v18, v4

    invoke-direct/range {v6 .. v22}, Lcom/vuitton/android/presentation/screen/orders/viewmodels/OrderReturnOrExchangeViewModelImpl;-><init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/account/order/GetOrdersUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/account/order/GetOrderReturnReasonsUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetExchangeVariationsUseCase;Lcom/vuitton/android/domain/usecase/account/order/ConfirmOrderReturnUseCase;Lcom/vuitton/android/domain/usecase/account/order/SetupExchangeUseCase;Lcom/vuitton/android/domain/usecase/account/order/SubmitExchangeUseCase;Lcom/vuitton/android/domain/usecase/products/GetSizeGuideUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V

    return-object v6

    :pswitch_18
    new-instance v7, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v8

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v9

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v11

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v13

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v15

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/vuitton/android/presentation/push/NotificationsManager;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->A:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/vuitton/android/domain/repository/AutomatedTestRepository;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->e2()Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;

    move-result-object v18

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v19

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->C2()Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;

    move-result-object v20

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->X2()Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;

    move-result-object v21

    invoke-direct/range {v7 .. v21}, Lcom/vuitton/android/presentation/screen/options/OptionsViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/repository/AutomatedTestRepository;Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;)V

    return-object v7

    :pswitch_19
    new-instance v0, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuViewModelImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v0

    :pswitch_1a
    new-instance v3, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v5

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v6

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->T0()Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;

    move-result-object v7

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->l3()Lcom/vuitton/android/domain/usecase/sharedPreferences/UpdateShowArLocationBottomSheetUseCase;

    move-result-object v8

    new-instance v9, Lcom/vuitton/android/domain/usecase/permissions/SetNotificationsPermissionAskedUseCase;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D4:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/PermissionsRepository;

    invoke-direct {v9, v2}, Lcom/vuitton/android/domain/usecase/permissions/SetNotificationsPermissionAskedUseCase;-><init>(Lcom/vuitton/android/domain/repository/PermissionsRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v10

    new-instance v11, Lcom/vuitton/android/domain/usecase/onboarding/GetOnboardingStateUseCase;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-direct {v11, v2}, Lcom/vuitton/android/domain/usecase/onboarding/GetOnboardingStateUseCase;-><init>(Lcom/vuitton/android/domain/repository/UserPreferencesRepository;)V

    new-instance v12, Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-direct {v12, v0}, Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;-><init>(Lcom/vuitton/android/domain/repository/UserPreferencesRepository;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-direct/range {v3 .. v13}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;-><init>(Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;Lcom/vuitton/android/domain/usecase/sharedPreferences/UpdateShowArLocationBottomSheetUseCase;Lcom/vuitton/android/domain/usecase/permissions/SetNotificationsPermissionAskedUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/onboarding/GetOnboardingStateUseCase;Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V

    return-object v3

    :pswitch_1b
    new-instance v4, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->u0()Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;

    move-result-object v6

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v7

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E0:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v9

    new-instance v10, Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j1:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    invoke-direct {v10, v3}, Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;-><init>(Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->Y2()Lcom/vuitton/android/domain/usecase/pdp/backinstock/UnsubscribeBackInStockUseCase;

    move-result-object v11

    new-instance v12, Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;

    invoke-direct {v12, v0}, Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;-><init>(Lcom/vuitton/android/domain/repository/NotificationsPreferencesRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v13

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModelImpl;-><init>(Landroid/app/Application;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesTracker;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/account/notifications/GetNotificationsPreferencesUseCase;Lcom/vuitton/android/domain/usecase/pdp/backinstock/UnsubscribeBackInStockUseCase;Lcom/vuitton/android/domain/usecase/account/notifications/SaveNotificationsPreferencesUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V

    return-object v4

    :pswitch_1c
    new-instance v5, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v6

    invoke-static {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v7

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v8

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lkotlinx/serialization/json/Json;

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v11

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v13

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v14

    new-instance v15, Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;

    invoke-direct {v15}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;-><init>()V

    new-instance v16, Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;

    invoke-direct/range {v16 .. v16}, Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;-><init>()V

    new-instance v17, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;

    invoke-direct/range {v17 .. v17}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;-><init>()V

    new-instance v18, Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;

    invoke-direct/range {v18 .. v18}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;-><init>()V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M()Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    move-result-object v19

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M()Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    move-result-object v20

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M()Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    move-result-object v21

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M()Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    move-result-object v22

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M()Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    move-result-object v23

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M()Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    move-result-object v24

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M()Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    move-result-object v25

    new-instance v3, Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->h1:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/AccountRepository;

    invoke-direct {v3, v4}, Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;-><init>(Lcom/vuitton/android/domain/repository/AccountRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->n2()Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterInitiateUseCase;

    move-result-object v27

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->p2()Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterValidateUseCase;

    move-result-object v28

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v29

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->x2()Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;

    move-result-object v30

    new-instance v1, Lcom/vuitton/android/domain/usecase/forms/GetRegistrationFormUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->s()Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;

    move-result-object v4

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->V1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;

    invoke-direct {v1, v4, v0}, Lcom/vuitton/android/domain/usecase/forms/GetRegistrationFormUseCase;-><init>(Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->U()Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    move-result-object v32

    move-object/from16 v31, v1

    move-object/from16 v26, v3

    invoke-direct/range {v5 .. v32}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;-><init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterInitiateUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterValidateUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;Lcom/vuitton/android/domain/usecase/forms/GetRegistrationFormUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;)V

    return-object v5

    :pswitch_1d
    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v7

    invoke-static {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v8

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/vuitton/foundation/logger/Logger;

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v11

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->g2()Lcom/vuitton/android/domain/usecase/authentication/oauth/NativeLoginUseCase;

    move-result-object v12

    new-instance v13, Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;

    invoke-direct {v13}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;-><init>()V

    new-instance v14, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;

    invoke-direct {v14}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;-><init>()V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M()Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    move-result-object v15

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c0()Lcom/vuitton/android/domain/usecase/forms/GetAuthenticationFormUseCase;

    move-result-object v16

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v18

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v19

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->v2()Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;

    move-result-object v20

    iget-object v1, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/vuitton/android/presentation/push/NotificationsManager;

    new-instance v1, Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->h1:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/AccountRepository;

    invoke-direct {v1, v2}, Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;-><init>(Lcom/vuitton/android/domain/repository/AccountRepository;)V

    new-instance v2, Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-direct {v2, v3}, Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;-><init>(Lcom/vuitton/android/domain/repository/UserPreferencesRepository;)V

    new-instance v3, Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->l0:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/AppsFlyerRepository;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-direct {v3, v4, v0}, Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;-><init>(Lcom/vuitton/android/domain/repository/AppsFlyerRepository;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;)V

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v3

    invoke-direct/range {v6 .. v24}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/authentication/oauth/NativeLoginUseCase;Lcom/vuitton/android/presentation/screen/authentication/common/validation/EmailValidationRules;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/domain/usecase/forms/GetAuthenticationFormUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;)V

    return-object v6

    :pswitch_1e
    new-instance v7, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v8

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v11

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v13

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v14

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v15

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v16

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->l0()Lcom/vuitton/android/domain/usecase/cart/GetCartFullUseCase;

    move-result-object v17

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->w()Lcom/vuitton/android/domain/usecase/cart/ChooseSamplesUseCase;

    move-result-object v18

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->i()Lcom/vuitton/android/domain/usecase/cart/AddGiftMessageUseCase;

    move-result-object v19

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->q2()Lcom/vuitton/android/domain/usecase/cart/RemoveCartItemUseCase;

    move-result-object v20

    new-instance v3, Lcom/vuitton/android/domain/usecase/cart/GetCheckoutUrlUseCase;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->A1:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/CartRepository;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/vuitton/android/domain/usecase/cart/GetCheckoutUrlUseCase;-><init>(Lcom/vuitton/android/domain/repository/CartRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->k2()Lcom/vuitton/android/domain/usecase/cart/PutPrepareOrderUseCase;

    move-result-object v22

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->k3()Lcom/vuitton/android/domain/usecase/cart/UpdateShoppingBagUseCase;

    move-result-object v23

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v24

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->B2()Lcom/vuitton/android/domain/usecase/cart/ResetCartContainerUseCase;

    move-result-object v25

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->V1()Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    move-result-object v26

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->k0()Lcom/vuitton/android/domain/usecase/cart/GetCartContributionUseCase;

    move-result-object v27

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->o()Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    move-result-object v28

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v29

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->d3()Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase;

    move-result-object v30

    new-instance v1, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/DynamicYieldRepository;

    invoke-direct {v1, v0}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;-><init>(Lcom/vuitton/android/domain/repository/DynamicYieldRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->t2()Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

    move-result-object v32

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->Z0()Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialTextUseCase;

    move-result-object v33

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->w2()Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYRemoveFromCartEventUseCase;

    move-result-object v34

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->Y0()Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialModalTitleUseCase;

    move-result-object v35

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->X0()Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialModalContentUseCase;

    move-result-object v36

    move-object/from16 v31, v1

    move-object/from16 v21, v3

    invoke-direct/range {v7 .. v36}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/cart/GetCartFullUseCase;Lcom/vuitton/android/domain/usecase/cart/ChooseSamplesUseCase;Lcom/vuitton/android/domain/usecase/cart/AddGiftMessageUseCase;Lcom/vuitton/android/domain/usecase/cart/RemoveCartItemUseCase;Lcom/vuitton/android/domain/usecase/cart/GetCheckoutUrlUseCase;Lcom/vuitton/android/domain/usecase/cart/PutPrepareOrderUseCase;Lcom/vuitton/android/domain/usecase/cart/UpdateShoppingBagUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/cart/ResetCartContainerUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/cart/GetCartContributionUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/cart/UpdateCartItemQuantityUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialTextUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYRemoveFromCartEventUseCase;Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialModalTitleUseCase;Lcom/vuitton/android/domain/usecase/config/GetNativeCartCommercialModalContentUseCase;)V

    return-object v7

    :pswitch_1f
    new-instance v8, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v10

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v11

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v14

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v16

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v17

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v18

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v19

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->a1()Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;

    move-result-object v20

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    new-instance v3, Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->z2:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/OrderRepository;

    invoke-direct {v3, v4}, Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;-><init>(Lcom/vuitton/android/domain/repository/OrderRepository;)V

    new-instance v21, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->a1()Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;

    move-result-object v22

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b1()Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;

    move-result-object v23

    new-instance v4, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->W3:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/CareServicesBffRepository;

    invoke-direct {v4, v5}, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;-><init>(Lcom/vuitton/android/domain/repository/CareServicesBffRepository;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v25

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n4:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v26, v5

    check-cast v26, Lcom/vuitton/android/domain/repository/HotContentRepository;

    move-object/from16 v24, v4

    invoke-direct/range {v21 .. v26}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;-><init>(Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/repository/HotContentRepository;)V

    new-instance v4, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->W3:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/CareServicesBffRepository;

    invoke-direct {v4, v5}, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;-><init>(Lcom/vuitton/android/domain/repository/CareServicesBffRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->j0()Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;

    move-result-object v24

    new-instance v5, Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;

    iget-object v6, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d3:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/domain/repository/BookingRepository;

    invoke-direct {v5, v6}, Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;-><init>(Lcom/vuitton/android/domain/repository/BookingRepository;)V

    new-instance v6, Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;

    iget-object v7, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Z1:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/domain/repository/CertificateRepository;

    invoke-direct {v6, v7}, Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;-><init>(Lcom/vuitton/android/domain/repository/CertificateRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->G1()Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;

    move-result-object v27

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b1()Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;

    move-result-object v28

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->v()Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;

    move-result-object v29

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v30

    new-instance v7, Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;

    move-object/from16 p0, v3

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v3

    invoke-direct {v7, v3}, Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V

    new-instance v3, Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->h1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AccountRepository;

    invoke-direct {v3, v0}, Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;-><init>(Lcom/vuitton/android/domain/repository/AccountRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->a2()Lcom/vuitton/android/domain/usecase/account/profile/ListenProfileUseCase;

    move-result-object v33

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->F1()Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;

    move-result-object v34

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->z()Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;

    move-result-object v35

    move-object/from16 v32, v3

    move-object/from16 v23, v4

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v31, v7

    move-object/from16 v22, v21

    move-object/from16 v21, p0

    invoke-direct/range {v8 .. v35}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;Lcom/vuitton/android/domain/usecase/account/order/ClearOrdersCacheUseCase;Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;Lcom/vuitton/android/domain/usecase/account/profile/ListenProfileUseCase;Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;)V

    return-object v8

    :pswitch_20
    new-instance v9, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v10

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v11

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v14

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v15

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M()Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    move-result-object v17

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    new-instance v18, Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;

    invoke-direct/range {v18 .. v18}, Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;-><init>()V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->e2()Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;

    move-result-object v19

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v20

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->F()Lcom/vuitton/android/domain/usecase/account/profile/DeleteAccountUseCase;

    move-result-object v21

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->m1()Lcom/vuitton/android/domain/usecase/forms/GetProfileFormUseCase;

    move-result-object v22

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->h3()Lcom/vuitton/android/domain/usecase/account/profile/UpdatePasswordUseCase;

    move-result-object v23

    new-instance v3, Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->h1:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/AccountRepository;

    invoke-direct {v3, v4}, Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;-><init>(Lcom/vuitton/android/domain/repository/AccountRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->j3()Lcom/vuitton/android/domain/usecase/account/profile/UpdateProfileInfoUseCase;

    move-result-object v25

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v26

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->C2()Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;

    move-result-object v27

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->X2()Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;

    move-result-object v28

    new-instance v1, Lcom/vuitton/android/domain/usecase/forms/mapping/GetProfileCivilitiesMappingUseCase;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->h2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepository;

    invoke-direct {v1, v0}, Lcom/vuitton/android/domain/usecase/forms/mapping/GetProfileCivilitiesMappingUseCase;-><init>(Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepository;)V

    move-object/from16 v29, v1

    move-object/from16 v24, v3

    invoke-direct/range {v9 .. v29}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/profile/DeleteAccountUseCase;Lcom/vuitton/android/domain/usecase/forms/GetProfileFormUseCase;Lcom/vuitton/android/domain/usecase/account/profile/UpdatePasswordUseCase;Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;Lcom/vuitton/android/domain/usecase/account/profile/UpdateProfileInfoUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetProfileCivilitiesMappingUseCase;)V

    return-object v9

    :pswitch_21
    new-instance v0, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModelImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V

    return-object v0

    :pswitch_22
    new-instance v3, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v5

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->Z1()Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/ListenAppsFlyerDeeplinkUseCase;

    move-result-object v6

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v7, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v8

    iget-object v9, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v10

    iget-object v11, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->e2()Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;

    move-result-object v12

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->m0()Lcom/vuitton/android/domain/usecase/cart/GetCartSizeUseCase;

    move-result-object v13

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->g3()Lcom/vuitton/android/domain/usecase/applink/UpdateLocaleUseCase;

    move-result-object v14

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->Q2()Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;

    move-result-object v15

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v16

    new-instance v1, Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;

    move-object/from16 p0, v3

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->C2()Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;

    move-result-object v18

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->W1()Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

    move-result-object v19

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->Q1()Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;

    move-result-object v20

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->X2()Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;

    move-result-object v21

    new-instance v3, Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->H1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/AICompanionRepository;

    invoke-direct {v3, v1}, Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;-><init>(Lcom/vuitton/android/domain/repository/AICompanionRepository;)V

    new-instance v1, Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->H1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AICompanionRepository;

    invoke-direct {v1, v0}, Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;-><init>(Lcom/vuitton/android/domain/repository/AICompanionRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->A()Lcom/vuitton/android/domain/usecase/applink/ClearContributionLinkToLaunchUseCase;

    move-result-object v24

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->P2()Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;

    move-result-object v25

    move-object/from16 v23, v1

    move-object/from16 v22, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v25}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModelImpl;-><init>(Landroid/app/Application;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/ListenAppsFlyerDeeplinkUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;Lcom/vuitton/android/domain/usecase/cart/GetCartSizeUseCase;Lcom/vuitton/android/domain/usecase/applink/UpdateLocaleUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/StartAppsFlyerUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/GetECommerceStatusUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAITooltipVisibilityUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;Lcom/vuitton/android/domain/usecase/applink/ClearContributionLinkToLaunchUseCase;Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;)V

    return-object v3

    :pswitch_23
    new-instance v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl;

    invoke-static {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v1

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->T0()Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;

    move-result-object v3

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c2()Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoTracker;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoTracker;)V

    return-object v0

    :pswitch_24
    new-instance v4, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v6

    new-instance v7, Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->u()Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase;

    move-result-object v8

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->G2()Lcom/vuitton/android/domain/usecase/applink/SaveContributionLinkToLaunchUseCase;

    move-result-object v9

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->w0()Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkFromAppLinkUseCase;

    move-result-object v10

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->d0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    invoke-direct/range {v4 .. v12}, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase;Lcom/vuitton/android/domain/usecase/applink/SaveContributionLinkToLaunchUseCase;Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkFromAppLinkUseCase;Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;)V

    return-object v4

    :pswitch_25
    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/logger/Logger;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v1

    invoke-direct {v0, v3, v2, v1}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V

    return-object v0

    :pswitch_26
    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;

    iget-object v3, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c0:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v1

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->e0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;

    invoke-direct {v0, v3, v1, v2}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;-><init>(Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;)V

    return-object v0

    :pswitch_27
    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;

    iget-object v1, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/logger/Logger;

    iget-object v3, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c0:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    new-instance v4, Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V

    invoke-direct {v0, v1, v3, v4}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;)V

    return-object v0

    :pswitch_28
    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;

    iget-object v3, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c0:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v4

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v1

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->e0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;-><init>(Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;)V

    return-object v0

    :pswitch_29
    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/logger/Logger;

    iget-object v4, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c0:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v1

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->f0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;)V

    return-object v0

    :pswitch_2a
    new-instance v5, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v8

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v9

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v10

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->e0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;

    invoke-direct/range {v5 .. v11}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;)V

    return-object v5

    :pswitch_2b
    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;

    iget-object v1, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;-><init>(Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;)V

    return-object v0

    :pswitch_2c
    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v1

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->e()Lcom/vuitton/android/domain/usecase/dynamicyield/ActivateDynamicYieldUseCase;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;-><init>(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ActivateDynamicYieldUseCase;)V

    return-object v0

    :pswitch_2d
    new-instance v3, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->Y1()Lcom/vuitton/android/presentation/link/parsing/LinkParser;

    move-result-object v4

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v5

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->d0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->e0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->f0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->g0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->h0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->i0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->j0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->k0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct/range {v3 .. v15}, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;-><init>(Lcom/vuitton/android/presentation/link/parsing/LinkParser;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;Lcom/vuitton/foundation/logger/Logger;)V

    return-object v3

    :pswitch_2e
    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;-><init>()V

    return-object v0

    :pswitch_2f
    new-instance v0, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;

    iget-object v1, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    iget-object v3, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->l0:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->m0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;

    invoke-direct {v0, v1, v3, v2}, Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;-><init>(Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;)V

    return-object v0

    :pswitch_30
    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;

    new-instance v3, Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v4, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G2:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/LightUpRepository;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;-><init>(Lcom/vuitton/android/domain/repository/LightUpRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/scan/LightUpScanViewModel;-><init>(Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v0

    :pswitch_31
    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;

    new-instance v3, Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;

    iget-object v4, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v4, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G2:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/LightUpRepository;

    invoke-direct {v3, v4}, Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;-><init>(Lcom/vuitton/android/domain/repository/LightUpRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->f3()Lcom/vuitton/android/domain/usecase/connectivity/lightup/UpdateLightUpProductUseCase;

    move-result-object v2

    iget-object v4, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v1

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpDetailViewModel;-><init>(Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;Lcom/vuitton/android/domain/usecase/connectivity/lightup/UpdateLightUpProductUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v0

    :pswitch_32
    new-instance v0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextViewModelImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextViewModelImpl;-><init>(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V

    return-object v0

    :pswitch_33
    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailViewModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->P0()Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetKeepAllFaqUseCase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/keepall/KeepAllDetailViewModel;-><init>(Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetKeepAllFaqUseCase;)V

    return-object v0

    :pswitch_34
    move-object v15, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v4

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v7

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->A()Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;

    move-result-object v8

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->v1()Lcom/vuitton/android/domain/usecase/sharedPreferences/GetShowInboxLongPressTooltipUseCase;

    move-result-object v9

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->m3()Lcom/vuitton/android/domain/usecase/sharedPreferences/UpdateShowInboxLongPressTooltipUseCase;

    move-result-object v10

    invoke-direct/range {v2 .. v10}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModelImpl;-><init>(Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;Lcom/vuitton/android/domain/usecase/sharedPreferences/GetShowInboxLongPressTooltipUseCase;Lcom/vuitton/android/domain/usecase/sharedPreferences/UpdateShowInboxLongPressTooltipUseCase;)V

    return-object v2

    :pswitch_35
    move-object v15, v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;

    invoke-static {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v4

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v5

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v9

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v11

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v12

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->i2()Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

    move-result-object v13

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v14

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->k()Lcom/vuitton/android/domain/usecase/audioplayer/AddMediaItemUseCase;

    move-result-object v0

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->W0()Lcom/vuitton/android/domain/usecase/model3dasset/GetModel3dAssetUseCase;

    move-result-object v16

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v17

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->V1()Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    move-result-object v18

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->x1()Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

    move-result-object v19

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->o()Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    move-result-object v20

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->X()Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;

    move-result-object v21

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->Q0()Lcom/vuitton/android/domain/usecase/landingpage/GetLandingPageDetailsByIdUseCase;

    move-result-object v22

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K()Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    move-result-object v23

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->t2()Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

    move-result-object v24

    new-instance v1, Lcom/vuitton/android/domain/usecase/immersivearticle/GetImmersiveArticleDetailByKeyUseCase;

    iget-object v2, v15, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->A4:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/ImmersiveArticleRepository;

    invoke-direct {v1, v2}, Lcom/vuitton/android/domain/usecase/immersivearticle/GetImmersiveArticleDetailByKeyUseCase;-><init>(Lcom/vuitton/android/domain/repository/ImmersiveArticleRepository;)V

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->T0()Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;

    move-result-object v26

    move-object v15, v0

    move-object/from16 v25, v1

    invoke-direct/range {v3 .. v26}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/audioplayer/AddMediaItemUseCase;Lcom/vuitton/android/domain/usecase/model3dasset/GetModel3dAssetUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;Lcom/vuitton/android/domain/usecase/landingpage/GetLandingPageDetailsByIdUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/domain/usecase/immersivearticle/GetImmersiveArticleDetailByKeyUseCase;Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;)V

    return-object v3

    :pswitch_36
    new-instance v0, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerViewModelImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->z()Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerViewModelImpl;-><init>(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;)V

    return-object v0

    :pswitch_37
    new-instance v0, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerViewModel;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerViewModel;-><init>()V

    return-object v0

    :pswitch_38
    move-object v15, v2

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v2

    invoke-static {v2}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v2

    invoke-static {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/GiftMessageViewModelImpl;-><init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v0

    :pswitch_39
    move-object v15, v2

    new-instance v4, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;

    invoke-static {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v5

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->O()Lcom/vuitton/android/domain/usecase/authentication/oauth/ForgetPasswordInitiateUseCase;

    move-result-object v7

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->P()Lcom/vuitton/android/domain/usecase/authentication/oauth/ForgetPasswordValidateUseCase;

    move-result-object v8

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M()Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    move-result-object v9

    new-instance v10, Lcom/vuitton/android/domain/usecase/forms/GetRegistrationFormUseCase;

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->s()Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;

    move-result-object v0

    iget-object v2, v15, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->V1:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;

    invoke-direct {v10, v0, v2}, Lcom/vuitton/android/domain/usecase/forms/GetRegistrationFormUseCase;-><init>(Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v11

    new-instance v12, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;

    invoke-direct {v12}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;-><init>()V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v13

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/authentication/oauth/ForgetPasswordInitiateUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/ForgetPasswordValidateUseCase;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/domain/usecase/forms/GetRegistrationFormUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v4

    :pswitch_3a
    move-object v15, v2

    new-instance v0, Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateViewModelImpl;

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->y2()Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/forceupdate/ForceUpdateViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;)V

    return-object v0

    :pswitch_3b
    move-object v15, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v3

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v4

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->e1()Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByLocationUseCase;

    move-result-object v5

    iget-object v0, v15, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    new-instance v6, Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByPlaceIdUseCase;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->c2:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/PlaceRepository;

    invoke-direct {v6, v1}, Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByPlaceIdUseCase;-><init>(Lcom/vuitton/android/domain/repository/PlaceRepository;)V

    new-instance v7, Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->c2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/PlaceRepository;

    invoke-direct {v7, v0}, Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;-><init>(Lcom/vuitton/android/domain/repository/PlaceRepository;)V

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->i1()Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModelImpl;-><init>(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByLocationUseCase;Lcom/vuitton/android/domain/usecase/products/availability/GetPlaceGeocodingByPlaceIdUseCase;Lcom/vuitton/android/domain/usecase/travel/GetPlaceAutocompleteUseCase;Lcom/vuitton/android/domain/usecase/products/availability/GetProductAvailabilityInStoresUseCase;)V

    return-object v2

    :pswitch_3c
    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->o4:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayViewModelImpl;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v0

    :pswitch_3d
    move-object v15, v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v4

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v5

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->t()Lcom/vuitton/android/presentation/screen/feed/CalendarManager;

    move-result-object v10

    iget-object v0, v15, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v11

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v12

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v13

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v14

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->T0()Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;

    move-result-object v15

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K0()Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;

    move-result-object v16

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->Q()Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase;

    move-result-object v17

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->u2()Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYClickUseCase;

    move-result-object v18

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->J0()Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;

    move-result-object v19

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->a1()Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;

    move-result-object v20

    move-object/from16 p0, v3

    new-instance v3, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSlotClickUseCase;

    move-object/from16 v21, v4

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E2:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/DynamicYieldRepository;

    move-object/from16 v22, v5

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v3, v4, v5}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSlotClickUseCase;-><init>(Lcom/vuitton/android/domain/repository/DynamicYieldRepository;Lcom/vuitton/foundation/logger/Logger;)V

    new-instance v23, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->a1()Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;

    move-result-object v24

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b1()Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;

    move-result-object v25

    new-instance v4, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->W3:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/CareServicesBffRepository;

    invoke-direct {v4, v5}, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;-><init>(Lcom/vuitton/android/domain/repository/CareServicesBffRepository;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v27

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n4:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v28, v5

    check-cast v28, Lcom/vuitton/android/domain/repository/HotContentRepository;

    move-object/from16 v26, v4

    invoke-direct/range {v23 .. v28}, Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;-><init>(Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/repository/HotContentRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->N1()Lcom/vuitton/android/domain/usecase/hotcontent/HasCachedHotContentUseCase;

    move-result-object v4

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v24

    new-instance v1, Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->L1:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/ProductRepository;

    invoke-direct {v1, v5}, Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;-><init>(Lcom/vuitton/android/domain/repository/ProductRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->v()Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;

    move-result-object v26

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->U1()Lcom/vuitton/android/domain/usecase/dynamicyield/IsDynamicYieldActivatedUseCase;

    move-result-object v27

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->C0()Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;

    move-result-object v28

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->X()Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;

    move-result-object v29

    new-instance v5, Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->H1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AICompanionRepository;

    invoke-direct {v5, v0}, Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;-><init>(Lcom/vuitton/android/domain/repository/AICompanionRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->x0()Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkToLaunchUseCase;

    move-result-object v31

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b2()Lcom/vuitton/android/domain/usecase/products/ListenToLastViewedProductSkuListUseCase;

    move-result-object v32

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->u0()Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;

    move-result-object v33

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->s2()Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase;

    move-result-object v34

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c1()Lcom/vuitton/android/domain/usecase/account/order/GetOrdersHistoryWithMostExpensiveProductUseCase;

    move-result-object v35

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->n1()Lcom/vuitton/android/domain/usecase/products/GetRelatedProductsUseCase;

    move-result-object v36

    move-object/from16 v25, v1

    move-object/from16 v30, v5

    move-object/from16 v5, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v4

    move-object/from16 v4, v21

    move-object/from16 v21, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v36}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Landroid/app/Application;Lcom/vuitton/android/presentation/screen/feed/CalendarManager;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;Lcom/vuitton/android/domain/usecase/feed/GetFeedForYouUseCase;Lcom/vuitton/android/domain/usecase/audioguide/GetAccessDataUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYClickUseCase;Lcom/vuitton/android/domain/usecase/feed/GetFeedDiscoverUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOngoingOrdersUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSlotClickUseCase;Lcom/vuitton/android/domain/usecase/hotcontent/GetHotContentUseCase;Lcom/vuitton/android/domain/usecase/hotcontent/HasCachedHotContentUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/IsDynamicYieldActivatedUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/GetDYRecommendedProductsUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/HasAITooltipBeenDisplayedUseCase;Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkToLaunchUseCase;Lcom/vuitton/android/domain/usecase/products/ListenToLastViewedProductSkuListUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomisationTrackerUseCase;Lcom/vuitton/android/domain/usecase/products/RemoveSkuFromLastViewedProductListUseCase;Lcom/vuitton/android/domain/usecase/account/order/GetOrdersHistoryWithMostExpensiveProductUseCase;Lcom/vuitton/android/domain/usecase/products/GetRelatedProductsUseCase;)V

    return-object v3

    :pswitch_3e
    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v3

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->I0()Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v1

    invoke-direct {v0, v3, v2, v1}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v0

    :pswitch_3f
    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->H0()Lcom/vuitton/android/domain/usecase/connectivity/GetFaqCategoryListUseCase;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;-><init>(Lcom/vuitton/android/domain/usecase/connectivity/GetFaqCategoryListUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v0

    :pswitch_40
    new-instance v3, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->m2()Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;

    move-result-object v5

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->G1()Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;

    move-result-object v6

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v7

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/exclusivesales/ExclusiveSalesViewModelImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;Lcom/vuitton/android/domain/usecase/exclusivesales/GetUserExclusiveSalesUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V

    return-object v3

    :pswitch_41
    new-instance v4, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->Y()Lcom/vuitton/android/domain/usecase/avatar/GetAllAvatarsUseCase;

    move-result-object v6

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->F1()Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;

    move-result-object v7

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->I2()Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase;

    move-result-object v8

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v9

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModelImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/avatar/GetAllAvatarsUseCase;Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;Lcom/vuitton/android/domain/usecase/avatar/SaveUserAvatarUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v4

    :pswitch_42
    new-instance v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v7

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v11

    new-instance v12, Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;

    invoke-direct {v12}, Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;-><init>()V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v13

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->P:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/vuitton/android/domain/repository/LoginStateRepository;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v15

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v16

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v17

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->E()Lcom/vuitton/android/domain/usecase/careservices/CreateCareServiceUseCase;

    move-result-object v18

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c3()Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;

    move-result-object v19

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v20

    new-instance v0, Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;

    iget-object v3, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v4

    iget-object v3, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y3:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/AppointmentRepository;

    invoke-direct {v0, v4, v3}, Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/AppointmentRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->V0()Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;

    move-result-object v22

    new-instance v3, Lcom/vuitton/android/domain/usecase/account/GetLocaleCountryListUseCase;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f2:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/AddressRepository;

    invoke-direct {v3, v2}, Lcom/vuitton/android/domain/usecase/account/GetLocaleCountryListUseCase;-><init>(Lcom/vuitton/android/domain/repository/AddressRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v24

    move-object/from16 v21, v0

    move-object/from16 v23, v3

    invoke-direct/range {v5 .. v24}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;-><init>(Landroid/app/Application;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/careservices/CreateCareServiceUseCase;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/appointment/ConfirmAppointmentUseCase;Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;Lcom/vuitton/android/domain/usecase/account/GetLocaleCountryListUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V

    return-object v5

    :pswitch_43
    new-instance v6, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v8

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v12

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v13

    new-instance v14, Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;

    invoke-direct {v14}, Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;-><init>()V

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->P:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/vuitton/android/domain/repository/LoginStateRepository;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M()Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    move-result-object v16

    new-instance v17, Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;

    invoke-direct/range {v17 .. v17}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;-><init>()V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v18

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v19

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v20

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v21

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->V0()Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;

    move-result-object v22

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->i0()Lcom/vuitton/android/domain/usecase/forms/GetCareServiceFormUseCase;

    move-result-object v23

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->D()Lcom/vuitton/android/domain/usecase/careservices/CreateCareServiceBffUseCase;

    move-result-object v24

    new-instance v0, Lcom/vuitton/android/domain/usecase/account/GetLocaleCountryListUseCase;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f2:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/AddressRepository;

    invoke-direct {v0, v2}, Lcom/vuitton/android/domain/usecase/account/GetLocaleCountryListUseCase;-><init>(Lcom/vuitton/android/domain/repository/AddressRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v26

    move-object/from16 v25, v0

    invoke-direct/range {v6 .. v26}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;-><init>(Landroid/app/Application;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;Lcom/vuitton/android/domain/usecase/forms/GetCareServiceFormUseCase;Lcom/vuitton/android/domain/usecase/careservices/CreateCareServiceBffUseCase;Lcom/vuitton/android/domain/usecase/account/GetLocaleCountryListUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V

    return-object v6

    :pswitch_44
    new-instance v7, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v8

    invoke-static {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v9

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v10

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lkotlinx/serialization/json/Json;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v14

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v15

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v16

    new-instance v0, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;

    iget-object v3, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v4

    iget-object v3, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Z3:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/CareServicesRepository;

    invoke-direct {v0, v4, v3}, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/CareServicesRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c3()Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;

    move-result-object v18

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v19

    new-instance v3, Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f2:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/AddressRepository;

    invoke-direct {v3, v2}, Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;-><init>(Lcom/vuitton/android/domain/repository/AddressRepository;)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v22

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v23

    move-object/from16 v17, v0

    move-object/from16 v20, v3

    invoke-direct/range {v7 .. v23}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;-><init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V

    return-object v7

    :pswitch_45
    new-instance v8, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v9

    invoke-static {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v10

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v11

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/vuitton/foundation/logger/Logger;

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lkotlinx/serialization/json/Json;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v15

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v16

    new-instance v3, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->W3:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/CareServicesBffRepository;

    invoke-direct {v3, v4}, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;-><init>(Lcom/vuitton/android/domain/repository/CareServicesBffRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b3()Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAddressBffUseCase;

    move-result-object v18

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->B()Lcom/vuitton/android/domain/usecase/careservices/ConfirmCareServiceAddressBffUseCase;

    move-result-object v19

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->d()Lcom/vuitton/android/domain/usecase/careservices/AcceptCareServiceBffUseCase;

    move-result-object v20

    new-instance v2, Lcom/vuitton/android/domain/usecase/careservices/CancelCareServiceBffUseCase;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->W3:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/CareServicesBffRepository;

    invoke-direct {v2, v4}, Lcom/vuitton/android/domain/usecase/careservices/CancelCareServiceBffUseCase;-><init>(Lcom/vuitton/android/domain/repository/CareServicesBffRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v22

    new-instance v4, Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AddressRepository;

    invoke-direct {v4, v0}, Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;-><init>(Lcom/vuitton/android/domain/repository/AddressRepository;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v25

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v26

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v27

    move-object/from16 v21, v2

    move-object/from16 v17, v3

    move-object/from16 v23, v4

    invoke-direct/range {v8 .. v27}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModelImpl;-><init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAddressBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/ConfirmCareServiceAddressBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/AcceptCareServiceBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/CancelCareServiceBffUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V

    return-object v8

    :pswitch_46
    new-instance v0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->C()Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;

    move-result-object v1

    move-object v4, v1

    move-object v1, v3

    new-instance v3, Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;

    iget-object v5, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v5, v5, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F3:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/DispatchAreaListRepository;

    invoke-direct {v3, v5}, Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;-><init>(Lcom/vuitton/android/domain/repository/DispatchAreaListRepository;)V

    move-object v5, v4

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->l2()Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;

    move-result-object v4

    move-object v6, v5

    new-instance v5, Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;

    iget-object v7, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v7, v7, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->P3:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/domain/repository/SearchHistoryRepository;

    invoke-direct {v5, v7}, Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;-><init>(Lcom/vuitton/android/domain/repository/SearchHistoryRepository;)V

    move-object v7, v6

    new-instance v6, Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->R3:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/LastViewedProductRepository;

    invoke-direct {v6, v2}, Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;-><init>(Lcom/vuitton/android/domain/repository/LastViewedProductRepository;)V

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModelImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;Lcom/vuitton/android/domain/usecase/locale/ReactToInAppDispatchChangeUseCase;Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;Lcom/vuitton/android/domain/usecase/products/RemoveLastViewedProductListUseCase;)V

    return-object v0

    :pswitch_47
    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->S1()Lcom/vuitton/android/domain/usecase/connectivity/lightup/InsertLightUpProductUseCase;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/pairing/DeviceDetectedViewModel;-><init>(Lcom/vuitton/android/domain/usecase/connectivity/lightup/InsertLightUpProductUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v0

    :pswitch_48
    new-instance v0, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;

    new-instance v2, Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->e0:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/AppConfigRepository;

    invoke-direct {v2, v3}, Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;-><init>(Lcom/vuitton/android/domain/repository/AppConfigRepository;)V

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->C3:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/AppLinkRepository;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuitton/android/presentation/screen/deeplink/DeepLinkDispatcherViewModel;-><init>(Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;Lcom/vuitton/android/domain/repository/AppLinkRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V

    return-object v0

    :pswitch_49
    new-instance v4, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v7

    new-instance v8, Lcom/vuitton/android/domain/usecase/appointment/GetStoreAvailabilityListUseCase;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v3

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AppointmentRepository;

    invoke-direct {v8, v3, v0}, Lcom/vuitton/android/domain/usecase/appointment/GetStoreAvailabilityListUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/AppointmentRepository;)V

    new-instance v9, Lcom/vuitton/android/domain/usecase/appointment/GetStoreTimeSlotListUseCase;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v3

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AppointmentRepository;

    invoke-direct {v9, v3, v0}, Lcom/vuitton/android/domain/usecase/appointment/GetStoreTimeSlotListUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/AppointmentRepository;)V

    new-instance v10, Lcom/vuitton/android/domain/usecase/appointment/PrebookAppointmentUseCase;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AppointmentRepository;

    invoke-direct {v10, v0}, Lcom/vuitton/android/domain/usecase/appointment/PrebookAppointmentUseCase;-><init>(Lcom/vuitton/android/domain/repository/AppointmentRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v11

    invoke-direct/range {v4 .. v11}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/datepicker/DatePickerViewModelImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/appointment/GetStoreAvailabilityListUseCase;Lcom/vuitton/android/domain/usecase/appointment/GetStoreTimeSlotListUseCase;Lcom/vuitton/android/domain/usecase/appointment/PrebookAppointmentUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V

    return-object v4

    :pswitch_4a
    new-instance v5, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;

    new-instance v6, Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G2:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/LightUpRepository;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v0

    invoke-direct {v6, v3, v0}, Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;-><init>(Lcom/vuitton/android/domain/repository/LightUpRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V

    new-instance v7, Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/LightUpRepository;

    invoke-direct {v7, v0}, Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;-><init>(Lcom/vuitton/android/domain/repository/LightUpRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v8

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->t0()Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;

    move-result-object v9

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v10

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->h0()Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;

    move-result-object v11

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->h2()Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;

    move-result-object v12

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v13

    invoke-direct/range {v5 .. v13}, Lcom/vuitton/android/presentation/screen/connectivity/home/ConnectivityViewModel;-><init>(Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpObjectsUseCase;Lcom/vuitton/android/domain/usecase/connectivity/lightup/DeleteLightUpProductUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/PairWatchV2UseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v5

    :pswitch_4b
    new-instance v6, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->J1()Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchVideoUseCase;

    move-result-object v7

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->E0()Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneVideoUseCase;

    move-result-object v8

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->D0()Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneSkuListUseCase;

    move-result-object v9

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->S0()Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpVideoUseCase;

    move-result-object v10

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->C1()Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerVideoUseCase;

    move-result-object v11

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->B1()Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerSkuListUseCase;

    move-result-object v12

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M0()Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerSkuListUseCase;

    move-result-object v13

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->N0()Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerVideoUseCase;

    move-result-object v14

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->I1()Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3VideoUseCase;

    move-result-object v15

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->H1()Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3SkuListUseCase;

    move-result-object v16

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v17

    invoke-direct/range {v6 .. v17}, Lcom/vuitton/android/presentation/screen/connectivity/section/ConnectivitySectionDetailViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneSkuListUseCase;Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetLightUpVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerSkuListUseCase;Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerSkuListUseCase;Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerVideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3VideoUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3SkuListUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v6

    :pswitch_4c
    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiViewModelImpl;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiViewModelImpl;-><init>()V

    return-object v0

    :pswitch_4d
    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;

    invoke-static {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v3

    iget-object v4, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/logger/Logger;

    move-object v5, v3

    move-object v3, v4

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v4

    iget-object v6, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object v7, v5

    move-object v5, v6

    new-instance v6, Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;

    iget-object v8, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v8, v8, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Z1:Ldagger/internal/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/domain/repository/CertificateRepository;

    invoke-direct {v6, v8}, Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;-><init>(Lcom/vuitton/android/domain/repository/CertificateRepository;)V

    move-object v15, v2

    move-object v2, v7

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->o0()Lcom/vuitton/android/domain/usecase/certificate/GetCertificateDetailUrlUseCase;

    move-result-object v7

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v8

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v9

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v10

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v12

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/certificate/GetCertificateListUseCase;Lcom/vuitton/android/domain/usecase/certificate/GetCertificateDetailUrlUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;)V

    return-object v1

    :pswitch_4e
    move-object v15, v2

    new-instance v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v3

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lkotlinx/serialization/json/Json;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v6

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v8

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->U2()Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase;

    move-result-object v9

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v10

    invoke-direct/range {v2 .. v10}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;-><init>(Landroid/app/Application;Lcom/vuitton/foundation/logger/Logger;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V

    return-object v2

    :pswitch_4f
    move-object v15, v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v4

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->C1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->s1()Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSfidTokenOrNullUseCase;

    move-result-object v8

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->y1()Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSlasTokenOrNullUseCase;

    move-result-object v9

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->W2()Lcom/vuitton/android/domain/usecase/certificate/UnlockCertificateUseCase;

    move-result-object v10

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v12

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v13

    invoke-direct/range {v3 .. v13}, Lcom/vuitton/android/presentation/screen/certificates/nfc/CertificateNfcScanViewModelImpl;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSfidTokenOrNullUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSlasTokenOrNullUseCase;Lcom/vuitton/android/domain/usecase/certificate/UnlockCertificateUseCase;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V

    return-object v3

    :pswitch_50
    move-object v15, v2

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/CatalogViewModelImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/domain/usecase/catalog/GetCatalogUseCase;

    iget-object v3, v15, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->S2:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/CatalogRepository;

    invoke-direct {v2, v3}, Lcom/vuitton/android/domain/usecase/catalog/GetCatalogUseCase;-><init>(Lcom/vuitton/android/domain/repository/CatalogRepository;)V

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->X()Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/catalog/CatalogViewModelImpl;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/usecase/catalog/GetCatalogUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;)V

    return-object v0

    :pswitch_51
    move-object v15, v2

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingViewModelImpl;

    invoke-static {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v1

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->W1()Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

    move-result-object v2

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->L()Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/catalog/CatalogRoutingViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;)V

    return-object v0

    :pswitch_52
    move-object v15, v2

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl;

    invoke-static {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v1

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->o1()Lcom/vuitton/android/domain/usecase/careservices/GetRepairCancellationReasonUseCase;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/CancellationReasonsViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/careservices/GetRepairCancellationReasonUseCase;)V

    return-object v0

    :pswitch_53
    move-object v15, v2

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffViewModelImpl;

    invoke-static {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/vuitton/android/presentation/screen/repairs/cancellationreasons/bff/CancellationReasonsBffViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v0

    :pswitch_54
    move-object v15, v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;

    new-instance v4, Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;

    iget-object v0, v15, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->h1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AccountRepository;

    invoke-direct {v4, v0}, Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;-><init>(Lcom/vuitton/android/domain/repository/AccountRepository;)V

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->e0()Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase;

    move-result-object v5

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v6

    new-instance v7, Lcom/vuitton/android/domain/usecase/forms/mapping/GetProfileCivilitiesMappingUseCase;

    iget-object v0, v15, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->h2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepository;

    invoke-direct {v7, v0}, Lcom/vuitton/android/domain/usecase/forms/mapping/GetProfileCivilitiesMappingUseCase;-><init>(Lcom/vuitton/core/infrastructure/data/forms/repository/CivilityRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v8

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->d0()Lcom/vuitton/android/domain/usecase/booking/GetBookingMegatrioUseCase;

    move-result-object v9

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M()Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    move-result-object v10

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v13

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v14

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v15

    invoke-direct/range {v3 .. v15}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/account/GetAccountStatusUseCase;Lcom/vuitton/android/domain/usecase/forms/GetBookingPersonalInfoFormUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetProfileCivilitiesMappingUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/booking/GetBookingMegatrioUseCase;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V

    return-object v3

    :pswitch_55
    move-object v15, v2

    new-instance v4, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    new-instance v5, Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;

    iget-object v0, v15, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/BookingRepository;

    invoke-direct {v5, v0}, Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;-><init>(Lcom/vuitton/android/domain/repository/BookingRepository;)V

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->a3()Lcom/vuitton/android/domain/usecase/booking/UpdateBookingUseCase;

    move-result-object v6

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->H()Lcom/vuitton/android/domain/usecase/booking/DeleteBookingUseCase;

    move-result-object v7

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v8

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v10

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-static {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v12

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v13

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;Lcom/vuitton/android/domain/usecase/booking/UpdateBookingUseCase;Lcom/vuitton/android/domain/usecase/booking/DeleteBookingUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V

    return-object v4

    :pswitch_56
    move-object v15, v2

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->s0()Lcom/vuitton/android/domain/usecase/booking/GetConfirmedBookingsUseCase;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v3

    iget-object v4, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/booking/GetConfirmedBookingsUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V

    return-object v0

    :pswitch_57
    move-object v15, v2

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v6

    invoke-static {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v7

    iget-object v0, v15, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v8

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v9

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v10

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/vuitton/foundation/logger/Logger;

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v13

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/vuitton/android/core/events/LVEventSender;

    move-object v2, v15

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v15

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->r()Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;

    move-result-object v16

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v17

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->E1()Lcom/vuitton/android/domain/usecase/pdp/vto/GetTutorialUseCase;

    move-result-object v18

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->L1()Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;

    move-result-object v19

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->V1()Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    move-result-object v20

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->x1()Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

    move-result-object v21

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->D1()Lcom/vuitton/android/domain/usecase/pdp/vto/GetTryOnProductListUseCase;

    move-result-object v22

    new-instance v1, Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->V2:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/BackInStockRepository;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;-><init>(Lcom/vuitton/android/domain/repository/BackInStockRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V

    new-instance v3, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;

    new-instance v4, Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;

    move-object/from16 v23, v1

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b0()Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;-><init>(Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->A1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/CartRepository;

    invoke-direct {v3, v4, v1}, Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;-><init>(Lcom/vuitton/android/domain/usecase/authentication/oauth/GetSotTokenForTwistUserOrNullUseCase;Lcom/vuitton/android/domain/repository/CartRepository;)V

    new-instance v1, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E2:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/DynamicYieldRepository;

    invoke-direct {v1, v4}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;-><init>(Lcom/vuitton/android/domain/repository/DynamicYieldRepository;)V

    new-instance v4, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->S2:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/CatalogRepository;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v0

    move-object/from16 p0, v3

    invoke-virtual/range {v24 .. v24}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v3

    invoke-direct {v4, v1, v0, v3}, Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;-><init>(Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->N2()Lcom/vuitton/android/domain/usecase/pdp/vto/SetShadeFinderIntroDoneUseCase;

    move-result-object v27

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->P1()Lcom/vuitton/android/domain/usecase/pdp/vto/HasDoneShadeFinderIntroUseCase;

    move-result-object v28

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->m()Lcom/vuitton/android/domain/usecase/wishlist/AddProductListToWishlistUseCase;

    move-result-object v29

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->X()Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;

    move-result-object v30

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K()Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    move-result-object v31

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->u1()Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderRecommendationsUseCase;

    move-result-object v32

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->t1()Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderConsentTimeStampUseCase;

    move-result-object v33

    move-object/from16 v24, p0

    move-object/from16 v26, v4

    invoke-direct/range {v5 .. v33}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModelImpl;-><init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/pdp/vto/GetTutorialUseCase;Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/GetTryOnProductListUseCase;Lcom/vuitton/android/domain/usecase/pdp/backinstock/SubscribeBackInStockUseCase;Lcom/vuitton/android/domain/usecase/cart/AddProductListToCartUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToCartEventUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductAvailabilityUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/SetShadeFinderIntroDoneUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/HasDoneShadeFinderIntroUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductListToWishlistUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderRecommendationsUseCase;Lcom/vuitton/android/domain/usecase/pdp/vto/GetShadeFinderConsentTimeStampUseCase;)V

    return-object v5

    :pswitch_58
    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v7

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v8

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v9

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->r()Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticationAvailabilityUseCase;

    move-result-object v10

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v12

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/vuitton/android/core/events/LVEventSender;

    new-instance v14, Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper;

    invoke-direct {v14}, Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper;-><init>()V

    invoke-static {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v15

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v16

    new-instance v17, Lcom/vuitton/android/data/dto/profile/KisaConsentsParserImpl;

    invoke-direct/range {v17 .. v17}, Lcom/vuitton/android/data/dto/profile/KisaConsentsParserImpl;-><init>()V

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->d2()Lcom/vuitton/android/domain/usecase/authentication/oauth/LoginUseCase;

    move-result-object v19

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->e2()Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;

    move-result-object v20

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->o2()Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterUseCase;

    move-result-object v21

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v22

    new-instance v3, Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->h1:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/AccountRepository;

    invoke-direct {v3, v4}, Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;-><init>(Lcom/vuitton/android/domain/repository/AccountRepository;)V

    new-instance v4, Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p0:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-direct {v4, v5}, Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;-><init>(Lcom/vuitton/android/domain/repository/ConsentRepository;)V

    new-instance v5, Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;

    move-object/from16 v23, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Q1:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/WishlistRepository;

    invoke-direct {v5, v3}, Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;-><init>(Lcom/vuitton/android/domain/repository/WishlistRepository;)V

    new-instance v3, Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;

    move-object/from16 v24, v4

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-direct {v3, v4}, Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;-><init>(Lcom/vuitton/android/domain/repository/UserPreferencesRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->v2()Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;

    move-result-object v27

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->q()Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;

    move-result-object v28

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->x2()Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;

    move-result-object v29

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->C2()Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;

    move-result-object v30

    new-instance v4, Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;

    move-object/from16 v26, v3

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->l0:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/AppsFlyerRepository;

    move-object/from16 v25, v5

    iget-object v5, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-direct {v4, v3, v5}, Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;-><init>(Lcom/vuitton/android/domain/repository/AppsFlyerRepository;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v32

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->t0()Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;

    move-result-object v33

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->X2()Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;

    move-result-object v34

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->m2()Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;

    move-result-object v35

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->p()Lcom/vuitton/android/domain/usecase/authentication/AuthenticateAtgCodeExchangeUseCase;

    move-result-object v36

    new-instance v1, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Z0:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/ATGSessionRepository;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->N0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;

    invoke-direct {v1, v2, v0}, Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;-><init>(Lcom/vuitton/android/domain/repository/ATGSessionRepository;Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;)V

    move-object/from16 v37, v1

    move-object/from16 v31, v4

    invoke-direct/range {v6 .. v37}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;-><init>(Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticationAvailabilityUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/authentication/oauth/OauthCodeHelper;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/provider/consent/KisaConsentsParser;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/authentication/oauth/LoginUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/RegisterUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetContactIdUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;Lcom/vuitton/android/domain/usecase/account/UpdateContactIdUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateCodeExchangeUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ResetDynamicYieldIdUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/SetAppsFlyerCustomerIdUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/appsflyer/UnsetAppsFlyerCustomerIdUseCase;Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;Lcom/vuitton/android/domain/usecase/authentication/AuthenticateAtgCodeExchangeUseCase;Lcom/vuitton/android/domain/usecase/authentication/FinaliseSalesforceAuthenticationUseCase;)V

    return-object v6

    :pswitch_59
    new-instance v7, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;

    new-instance v8, Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaControllerCallbackUseCase;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->w()Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaControllerCallbackUseCase;-><init>(Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;)V

    new-instance v9, Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->w()Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;-><init>(Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;)V

    new-instance v10, Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->w()Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;-><init>(Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;)V

    new-instance v11, Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->w()Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;-><init>(Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;)V

    new-instance v12, Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->w()Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;-><init>(Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;)V

    new-instance v13, Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->w()Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;

    move-result-object v0

    invoke-direct {v13, v0}, Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;-><init>(Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;)V

    new-instance v14, Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->w()Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;

    move-result-object v0

    invoke-direct {v14, v0}, Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;-><init>(Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;)V

    invoke-direct/range {v7 .. v14}, Lcom/vuitton/android/presentation/screen/audioplayer/AudioPlayerViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaControllerCallbackUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;)V

    return-object v7

    :pswitch_5a
    new-instance v8, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v9

    invoke-static {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v10

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/vuitton/foundation/logger/Logger;

    iget-object v1, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->a0()Lcom/vuitton/android/domain/usecase/audioguide/GetAudioGuideUseCase;

    move-result-object v13

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->A1()Lcom/vuitton/android/domain/usecase/audioguide/GetTrackDetailUseCase;

    move-result-object v14

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->r0()Lcom/vuitton/android/domain/usecase/audioguide/GetCompletedTracksUseCase;

    move-result-object v15

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->F2()Lcom/vuitton/android/domain/usecase/audioguide/SaveCompletedTrackUseCase;

    move-result-object v16

    new-instance v1, Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->w()Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;-><init>(Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;)V

    new-instance v3, Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->w()Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;-><init>(Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;)V

    new-instance v4, Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->w()Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;-><init>(Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;)V

    new-instance v5, Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->w()Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;-><init>(Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;)V

    new-instance v6, Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->w()Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;-><init>(Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;)V

    new-instance v7, Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaControllerCallbackUseCase;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->w()Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaControllerCallbackUseCase;-><init>(Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->L2()Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaSpeedUseCase;

    move-result-object v23

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->S2()Lcom/vuitton/android/domain/usecase/audioplayer/StopMediaUseCase;

    move-result-object v24

    new-instance v0, Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;

    move-object/from16 p0, v1

    invoke-virtual/range {v17 .. v17}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->w()Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;-><init>(Lcom/vuitton/android/domain/service/audioplayer/AudioPlayerController;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->X()Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;

    move-result-object v26

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->D2()Lcom/vuitton/android/domain/usecase/audioguide/SaveAccessDataUseCase;

    move-result-object v27

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->x()Lcom/vuitton/android/domain/usecase/audioguide/ClearAccessDataUseCase;

    move-result-object v28

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->z()Lcom/vuitton/android/domain/usecase/audioguide/ClearCachedTracksUseCase;

    move-result-object v29

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M2()Lcom/vuitton/android/domain/usecase/audioplayer/SetPlaylistUseCase;

    move-result-object v30

    move-object/from16 v17, p0

    move-object/from16 v25, v0

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    invoke-direct/range {v8 .. v30}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/audioguide/GetAudioGuideUseCase;Lcom/vuitton/android/domain/usecase/audioguide/GetTrackDetailUseCase;Lcom/vuitton/android/domain/usecase/audioguide/GetCompletedTracksUseCase;Lcom/vuitton/android/domain/usecase/audioguide/SaveCompletedTrackUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/PlayMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/PauseMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/ResumeMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SeekToPositionUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/GetCurrentPositionUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaControllerCallbackUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SetMediaSpeedUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/StopMediaUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/DestroyMediaControllerUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;Lcom/vuitton/android/domain/usecase/audioguide/SaveAccessDataUseCase;Lcom/vuitton/android/domain/usecase/audioguide/ClearAccessDataUseCase;Lcom/vuitton/android/domain/usecase/audioguide/ClearCachedTracksUseCase;Lcom/vuitton/android/domain/usecase/audioplayer/SetPlaylistUseCase;)V

    return-object v8

    :pswitch_5b
    new-instance v0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/logger/Logger;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v3

    invoke-static {v3}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v3

    iget-object v1, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->U:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-direct {v0, v2, v3, v1}, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Landroid/app/Application;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V

    return-object v0

    :pswitch_5c
    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModelImpl;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->W()Lcom/vuitton/android/domain/usecase/travel/GetAirportListUseCase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/travel/GetAirportListUseCase;)V

    return-object v0

    :pswitch_5d
    new-instance v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    invoke-static {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v3

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M()Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    move-result-object v4

    iget-object v5, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/logger/Logger;

    iget-object v6, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v7

    new-instance v8, Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;

    invoke-direct {v8}, Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;-><init>()V

    new-instance v9, Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;

    invoke-direct {v9}, Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;-><init>()V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v10

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v11

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->U()Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    move-result-object v12

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->N()Lcom/vuitton/android/domain/usecase/account/address/EditAddressUseCase;

    move-result-object v13

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->f()Lcom/vuitton/android/domain/usecase/account/address/AddAddressUseCase;

    move-result-object v14

    new-instance v15, Lcom/vuitton/android/domain/usecase/account/address/DeleteAddressUseCase;

    move-object/from16 p0, v0

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AddressRepository;

    invoke-direct {v15, v0}, Lcom/vuitton/android/domain/usecase/account/address/DeleteAddressUseCase;-><init>(Lcom/vuitton/android/domain/repository/AddressRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->V0()Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;

    move-result-object v16

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->r1()Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase;

    move-result-object v17

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->f0()Lcom/vuitton/android/domain/usecase/account/address/GetCNCityListUseCase;

    move-result-object v18

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->g0()Lcom/vuitton/android/domain/usecase/account/address/GetCNCountyListUseCase;

    move-result-object v19

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->g1()Lcom/vuitton/android/domain/usecase/account/address/GetPostalCodeAutocompleteUseCase;

    move-result-object v20

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v21

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v21}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;Lcom/vuitton/android/domain/usecase/account/address/EditAddressUseCase;Lcom/vuitton/android/domain/usecase/account/address/AddAddressUseCase;Lcom/vuitton/android/domain/usecase/account/address/DeleteAddressUseCase;Lcom/vuitton/android/domain/usecase/forms/GetMainAddressFormUseCase;Lcom/vuitton/android/domain/usecase/forms/GetSecondaryAddressFormUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetCNCityListUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetCNCountyListUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetPostalCodeAutocompleteUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V

    return-object v2

    :pswitch_5e
    new-instance v3, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v6

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v7

    new-instance v8, Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AddressRepository;

    invoke-direct {v8, v0}, Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;-><init>(Lcom/vuitton/android/domain/repository/AddressRepository;)V

    new-instance v9, Lcom/vuitton/android/domain/usecase/account/address/DeleteAddressUseCase;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f2:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AddressRepository;

    invoke-direct {v9, v0}, Lcom/vuitton/android/domain/usecase/account/address/DeleteAddressUseCase;-><init>(Lcom/vuitton/android/domain/repository/AddressRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v10

    invoke-direct/range {v3 .. v10}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModelImpl;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetAddressListUseCase;Lcom/vuitton/android/domain/usecase/account/address/DeleteAddressUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;)V

    return-object v3

    :pswitch_5f
    new-instance v4, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v6

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->T()Lcom/vuitton/android/domain/usecase/account/address/GetAddressAutocompleteUseCase;

    move-result-object v7

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->V()Lcom/vuitton/android/domain/usecase/account/address/GetAddressDetailsUseCase;

    move-result-object v8

    new-instance v9, Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->e0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AppConfigRepository;

    invoke-direct {v9, v0}, Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;-><init>(Lcom/vuitton/android/domain/repository/AppConfigRepository;)V

    invoke-direct/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModelImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/account/address/GetAddressAutocompleteUseCase;Lcom/vuitton/android/domain/usecase/account/address/GetAddressDetailsUseCase;Lcom/vuitton/android/domain/usecase/config/CachedAppConfigOrNullUseCase;)V

    return-object v4

    :pswitch_60
    new-instance v5, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;

    invoke-static {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v6

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v8

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v11

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->h()Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase;

    move-result-object v12

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->g()Lcom/vuitton/android/domain/usecase/certificate/AddCertificateChinaConsentUseCase;

    move-result-object v13

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v14

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/AddCertificateViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/certificate/AddCertificateUseCase;Lcom/vuitton/android/domain/usecase/certificate/AddCertificateChinaConsentUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;)V

    return-object v5

    :pswitch_61
    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;

    invoke-static {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;)Landroidx/lifecycle/SavedStateHandle;

    move-result-object v7

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->S()Lcom/vuitton/android/domain/usecase/forms/GetAccountActivationFormUseCase;

    move-result-object v8

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M()Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    move-result-object v9

    new-instance v10, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;

    invoke-direct {v10}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;-><init>()V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v11

    new-instance v12, Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationInitiateUseCase;

    invoke-direct {v12}, Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationInitiateUseCase;-><init>()V

    new-instance v13, Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase;

    invoke-direct {v13}, Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase;-><init>()V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v14

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v15

    invoke-direct/range {v6 .. v15}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/forms/GetAccountActivationFormUseCase;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationInitiateUseCase;Lcom/vuitton/android/domain/usecase/accountactivation/AccountActivationValidateUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V

    return-object v6

    :pswitch_62
    new-instance v7, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;

    invoke-static {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideApplicationFactory;->a(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v9

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v10

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->R()Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityPreferencesUseCase;

    move-result-object v11

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->T1()Lcom/vuitton/android/domain/usecase/account/accessibility/IsAccessibilitySystemContrastEnabledUseCase;

    move-result-object v12

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->E2()Lcom/vuitton/android/domain/usecase/account/accessibility/SaveAccessibilityPreferencesUseCase;

    move-result-object v13

    invoke-direct/range {v7 .. v13}, Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModelImpl;-><init>(Landroid/app/Application;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityPreferencesUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/IsAccessibilitySystemContrastEnabledUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/SaveAccessibilityPreferencesUseCase;)V

    return-object v7

    :pswitch_63
    new-instance v8, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v9

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v12

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v13

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->j2()Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;

    move-result-object v14

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->p0()Lcom/vuitton/android/domain/usecase/aicompanion/GetChatHistoryListUseCase;

    move-result-object v15

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->q0()Lcom/vuitton/android/domain/usecase/aicompanion/GetChatSessionByIdUseCase;

    move-result-object v16

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v17

    new-instance v0, Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;

    iget-object v3, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->L1:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/ProductRepository;

    invoke-direct {v0, v3}, Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;-><init>(Lcom/vuitton/android/domain/repository/ProductRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->o()Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    move-result-object v19

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v20

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K()Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    move-result-object v21

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->I()Lcom/vuitton/android/domain/usecase/aicompanion/DeleteChatSessionFromHistoryUseCase;

    move-result-object v22

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M1()Lcom/vuitton/android/domain/usecase/aicompanion/HasAICompanionVideoBeenDisplayedUseCase;

    move-result-object v23

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->Z2()Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAICompanionVideoVisibilityUseCase;

    move-result-object v24

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K1()Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

    move-result-object v25

    move-object/from16 v18, v0

    invoke-direct/range {v8 .. v25}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/aicompanion/PostChatMessageUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/GetChatHistoryListUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/GetChatSessionByIdUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/DeleteChatSessionFromHistoryUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/HasAICompanionVideoBeenDisplayedUseCase;Lcom/vuitton/android/domain/usecase/aicompanion/UpdateAICompanionVideoVisibilityUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;)V

    return-object v8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 43

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->c:I

    div-int/lit8 v2, v1, 0x64

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->a:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :pswitch_0
    new-instance v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider$2;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider$2;-><init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;)V

    return-object v1

    :pswitch_1
    new-instance v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider$1;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider$1;-><init>(Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;)V

    return-object v1

    :pswitch_2
    new-instance v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;

    iget-object v1, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v1, v1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v1}, Ldagger/hilt/android/internal/Contexts;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v1

    iget-object v4, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/logger/Logger;

    iget-object v5, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v6, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v7

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v8

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K1()Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

    move-result-object v9

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K()Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    move-result-object v10

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->W1()Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

    move-result-object v11

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->L()Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

    move-result-object v12

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v13

    new-instance v14, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;

    iget-object v15, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    move-object/from16 p0, v0

    invoke-virtual {v15}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v0

    move-object/from16 v16, v1

    iget-object v1, v15, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->U:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iget-object v15, v15, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Q1:Ldagger/internal/Provider;

    invoke-interface {v15}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/android/domain/repository/WishlistRepository;

    invoke-direct {v14, v0, v1, v15}, Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/repository/WishlistRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->x1()Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

    move-result-object v15

    move-object v0, v3

    move-object/from16 v3, v16

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v16

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->p1()Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;

    move-result-object v17

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v18

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v19

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v20

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v20}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModelImpl;-><init>(Landroid/app/Application;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/wishlist/ShareWishlistContentUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;)V

    return-object v2

    :pswitch_3
    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailViewModelImpl;

    new-instance v1, Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->z2()Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    move-result-object v3

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->r3:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;

    invoke-direct {v1, v3, v2}, Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/TrunkSpeakerRepository;)V

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/connectivity/trunkspeaker/GetTrunkSpeakerFaqUseCase;)V

    return-object v0

    :pswitch_4
    move-object v0, v3

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;

    iget-object v3, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->a:Landroidx/lifecycle/SavedStateHandle;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->T0()Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v4

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-direct {v1, v3, v2, v4, v0}, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V

    return-object v1

    :pswitch_5
    move-object v0, v3

    new-instance v5, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v6

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v7

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v8

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->m2()Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;

    move-result-object v9

    iget-object v1, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    new-instance v10, Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p0:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-direct {v10, v3}, Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;-><init>(Lcom/vuitton/android/domain/repository/ConsentRepository;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v11

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v12

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->h0()Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;

    move-result-object v13

    new-instance v14, Lcom/vuitton/android/domain/usecase/account/GetCachedAccessTokenUseCase;

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-direct {v14, v2}, Lcom/vuitton/android/domain/usecase/account/GetCachedAccessTokenUseCase;-><init>(Lcom/vuitton/android/domain/repository/UserPreferencesRepository;)V

    new-instance v15, Lcom/vuitton/android/domain/usecase/cart/GetCheckoutUrlUseCase;

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->A1:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/CartRepository;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v3

    invoke-direct {v15, v2, v3}, Lcom/vuitton/android/domain/usecase/cart/GetCheckoutUrlUseCase;-><init>(Lcom/vuitton/android/domain/repository/CartRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V

    new-instance v2, Lcom/vuitton/android/domain/usecase/analytics/GetDeviceIdUseCase;

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->I5:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/DeviceIdRepository;

    invoke-direct {v2, v3}, Lcom/vuitton/android/domain/usecase/analytics/GetDeviceIdUseCase;-><init>(Lcom/vuitton/android/domain/repository/DeviceIdRepository;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v17

    new-instance v18, Lcom/vuitton/android/domain/usecase/authentication/oauth/RefreshAuthFromCheckoutUseCase;

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->L0:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->U:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v21

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v22

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Lcom/vuitton/android/core/events/LVEventSender;

    iget-object v1, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct/range {v18 .. v24}, Lcom/vuitton/android/domain/usecase/authentication/oauth/RefreshAuthFromCheckoutUseCase;-><init>(Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/foundation/logger/Logger;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/vuitton/android/core/events/LVEventSender;

    move-object/from16 v16, v2

    invoke-direct/range {v5 .. v19}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewModel;-><init>(Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/account/RefreshFacadeUserSessionUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentListUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;Lcom/vuitton/android/domain/usecase/account/GetCachedAccessTokenUseCase;Lcom/vuitton/android/domain/usecase/cart/GetCheckoutUrlUseCase;Lcom/vuitton/android/domain/usecase/analytics/GetDeviceIdUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/RefreshAuthFromCheckoutUseCase;Lcom/vuitton/android/core/events/LVEventSender;)V

    return-object v5

    :pswitch_6
    move-object v0, v3

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationViewModelImpl;

    new-instance v3, Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationWithVersionUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->z2()Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    move-result-object v4

    iget-object v5, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v6, v5, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->M2:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/domain/repository/WatchRepository;

    invoke-direct {v3, v4, v6}, Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationWithVersionUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/WatchRepository;)V

    new-instance v4, Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationForUserUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->z2()Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    move-result-object v2

    iget-object v6, v5, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->M2:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/domain/repository/WatchRepository;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v5

    invoke-direct {v4, v2, v6, v5}, Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationForUserUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/WatchRepository;Lcom/vuitton/android/domain/service/authentication/UserSessionService;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v0

    invoke-direct {v1, v3, v4, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationWithVersionUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationForUserUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v1

    :pswitch_7
    move-object v0, v3

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesViewModelImpl;

    new-instance v3, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchTutorialCategoryListUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->z2()Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    move-result-object v4

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->M2:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/WatchRepository;

    invoke-direct {v3, v4, v2}, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchTutorialCategoryListUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/WatchRepository;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchTutorialCategoryListUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v1

    :pswitch_8
    move-object v0, v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;

    new-instance v5, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/UnpairWatchV2UseCase;

    iget-object v1, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->M2:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/WatchRepository;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v1

    invoke-direct {v5, v3, v1}, Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/UnpairWatchV2UseCase;-><init>(Lcom/vuitton/android/domain/repository/WatchRepository;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V

    new-instance v6, Lcom/vuitton/android/domain/usecase/connectivity/watch/RenameWatchUseCase;

    iget-object v1, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->M2:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/WatchRepository;

    invoke-direct {v6, v1}, Lcom/vuitton/android/domain/usecase/connectivity/watch/RenameWatchUseCase;-><init>(Lcom/vuitton/android/domain/repository/WatchRepository;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v7

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->h0()Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;

    move-result-object v8

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;-><init>(Lcom/vuitton/android/domain/usecase/connectivity/watch/pairing/UnpairWatchV2UseCase;Lcom/vuitton/android/domain/usecase/connectivity/watch/RenameWatchUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v4

    :pswitch_9
    move-object v0, v3

    new-instance v5, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;

    new-instance v6, Lcom/vuitton/android/domain/usecase/travel/GetTravelListUseCase;

    iget-object v1, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G5:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/TravelRepository;

    invoke-direct {v6, v1}, Lcom/vuitton/android/domain/usecase/travel/GetTravelListUseCase;-><init>(Lcom/vuitton/android/domain/repository/TravelRepository;)V

    new-instance v7, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase;

    iget-object v1, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->M2:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/WatchRepository;

    invoke-direct {v7, v1}, Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase;-><init>(Lcom/vuitton/android/domain/repository/WatchRepository;)V

    new-instance v8, Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationWithVersionUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->z2()Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    move-result-object v1

    iget-object v2, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->M2:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/WatchRepository;

    invoke-direct {v8, v1, v2}, Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationWithVersionUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/WatchRepository;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v9

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/connectivity/watch/detail/WatchDetailsViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/travel/GetTravelListUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase;Lcom/vuitton/android/domain/usecase/connectivity/watch/watchface/GetWatchfacePresentationWithVersionUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v5

    :pswitch_a
    move-object v0, v3

    new-instance v1, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->a:Landroidx/lifecycle/SavedStateHandle;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v3

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v1, v2, v3, v0}, Lcom/vuitton/android/presentation/screen/video/VideoViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/foundation/logger/Logger;)V

    return-object v1

    :pswitch_b
    move-object v0, v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/vuitton/foundation/logger/Logger;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v7

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v8

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v9

    new-instance v10, Lcom/vuitton/android/domain/usecase/account/GetUserWorldwideIdUseCase;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->h1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AccountRepository;

    invoke-direct {v10, v0}, Lcom/vuitton/android/domain/usecase/account/GetUserWorldwideIdUseCase;-><init>(Lcom/vuitton/android/domain/repository/AccountRepository;)V

    new-instance v11, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeAffiliationUseCase;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->l3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/StoreModeRepository;

    invoke-direct {v11, v0}, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeAffiliationUseCase;-><init>(Lcom/vuitton/android/domain/repository/StoreModeRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->p1()Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;

    move-result-object v12

    invoke-direct/range {v4 .. v12}, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModelImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/GetUserWorldwideIdUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeAffiliationUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;)V

    return-object v4

    :pswitch_c
    move-object v0, v3

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;

    new-instance v3, Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->z2()Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    move-result-object v4

    iget-object v5, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v6, v5, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v3:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/domain/repository/WatchV3Repository;

    invoke-direct {v3, v4, v6}, Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/WatchV3Repository;)V

    new-instance v4, Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneTutorialUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->z2()Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    move-result-object v6

    iget-object v7, v5, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p3:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/domain/repository/EarphoneRepository;

    invoke-direct {v4, v6, v7}, Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneTutorialUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/EarphoneRepository;)V

    new-instance v6, Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerTutorialUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->z2()Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    move-result-object v2

    iget-object v5, v5, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->t3:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;

    invoke-direct {v6, v2, v5}, Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerTutorialUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/HorizonSpeakerRepository;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v0

    invoke-direct {v1, v3, v4, v6, v0}, Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/connectivity/watchv3/GetWatchV3TutorialUseCase;Lcom/vuitton/android/domain/usecase/connectivity/earphone/GetEarphoneTutorialUseCase;Lcom/vuitton/android/domain/usecase/connectivity/horizon/GetHorizonSpeakerTutorialUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v1

    :pswitch_d
    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListViewModelImpl;

    new-instance v1, Lcom/vuitton/android/domain/usecase/travel/GetTravelListUseCase;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G5:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/TravelRepository;

    invoke-direct {v1, v2}, Lcom/vuitton/android/domain/usecase/travel/GetTravelListUseCase;-><init>(Lcom/vuitton/android/domain/repository/TravelRepository;)V

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/list/TravelListViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/travel/GetTravelListUseCase;)V

    return-object v0

    :pswitch_e
    move-object v0, v3

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;

    new-instance v3, Lcom/vuitton/android/domain/usecase/travel/CreateTravelUseCase;

    iget-object v4, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v4, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G5:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/TravelRepository;

    invoke-direct {v3, v4}, Lcom/vuitton/android/domain/usecase/travel/CreateTravelUseCase;-><init>(Lcom/vuitton/android/domain/repository/TravelRepository;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v4

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->h0()Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v0

    invoke-direct {v1, v3, v4, v2, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelFormViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/travel/CreateTravelUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/account/GetCachedUserIdUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v1

    :pswitch_f
    move-object v0, v3

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl;

    new-instance v3, Lcom/vuitton/android/domain/usecase/travel/DeleteTravelUseCase;

    iget-object v4, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v4, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G5:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/TravelRepository;

    invoke-direct {v3, v4}, Lcom/vuitton/android/domain/usecase/travel/DeleteTravelUseCase;-><init>(Lcom/vuitton/android/domain/repository/TravelRepository;)V

    new-instance v4, Lcom/vuitton/android/domain/usecase/travel/EditTravelUseCase;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G5:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/TravelRepository;

    invoke-direct {v4, v2}, Lcom/vuitton/android/domain/usecase/travel/EditTravelUseCase;-><init>(Lcom/vuitton/android/domain/repository/TravelRepository;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v0

    invoke-direct {v1, v3, v4, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/travel/DeleteTravelUseCase;Lcom/vuitton/android/domain/usecase/travel/EditTravelUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v1

    :pswitch_10
    move-object v0, v3

    new-instance v5, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v7

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v8

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->F1()Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;

    move-result-object v9

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/vuitton/android/presentation/push/NotificationsManager;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/vuitton/android/presentation/screen/mylv/TopBarAvatarViewModelImpl;-><init>(Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/avatar/GetUserAvatarUseCase;Lcom/vuitton/android/presentation/push/NotificationsManager;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;)V

    return-object v5

    :pswitch_11
    move-object v0, v3

    new-instance v6, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K1()Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

    move-result-object v7

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->o()Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;

    move-result-object v9

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K()Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;

    move-result-object v10

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v11

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->t2()Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;

    move-result-object v12

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v14

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v15

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v17

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->V1()Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;

    move-result-object v18

    new-instance v0, Lcom/vuitton/android/domain/usecase/catalog/GetThematicPlpThemesUseCase;

    iget-object v1, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v1, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->S2:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/CatalogRepository;

    invoke-direct {v0, v1}, Lcom/vuitton/android/domain/usecase/catalog/GetThematicPlpThemesUseCase;-><init>(Lcom/vuitton/android/domain/repository/CatalogRepository;)V

    move-object/from16 v19, v0

    invoke-direct/range {v6 .. v19}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/wishlist/AddProductToWishlistUseCase;Lcom/vuitton/android/domain/usecase/wishlist/DeleteProductFromWishlistUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYAddToWishlistEventUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lcom/vuitton/android/domain/usecase/catalog/GetThematicPlpThemesUseCase;)V

    return-object v6

    :pswitch_12
    move-object v0, v3

    new-instance v1, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModelImpl;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v3, v3, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v3}, Ldagger/hilt/android/internal/Contexts;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v3

    iget-object v4, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->a:Landroidx/lifecycle/SavedStateHandle;

    move-object v5, v0

    move-object v0, v1

    move-object v1, v3

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->i2()Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;

    move-result-object v3

    move-object v6, v4

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v4

    new-instance v5, Lcom/vuitton/android/domain/usecase/immersivearticle/GetImmersiveArticleDetailByKeyUseCase;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->A4:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/ImmersiveArticleRepository;

    invoke-direct {v5, v2}, Lcom/vuitton/android/domain/usecase/immersivearticle/GetImmersiveArticleDetailByKeyUseCase;-><init>(Lcom/vuitton/android/domain/repository/ImmersiveArticleRepository;)V

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModelImpl;-><init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/link/builder/PassAppLinkBuilder;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/immersivearticle/GetImmersiveArticleDetailByKeyUseCase;)V

    return-object v0

    :pswitch_13
    move-object v5, v3

    new-instance v1, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->a:Landroidx/lifecycle/SavedStateHandle;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, v5, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B1:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/chat/ChatCoordinator;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v4

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v6

    move-object v7, v6

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v6

    iget-object v8, v5, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->P:Ldagger/internal/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/domain/repository/LoginStateRepository;

    move-object v9, v7

    move-object v7, v8

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v8

    move-object v10, v9

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v9

    move-object v11, v10

    new-instance v10, Lcom/vuitton/android/domain/usecase/cart/SendCheckoutFeedbackUseCase;

    iget-object v12, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->A1:Ldagger/internal/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/domain/repository/CartRepository;

    invoke-direct {v10, v12}, Lcom/vuitton/android/domain/usecase/cart/SendCheckoutFeedbackUseCase;-><init>(Lcom/vuitton/android/domain/repository/CartRepository;)V

    move-object v12, v11

    new-instance v11, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E2:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/DynamicYieldRepository;

    invoke-direct {v11, v2}, Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;-><init>(Lcom/vuitton/android/domain/repository/DynamicYieldRepository;)V

    move-object v2, v12

    new-instance v12, Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;

    iget-object v13, v5, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->A1:Ldagger/internal/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/domain/repository/CartRepository;

    invoke-direct {v12, v13}, Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;-><init>(Lcom/vuitton/android/domain/repository/CartRepository;)V

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v13

    move-object v5, v2

    move-object v2, v0

    invoke-direct/range {v1 .. v13}, Lcom/vuitton/android/presentation/screen/thankyou/ThankYouViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/chat/ChatCoordinator;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/cart/SendCheckoutFeedbackUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYPurchaseEventUseCase;Lcom/vuitton/android/domain/usecase/cart/GetConfirmationDetailsUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V

    return-object v1

    :pswitch_14
    move-object v5, v3

    new-instance v0, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v3

    iget-object v1, v5, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object v1, v5

    new-instance v5, Lcom/vuitton/android/domain/usecase/story/GetStoryUseCase;

    iget-object v6, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v6, v6, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E5:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/domain/repository/StoryRepository;

    invoke-direct {v5, v6}, Lcom/vuitton/android/domain/usecase/story/GetStoryUseCase;-><init>(Lcom/vuitton/android/domain/repository/StoryRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->X()Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;

    move-result-object v6

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v7

    iget-object v8, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->a:Landroidx/lifecycle/SavedStateHandle;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/story/StoryViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/story/GetStoryUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Landroidx/lifecycle/SavedStateHandle;)V

    return-object v2

    :pswitch_15
    move-object v1, v3

    new-instance v3, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;

    iget-object v4, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->a:Landroidx/lifecycle/SavedStateHandle;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v5, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v6

    iget-object v7, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->p1()Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;

    move-result-object v8

    new-instance v9, Lcom/vuitton/android/domain/usecase/catalog/GetCatalogStoreModeUseCase;

    iget-object v10, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->S2:Ldagger/internal/Provider;

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/domain/repository/CatalogRepository;

    invoke-direct {v9, v10}, Lcom/vuitton/android/domain/usecase/catalog/GetCatalogStoreModeUseCase;-><init>(Lcom/vuitton/android/domain/repository/CatalogRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v10

    new-instance v11, Lcom/vuitton/android/domain/usecase/storemode/EnableStoreModeUseCase;

    iget-object v12, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->l3:Ldagger/internal/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/domain/repository/StoreModeRepository;

    invoke-direct {v11, v12}, Lcom/vuitton/android/domain/usecase/storemode/EnableStoreModeUseCase;-><init>(Lcom/vuitton/android/domain/repository/StoreModeRepository;)V

    new-instance v12, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;

    iget-object v13, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->l3:Ldagger/internal/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/domain/repository/StoreModeRepository;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;-><init>(Lcom/vuitton/android/domain/repository/StoreModeRepository;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->L()Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;

    move-result-object v13

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v14

    new-instance v15, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeValidityUseCase;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->l3:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/StoreModeRepository;

    invoke-direct {v15, v1}, Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeValidityUseCase;-><init>(Lcom/vuitton/android/domain/repository/StoreModeRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->K1()Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;

    move-result-object v16

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->W1()Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;

    move-result-object v17

    new-instance v1, Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Q1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/WishlistRepository;

    invoke-direct {v1, v0}, Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase;-><init>(Lcom/vuitton/android/domain/repository/WishlistRepository;)V

    move-object/from16 v18, v1

    invoke-direct/range {v3 .. v18}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/domain/usecase/storemode/GetRmsCodeUseCase;Lcom/vuitton/android/domain/usecase/catalog/GetCatalogStoreModeUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/storemode/EnableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;Lcom/vuitton/android/domain/usecase/storemode/DisableStoreModeUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeValidityUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetWishlistUseCase;Lcom/vuitton/android/domain/usecase/storemode/IsStoreModeStillValidUseCase;Lcom/vuitton/android/domain/usecase/wishlist/GetLocalWishlistSummaryUseCase;)V

    return-object v3

    :pswitch_16
    move-object v1, v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v0, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v0}, Ldagger/hilt/android/internal/Contexts;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v5

    iget-object v6, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->a:Landroidx/lifecycle/SavedStateHandle;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v7

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->q5:Ldagger/internal/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v8

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/vuitton/foundation/logger/Logger;

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v11

    new-instance v12, Lcom/vuitton/android/domain/usecase/spotlight/PreCacheUseCase;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B5:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/SpotlightRepository;

    invoke-direct {v12, v2}, Lcom/vuitton/android/domain/usecase/spotlight/PreCacheUseCase;-><init>(Lcom/vuitton/android/domain/repository/SpotlightRepository;)V

    new-instance v13, Lcom/vuitton/android/domain/usecase/spotlight/ListenPreCacheUseCase;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B5:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/SpotlightRepository;

    invoke-direct {v13, v2}, Lcom/vuitton/android/domain/usecase/spotlight/ListenPreCacheUseCase;-><init>(Lcom/vuitton/android/domain/repository/SpotlightRepository;)V

    new-instance v14, Lcom/vuitton/android/domain/usecase/spotlight/CancelCacheUseCase;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B5:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/SpotlightRepository;

    invoke-direct {v14, v2}, Lcom/vuitton/android/domain/usecase/spotlight/CancelCacheUseCase;-><init>(Lcom/vuitton/android/domain/repository/SpotlightRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v15

    new-instance v1, Lcom/vuitton/android/domain/usecase/spotlight/GetSpotlightUseCase;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B5:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/SpotlightRepository;

    invoke-direct {v1, v2}, Lcom/vuitton/android/domain/usecase/spotlight/GetSpotlightUseCase;-><init>(Lcom/vuitton/android/domain/repository/SpotlightRepository;)V

    new-instance v2, Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->L1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/ProductRepository;

    invoke-direct {v2, v0}, Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;-><init>(Lcom/vuitton/android/domain/repository/ProductRepository;)V

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-direct/range {v4 .. v17}, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;-><init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Ldagger/Lazy;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/spotlight/PreCacheUseCase;Lcom/vuitton/android/domain/usecase/spotlight/ListenPreCacheUseCase;Lcom/vuitton/android/domain/usecase/spotlight/CancelCacheUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/spotlight/GetSpotlightUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductShortListUseCase;)V

    return-object v4

    :pswitch_17
    move-object v1, v3

    new-instance v5, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v0, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v0}, Ldagger/hilt/android/internal/Contexts;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v7

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    new-instance v9, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;

    new-instance v10, Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/DispatchAreaListRepository;

    invoke-direct {v10, v0}, Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;-><init>(Lcom/vuitton/android/domain/repository/DispatchAreaListRepository;)V

    new-instance v11, Lcom/vuitton/android/domain/usecase/dispatch/FindDispatchForPhoneUseCase;

    iget-object v0, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d5:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/PhoneLocaleRepository;

    invoke-direct {v11, v0}, Lcom/vuitton/android/domain/usecase/dispatch/FindDispatchForPhoneUseCase;-><init>(Lcom/vuitton/android/domain/repository/PhoneLocaleRepository;)V

    new-instance v12, Lcom/vuitton/android/domain/usecase/dispatch/FindUserInAppDispatchUseCase;

    iget-object v0, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->X:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-direct {v12, v0}, Lcom/vuitton/android/domain/usecase/dispatch/FindUserInAppDispatchUseCase;-><init>(Lcom/vuitton/android/domain/repository/InAppDispatchRepository;)V

    new-instance v13, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;

    iget-object v0, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->X:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    iget-object v4, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->J3:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/service/localization/LanguageManager;

    invoke-direct {v13, v0, v4}, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;-><init>(Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lcom/vuitton/android/domain/service/localization/LanguageManager;)V

    new-instance v14, Lcom/vuitton/android/domain/usecase/dispatch/ClearUserInAppDispatchUseCase;

    iget-object v0, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->X:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-direct {v14, v0}, Lcom/vuitton/android/domain/usecase/dispatch/ClearUserInAppDispatchUseCase;-><init>(Lcom/vuitton/android/domain/repository/InAppDispatchRepository;)V

    invoke-direct/range {v9 .. v14}, Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/GetDispatchAreaListUseCase;Lcom/vuitton/android/domain/usecase/dispatch/FindDispatchForPhoneUseCase;Lcom/vuitton/android/domain/usecase/dispatch/FindUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/dispatch/ClearUserInAppDispatchUseCase;)V

    new-instance v10, Lcom/vuitton/android/domain/usecase/config/GetConfigsVersionUseCase;

    iget-object v0, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->H3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/ConfigsVersionRepository;

    invoke-direct {v10, v0}, Lcom/vuitton/android/domain/usecase/config/GetConfigsVersionUseCase;-><init>(Lcom/vuitton/android/domain/repository/ConfigsVersionRepository;)V

    new-instance v11, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;

    new-instance v0, Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase;

    iget-object v4, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->A:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/AutomatedTestRepository;

    invoke-direct {v0, v4}, Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase;-><init>(Lcom/vuitton/android/domain/repository/AutomatedTestRepository;)V

    new-instance v4, Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->A2()Lcom/vuitton/android/domain/usecase/app/ResetAppDataUseCase;

    move-result-object v12

    iget-object v13, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K:Ldagger/internal/Provider;

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-direct {v4, v12, v13}, Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;-><init>(Lcom/vuitton/android/domain/usecase/app/ResetAppDataUseCase;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;)V

    iget-object v12, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->X:Ldagger/internal/Provider;

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-direct {v11, v0, v4, v12}, Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;-><init>(Lcom/vuitton/android/domain/usecase/automatedtest/SaveSecurityCookieUseCase;Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;)V

    new-instance v12, Lcom/vuitton/android/domain/usecase/automatedtest/SetUiTestModeUseCase;

    iget-object v0, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->A:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AutomatedTestRepository;

    invoke-direct {v12, v0}, Lcom/vuitton/android/domain/usecase/automatedtest/SetUiTestModeUseCase;-><init>(Lcom/vuitton/android/domain/repository/AutomatedTestRepository;)V

    new-instance v13, Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;

    iget-object v0, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->A:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AutomatedTestRepository;

    invoke-direct {v13, v0}, Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;-><init>(Lcom/vuitton/android/domain/repository/AutomatedTestRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v14

    new-instance v15, Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;

    iget-object v0, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-direct {v15, v0}, Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;-><init>(Lcom/vuitton/android/domain/repository/ConsentRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v16

    new-instance v0, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;

    iget-object v4, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p0:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/ConsentRepository;

    move-object/from16 p0, v5

    new-instance v5, Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;

    move-object/from16 v17, v6

    iget-object v6, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p0:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-direct {v5, v6}, Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;-><init>(Lcom/vuitton/android/domain/repository/ConsentRepository;)V

    iget-object v6, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-direct {v0, v4, v5, v6}, Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;-><init>(Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V

    new-instance v4, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;

    iget-object v5, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/logger/Logger;

    iget-object v6, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->h5:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/domain/repository/AppVersionRepository;

    move-object/from16 v18, v0

    new-instance v0, Lcom/vuitton/android/domain/usecase/config/OnAppUpdatedUseCase;

    move-object/from16 v19, v7

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->y()Lcom/vuitton/android/domain/usecase/config/ClearAllConfigUseCase;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/vuitton/android/domain/usecase/config/OnAppUpdatedUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/ClearAllConfigUseCase;)V

    invoke-direct {v4, v5, v6, v0}, Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/repository/AppVersionRepository;Lcom/vuitton/android/domain/usecase/config/OnAppUpdatedUseCase;)V

    new-instance v20, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;

    iget-object v0, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v22

    new-instance v23, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v24

    new-instance v0, Lcom/vuitton/android/domain/usecase/analytics/UpdateContactIdUseCase;

    iget-object v5, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->h1:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/AccountRepository;

    invoke-direct {v0, v5}, Lcom/vuitton/android/domain/usecase/analytics/UpdateContactIdUseCase;-><init>(Lcom/vuitton/android/domain/repository/AccountRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->R1()Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;

    move-result-object v26

    new-instance v5, Lcom/vuitton/android/domain/usecase/privacy/UpdateAnalyticsConsentUseCase;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v6

    iget-object v7, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p0:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-direct {v5, v6, v7}, Lcom/vuitton/android/domain/usecase/privacy/UpdateAnalyticsConsentUseCase;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/repository/ConsentRepository;)V

    new-instance v6, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v7

    move-object/from16 v25, v0

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v0

    move-object/from16 v41, v4

    iget-object v4, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->z0:Ldagger/internal/Provider;

    invoke-static {v4}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v4

    move-object/from16 v27, v5

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v5

    invoke-direct {v6, v7, v0, v4, v5}, Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Ldagger/Lazy;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V

    new-instance v0, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v4

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v5

    new-instance v7, Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;

    move-object/from16 v28, v6

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v6

    move-object/from16 v42, v8

    iget-object v8, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->z0:Ldagger/internal/Provider;

    invoke-static {v8}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Ldagger/Lazy;)V

    iget-object v6, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->e0:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/domain/repository/AppConfigRepository;

    invoke-direct {v0, v4, v5, v7, v6}, Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;Lcom/vuitton/android/domain/repository/AppConfigRepository;)V

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v30

    iget-object v4, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j5:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v31, v4

    check-cast v31, Lcom/vuitton/android/domain/repository/LoggerRepository;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v32

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b0()Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;

    move-result-object v33

    new-instance v4, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateGuestUseCase;

    iget-object v5, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->L0:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    invoke-direct {v4, v5}, Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateGuestUseCase;-><init>(Lcom/vuitton/android/domain/repository/TwistAuthRepository;)V

    new-instance v5, Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;

    iget-object v6, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Q1:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/domain/repository/WishlistRepository;

    invoke-direct {v5, v6}, Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;-><init>(Lcom/vuitton/android/domain/repository/WishlistRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->t0()Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;

    move-result-object v36

    new-instance v6, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b0()Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;

    move-result-object v7

    iget-object v8, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Z0:Ldagger/internal/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/domain/repository/ATGSessionRepository;

    invoke-direct {v6, v7, v8}, Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;-><init>(Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;Lcom/vuitton/android/domain/repository/ATGSessionRepository;)V

    iget-object v7, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->k5:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v38, v7

    check-cast v38, Lcom/vuitton/android/domain/repository/AppInitializationRepository;

    iget-object v7, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->S2:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v39, v7

    check-cast v39, Lcom/vuitton/android/domain/repository/CatalogRepository;

    new-instance v7, Lcom/vuitton/android/domain/usecase/pdp/vto/InitPerfectCorpUseCase;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v8

    move-object/from16 v29, v0

    iget-object v0, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->m5:Ldagger/internal/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->a(Ldagger/internal/Provider;)Ldagger/Lazy;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lcom/vuitton/android/domain/usecase/pdp/vto/InitPerfectCorpUseCase;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Ldagger/Lazy;)V

    move-object/from16 v34, v4

    move-object/from16 v35, v5

    move-object/from16 v37, v6

    move-object/from16 v40, v7

    invoke-direct/range {v23 .. v40}, Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/analytics/UpdateContactIdUseCase;Lcom/vuitton/android/domain/usecase/analytics/tools/InitializePrivacyRelatedToolsUseCase;Lcom/vuitton/android/domain/usecase/privacy/UpdateAnalyticsConsentUseCase;Lcom/vuitton/android/domain/usecase/analytics/InitAnalyticsUseCase;Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/repository/LoggerRepository;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/GetAuthTokenUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/AuthenticateGuestUseCase;Lcom/vuitton/android/domain/usecase/wishlist/RefreshWishlistUseCase;Lcom/vuitton/android/domain/usecase/connectivity/GetConnectedObjectListUseCase;Lcom/vuitton/android/domain/usecase/authentication/CreateATGSessionUseCase;Lcom/vuitton/android/domain/repository/AppInitializationRepository;Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/pdp/vto/InitPerfectCorpUseCase;)V

    iget-object v0, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->e0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Lcom/vuitton/android/domain/repository/AppConfigRepository;

    iget-object v0, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Lcom/vuitton/android/domain/repository/ConnectedObjectsConfigRepository;

    new-instance v0, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->y2()Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;

    move-result-object v4

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v5

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->z2()Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    move-result-object v6

    invoke-direct {v0, v4, v5, v6}, Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->y()Lcom/vuitton/android/domain/usecase/config/ClearAllConfigUseCase;

    move-result-object v27

    new-instance v4, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->y2()Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;

    move-result-object v5

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v6

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->z2()Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;)V

    move-object/from16 v26, v0

    move-object/from16 v28, v4

    invoke-direct/range {v20 .. v28}, Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/app/InitializeAppUseCase;Lcom/vuitton/android/domain/repository/AppConfigRepository;Lcom/vuitton/android/domain/repository/ConnectedObjectsConfigRepository;Lcom/vuitton/android/domain/usecase/config/AreConfigsInCacheUseCase;Lcom/vuitton/android/domain/usecase/config/ClearAllConfigUseCase;Lcom/vuitton/android/domain/usecase/config/AreCachedConfigsUpToDateUseCase;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->y2()Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;

    move-result-object v0

    new-instance v21, Lcom/vuitton/android/domain/usecase/config/ShouldUpdateOsUseCase;

    invoke-direct/range {v21 .. v21}, Lcom/vuitton/android/domain/usecase/config/ShouldUpdateOsUseCase;-><init>()V

    new-instance v22, Lcom/vuitton/android/domain/usecase/config/ShouldUpdateAppUseCase;

    invoke-direct/range {v22 .. v22}, Lcom/vuitton/android/domain/usecase/config/ShouldUpdateAppUseCase;-><init>()V

    new-instance v4, Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;

    iget-object v5, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p5:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/MaintenanceRepository;

    invoke-direct {v4, v5}, Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;-><init>(Lcom/vuitton/android/domain/repository/MaintenanceRepository;)V

    new-instance v5, Lcom/vuitton/android/domain/usecase/deeplinkredirection/GetSavedDeepLinkForRedirectionUseCase;

    iget-object v6, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u5:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/domain/repository/DeepLinkCacheRepository;

    invoke-direct {v5, v6}, Lcom/vuitton/android/domain/usecase/deeplinkredirection/GetSavedDeepLinkForRedirectionUseCase;-><init>(Lcom/vuitton/android/domain/repository/DeepLinkCacheRepository;)V

    new-instance v6, Lcom/vuitton/android/domain/usecase/deeplinkredirection/SaveDeepLinkForRedirectionUseCase;

    iget-object v7, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u5:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/domain/repository/DeepLinkCacheRepository;

    invoke-direct {v6, v7}, Lcom/vuitton/android/domain/usecase/deeplinkredirection/SaveDeepLinkForRedirectionUseCase;-><init>(Lcom/vuitton/android/domain/repository/DeepLinkCacheRepository;)V

    new-instance v7, Lcom/vuitton/android/domain/usecase/deeplinkredirection/ClearDeepLinkForRedirectionUseCase;

    iget-object v8, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u5:Ldagger/internal/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/domain/repository/DeepLinkCacheRepository;

    invoke-direct {v7, v8}, Lcom/vuitton/android/domain/usecase/deeplinkredirection/ClearDeepLinkForRedirectionUseCase;-><init>(Lcom/vuitton/android/domain/repository/DeepLinkCacheRepository;)V

    new-instance v8, Lcom/vuitton/android/domain/usecase/app/monitoring/StartOpenAppMonitoringUseCase;

    move-object/from16 v23, v0

    iget-object v0, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v24, v4

    iget-object v4, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v5:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;

    invoke-direct {v8, v0, v4}, Lcom/vuitton/android/domain/usecase/app/monitoring/StartOpenAppMonitoringUseCase;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;)V

    new-instance v0, Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;

    iget-object v4, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/monitoring/Monitor;

    move-object/from16 v25, v5

    iget-object v5, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/logger/Logger;

    move-object/from16 v26, v6

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->C()Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;

    move-result-object v6

    move-object/from16 v27, v7

    iget-object v7, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v5:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;-><init>(Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/dispatch/GetUserInAppDispatchOrNullUseCase;Lcom/vuitton/android/domain/repository/OpenAppTimestampRepository;)V

    new-instance v4, Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;

    iget-object v5, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p0:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/ConsentRepository;

    invoke-direct {v4, v5}, Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;-><init>(Lcom/vuitton/android/domain/repository/ConsentRepository;)V

    new-instance v5, Lcom/vuitton/android/domain/usecase/privacy/consent/HasConsentsUseCase;

    iget-object v6, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->p0:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/domain/repository/ConsentRepository;

    iget-object v7, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    invoke-direct {v5, v6, v7}, Lcom/vuitton/android/domain/usecase/privacy/consent/HasConsentsUseCase;-><init>(Lcom/vuitton/android/domain/repository/ConsentRepository;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V

    new-instance v6, Lcom/vuitton/android/domain/usecase/onboarding/GetOnboardingStateUseCase;

    iget-object v7, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-direct {v6, v7}, Lcom/vuitton/android/domain/usecase/onboarding/GetOnboardingStateUseCase;-><init>(Lcom/vuitton/android/domain/repository/UserPreferencesRepository;)V

    new-instance v7, Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;

    move-object/from16 v28, v0

    iget-object v0, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-direct {v7, v0}, Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;-><init>(Lcom/vuitton/android/domain/repository/UserPreferencesRepository;)V

    new-instance v0, Lcom/vuitton/android/domain/usecase/applink/FetchAppLinkExclusionsUseCase;

    move-object/from16 v29, v4

    iget-object v4, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->C3:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/AppLinkRepository;

    invoke-direct {v0, v4}, Lcom/vuitton/android/domain/usecase/applink/FetchAppLinkExclusionsUseCase;-><init>(Lcom/vuitton/android/domain/repository/AppLinkRepository;)V

    new-instance v4, Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;

    move-object/from16 v33, v0

    iget-object v0, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->N3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/AvatarRepository;

    invoke-direct {v4, v0}, Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;-><init>(Lcom/vuitton/android/domain/repository/AvatarRepository;)V

    new-instance v0, Lcom/vuitton/android/domain/usecase/botprotection/InitializeBotProtectionUseCase;

    move-object/from16 v34, v4

    iget-object v4, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->x5:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/BotProtectionRepository;

    invoke-direct {v0, v4}, Lcom/vuitton/android/domain/usecase/botprotection/InitializeBotProtectionUseCase;-><init>(Lcom/vuitton/android/domain/repository/BotProtectionRepository;)V

    iget-object v1, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->l:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v36, v1

    check-cast v36, Lcom/vuitton/android/platform/security/RootDetector;

    new-instance v1, Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->A2()Lcom/vuitton/android/domain/usecase/app/ResetAppDataUseCase;

    move-result-object v2

    iget-object v3, v3, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/UserPreferencesRepository;

    invoke-direct {v1, v2, v3}, Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;-><init>(Lcom/vuitton/android/domain/usecase/app/ResetAppDataUseCase;Lcom/vuitton/android/domain/repository/UserPreferencesRepository;)V

    move-object/from16 v35, v0

    move-object/from16 v37, v1

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v6, v17

    move-object/from16 v17, v18

    move-object/from16 v7, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v18, v41

    move-object/from16 v5, p0

    move-object/from16 v27, v8

    move-object/from16 v8, v42

    invoke-direct/range {v5 .. v37}, Lcom/vuitton/android/presentation/screen/splash/SplashScreenViewModelImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Landroid/app/Application;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/usecase/dispatch/DetermineUserInAppDispatchStatusUseCase;Lcom/vuitton/android/domain/usecase/config/GetConfigsVersionUseCase;Lcom/vuitton/android/domain/usecase/automatedtest/ApplyAutomatedTestConfigUseCase;Lcom/vuitton/android/domain/usecase/automatedtest/SetUiTestModeUseCase;Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetPiplCbdtAgreementUseCase;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/domain/usecase/privacy/NeedShowPrivacyConsentUseCase;Lcom/vuitton/android/domain/usecase/config/HandleAppUpdateUseCase;Lcom/vuitton/android/domain/usecase/config/SyncConfigsWithRevisionsUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedConfigsVersionUseCase;Lcom/vuitton/android/domain/usecase/config/ShouldUpdateOsUseCase;Lcom/vuitton/android/domain/usecase/config/ShouldUpdateAppUseCase;Lcom/vuitton/android/domain/usecase/maintenance/IsAppInMaintenanceUseCase;Lcom/vuitton/android/domain/usecase/deeplinkredirection/GetSavedDeepLinkForRedirectionUseCase;Lcom/vuitton/android/domain/usecase/deeplinkredirection/SaveDeepLinkForRedirectionUseCase;Lcom/vuitton/android/domain/usecase/deeplinkredirection/ClearDeepLinkForRedirectionUseCase;Lcom/vuitton/android/domain/usecase/app/monitoring/StartOpenAppMonitoringUseCase;Lcom/vuitton/android/domain/usecase/app/monitoring/EndOpenAppMonitoringUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/GetConsentTypeUseCase;Lcom/vuitton/android/domain/usecase/privacy/consent/HasConsentsUseCase;Lcom/vuitton/android/domain/usecase/onboarding/GetOnboardingStateUseCase;Lcom/vuitton/android/domain/usecase/onboarding/SetOnboardingStateUseCase;Lcom/vuitton/android/domain/usecase/applink/FetchAppLinkExclusionsUseCase;Lcom/vuitton/android/domain/usecase/avatar/PreloadAvatarsCacheUseCase;Lcom/vuitton/android/domain/usecase/botprotection/InitializeBotProtectionUseCase;Lcom/vuitton/android/platform/security/RootDetector;Lcom/vuitton/android/domain/usecase/environments/UpdateEnvironmentUseCase;)V

    return-object v5

    :pswitch_18
    move-object v1, v3

    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v0, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v0}, Ldagger/hilt/android/internal/Contexts;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v7

    iget-object v8, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->a:Landroidx/lifecycle/SavedStateHandle;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v9

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v11

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v13

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v14

    new-instance v15, Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;

    invoke-direct {v15}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;-><init>()V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M()Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    move-result-object v16

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->M()Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    move-result-object v17

    new-instance v3, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->L0:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v5

    move-object/from16 p0, v6

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v6

    move-object/from16 v18, v7

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->U()Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;-><init>(Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->x2()Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;

    move-result-object v19

    new-instance v4, Lcom/vuitton/android/domain/usecase/forms/GetCompleteProfileFormUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->s()Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;

    move-result-object v2

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->V1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;

    invoke-direct {v4, v2, v0}, Lcom/vuitton/android/domain/usecase/forms/GetCompleteProfileFormUseCase;-><init>(Lcom/vuitton/android/domain/usecase/forms/BestFormDispatchIdUseCase;Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v21

    move-object/from16 v6, p0

    move-object/from16 v20, v4

    move-object/from16 v7, v18

    move-object/from16 v18, v3

    invoke-direct/range {v6 .. v21}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;-><init>(Landroid/app/Application;Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/screen/authentication/common/validation/GenericFieldValidationRules;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/domain/usecase/authentication/social/SocialRegisterUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYSignUpEventUseCase;Lcom/vuitton/android/domain/usecase/forms/GetCompleteProfileFormUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V

    return-object v6

    :pswitch_19
    move-object v1, v3

    new-instance v7, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v8

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v9

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v11

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/vuitton/android/core/events/LVEventSender;

    new-instance v13, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-direct {v13, v0}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManagerImpl;-><init>(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V

    new-instance v14, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->l1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/credentials/CredentialManager;

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->b0:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-direct {v14, v0, v3}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManagerImpl;-><init>(Landroidx/credentials/CredentialManager;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V

    new-instance v15, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl;

    invoke-direct {v15}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl;-><init>()V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v16

    new-instance v0, Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;

    iget-object v1, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->L0:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/TwistAuthRepository;

    invoke-direct {v0, v1}, Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;-><init>(Lcom/vuitton/android/domain/repository/TwistAuthRepository;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->v2()Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;

    move-result-object v18

    move-object/from16 v17, v0

    invoke-direct/range {v7 .. v18}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;)V

    return-object v7

    :pswitch_1a
    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailViewModel;

    new-instance v1, Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetSneakerFaqUseCase;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->z2()Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;

    move-result-object v3

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G2:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/LightUpRepository;

    invoke-direct {v1, v3, v2}, Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetSneakerFaqUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedConnectedObjectsConfigUseCase;Lcom/vuitton/android/domain/repository/LightUpRepository;)V

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/sneakers/SneakerDetailViewModel;-><init>(Lcom/vuitton/android/domain/usecase/connectivity/lightup/GetSneakerFaqUseCase;)V

    return-object v0

    :pswitch_1b
    move-object v1, v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v0, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v0}, Ldagger/hilt/android/internal/Contexts;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v6

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v7

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v8

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v9

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    new-instance v11, Lcom/vuitton/android/presentation/screen/options/settings/SettingsTracker;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v2

    invoke-direct {v11, v2}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsTracker;-><init>(Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    new-instance v12, Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->h1:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/AccountRepository;

    invoke-direct {v12, v2}, Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;-><init>(Lcom/vuitton/android/domain/repository/AccountRepository;)V

    new-instance v13, Lcom/vuitton/android/domain/usecase/account/consent/PatchUserConsentsUseCase;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->h1:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/AccountRepository;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->P:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/LoginStateRepository;

    invoke-direct {v13, v2, v0}, Lcom/vuitton/android/domain/usecase/account/consent/PatchUserConsentsUseCase;-><init>(Lcom/vuitton/android/domain/repository/AccountRepository;Lcom/vuitton/android/domain/repository/LoginStateRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v14

    invoke-direct/range {v4 .. v14}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;-><init>(Landroid/app/Application;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/presentation/screen/options/settings/SettingsTracker;Lcom/vuitton/android/domain/usecase/account/consent/GetUserConsentsUseCase;Lcom/vuitton/android/domain/usecase/account/consent/PatchUserConsentsUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V

    return-object v4

    :pswitch_1c
    move-object v1, v3

    new-instance v5, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v0, v0, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v0}, Ldagger/hilt/android/internal/Contexts;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v6

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->G()Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    move-result-object v9

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v10

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v11

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v12

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->j0()Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;

    move-result-object v13

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->B()Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    move-result-object v14

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b1()Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;

    move-result-object v15

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v16

    new-instance v3, Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsListUseCase;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->S4:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/PersonalSelectionsRepository;

    invoke-direct {v3, v4}, Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsListUseCase;-><init>(Lcom/vuitton/android/domain/repository/PersonalSelectionsRepository;)V

    new-instance v4, Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->d3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/BookingRepository;

    invoke-direct {v4, v0}, Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;-><init>(Lcom/vuitton/android/domain/repository/BookingRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v19

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->v()Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;

    move-result-object v20

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->z()Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;

    move-result-object v21

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-direct/range {v5 .. v21}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModelImpl;-><init>(Landroid/app/Application;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/osa/GetOnlineStoreAppointmentListUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/personalselections/GetPersonalSelectionsListUseCase;Lcom/vuitton/android/domain/usecase/booking/GetBookingsUseCase;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/domain/usecase/account/CheckEligibilityForPassUseCase;Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;)V

    return-object v5

    :pswitch_1d
    move-object v1, v3

    new-instance v6, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v7

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/vuitton/foundation/logger/Logger;

    iget-object v0, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/vuitton/android/domain/monitoring/Monitor;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v10

    new-instance v11, Lcom/vuitton/android/domain/usecase/search/GetLiveSearchUseCase;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K4:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/SearchRepository;

    invoke-direct {v11, v3}, Lcom/vuitton/android/domain/usecase/search/GetLiveSearchUseCase;-><init>(Lcom/vuitton/android/domain/repository/SearchRepository;)V

    new-instance v12, Lcom/vuitton/android/domain/usecase/search/GetTrendingListUseCase;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K4:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/SearchRepository;

    invoke-direct {v12, v3}, Lcom/vuitton/android/domain/usecase/search/GetTrendingListUseCase;-><init>(Lcom/vuitton/android/domain/repository/SearchRepository;)V

    new-instance v13, Lcom/vuitton/android/domain/usecase/search/GetSearchHistoryUseCase;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->P3:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/SearchHistoryRepository;

    invoke-direct {v13, v3}, Lcom/vuitton/android/domain/usecase/search/GetSearchHistoryUseCase;-><init>(Lcom/vuitton/android/domain/repository/SearchHistoryRepository;)V

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v14

    new-instance v15, Lcom/vuitton/android/domain/usecase/products/GetProductListBySkusUseCase;

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->S2:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/CatalogRepository;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v3

    invoke-direct {v15, v1, v3}, Lcom/vuitton/android/domain/usecase/products/GetProductListBySkusUseCase;-><init>(Lcom/vuitton/android/domain/repository/CatalogRepository;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;)V

    new-instance v1, Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;

    iget-object v3, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->P3:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/SearchHistoryRepository;

    invoke-direct {v1, v3}, Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;-><init>(Lcom/vuitton/android/domain/repository/SearchHistoryRepository;)V

    new-instance v3, Lcom/vuitton/android/domain/usecase/search/GetAutocompleteListUseCase;

    iget-object v4, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->K4:Ldagger/internal/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/domain/repository/SearchRepository;

    invoke-direct {v3, v4}, Lcom/vuitton/android/domain/usecase/search/GetAutocompleteListUseCase;-><init>(Lcom/vuitton/android/domain/repository/SearchRepository;)V

    new-instance v4, Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->P3:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/SearchHistoryRepository;

    invoke-direct {v4, v2}, Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;-><init>(Lcom/vuitton/android/domain/repository/SearchHistoryRepository;)V

    new-instance v2, Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryTextualUseCase;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->P3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/SearchHistoryRepository;

    invoke-direct {v2, v0}, Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryTextualUseCase;-><init>(Lcom/vuitton/android/domain/repository/SearchHistoryRepository;)V

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-direct/range {v6 .. v19}, Lcom/vuitton/android/presentation/screen/search/SearchViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/usecase/search/GetLiveSearchUseCase;Lcom/vuitton/android/domain/usecase/search/GetTrendingListUseCase;Lcom/vuitton/android/domain/usecase/search/GetSearchHistoryUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/products/GetProductListBySkusUseCase;Lcom/vuitton/android/domain/usecase/search/UpdateSearchHistoryUseCase;Lcom/vuitton/android/domain/usecase/search/GetAutocompleteListUseCase;Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryProductUseCase;Lcom/vuitton/android/domain/usecase/search/AddSearchHistoryTextualUseCase;)V

    return-object v6

    :pswitch_1e
    move-object v1, v3

    new-instance v0, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;

    iget-object v1, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->a:Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object v1, v1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;->a:Landroid/content/Context;

    invoke-static {v1}, Ldagger/hilt/android/internal/Contexts;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screenshot/ScreenshotViewModelImpl;-><init>(Landroid/app/Application;)V

    return-object v0

    :pswitch_1f
    move-object v1, v3

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;

    iget-object v3, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->a:Landroidx/lifecycle/SavedStateHandle;

    iget-object v4, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v5

    iget-object v6, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/foundation/logger/Logger;

    iget-object v7, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v8, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/core/events/LVEventSender;

    move-object v9, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v8

    move-object v10, v9

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v9

    iget-object v11, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->P:Ldagger/internal/Provider;

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/domain/repository/LoginStateRepository;

    move-object v12, v10

    move-object v10, v11

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v11

    move-object v13, v12

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v12

    move-object v14, v13

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->c3()Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;

    move-result-object v13

    move-object v15, v14

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v14

    move-object/from16 v16, v15

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->j0()Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;

    move-result-object v15

    move-object/from16 p0, v0

    new-instance v0, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;

    move-object/from16 v17, v3

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v3

    move-object/from16 v18, v5

    iget-object v5, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->Z3:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/CareServicesRepository;

    invoke-direct {v0, v3, v5}, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;-><init>(Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/repository/CareServicesRepository;)V

    new-instance v3, Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;

    iget-object v5, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->g3:Ldagger/internal/Provider;

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/domain/repository/RepairRepository;

    move-object/from16 v19, v0

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v0

    invoke-direct {v3, v5, v0}, Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;-><init>(Lcom/vuitton/android/domain/repository/RepairRepository;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V

    move-object/from16 v5, v18

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->x1()Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v16, v19

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v19

    new-instance v1, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;

    iget-object v2, v4, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->W3:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/CareServicesBffRepository;

    invoke-direct {v1, v2}, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;-><init>(Lcom/vuitton/android/domain/repository/CareServicesBffRepository;)V

    move-object/from16 v2, v17

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, p0

    move-object v4, v0

    move-object/from16 v20, v1

    invoke-direct/range {v2 .. v20}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceByIdUseCase;Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;Lcom/vuitton/android/domain/usecase/products/GetSkusProductsListUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;)V

    return-object v2

    :pswitch_20
    move-object v1, v3

    new-instance v3, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;

    iget-object v4, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->a:Landroidx/lifecycle/SavedStateHandle;

    iget-object v0, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->E()Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;

    move-result-object v5

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v6

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/vuitton/foundation/logger/Logger;

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->n1:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/vuitton/android/core/events/LVEventSender;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->y()Lcom/vuitton/android/presentation/contact/ContactUsDelegateImpl;

    move-result-object v10

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->f()Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    move-result-object v11

    iget-object v2, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->P:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/vuitton/android/domain/repository/LoginStateRepository;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v13

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->v()Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTrackerImpl;

    move-result-object v14

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->D()Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    move-result-object v15

    new-instance v1, Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->g3:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/RepairRepository;

    move-object/from16 p0, v3

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->F()Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;-><init>(Lcom/vuitton/android/domain/repository/RepairRepository;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V

    new-instance v2, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;

    iget-object v3, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->W3:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/domain/repository/CareServicesBffRepository;

    invoke-direct {v2, v3}, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;-><init>(Lcom/vuitton/android/domain/repository/CareServicesBffRepository;)V

    new-instance v3, Lcom/vuitton/android/domain/usecase/careservices/CancelCareServiceBffUseCase;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->W3:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/domain/repository/CareServicesBffRepository;

    invoke-direct {v3, v1}, Lcom/vuitton/android/domain/usecase/careservices/CancelCareServiceBffUseCase;-><init>(Lcom/vuitton/android/domain/repository/CareServicesBffRepository;)V

    new-instance v1, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;

    move-object/from16 v17, v2

    iget-object v2, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->W3:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/CareServicesBffRepository;

    invoke-direct {v1, v2}, Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;-><init>(Lcom/vuitton/android/domain/repository/CareServicesBffRepository;)V

    new-instance v2, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;

    iget-object v0, v0, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->W3:Ldagger/internal/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/domain/repository/CareServicesBffRepository;

    invoke-direct {v2, v0}, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;-><init>(Lcom/vuitton/android/domain/repository/CareServicesBffRepository;)V

    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move-object/from16 v18, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v20}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerTracker;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/repairs/GetRepairStatusMapUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceListBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/CancelCareServiceBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/GetCareServiceDetailBffUseCase;Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceAppointmentBffUseCase;)V

    return-object v3

    :pswitch_21
    move-object v1, v3

    new-instance v0, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;

    iget-object v1, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->j:Ldagger/internal/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/foundation/logger/Logger;

    new-instance v3, Lcom/vuitton/android/domain/usecase/products/GetReinsuranceUseCase;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->b:Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->S2:Ldagger/internal/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/domain/repository/CatalogRepository;

    invoke-direct {v3, v2}, Lcom/vuitton/android/domain/usecase/products/GetReinsuranceUseCase;-><init>(Lcom/vuitton/android/domain/repository/CatalogRepository;)V

    invoke-direct {v0, v1, v3}, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl;-><init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/usecase/products/GetReinsuranceUseCase;)V

    return-object v0

    :pswitch_22
    move-object v1, v3

    new-instance v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;

    iget-object v2, v2, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl;->a:Landroidx/lifecycle/SavedStateHandle;

    iget-object v3, v1, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->o4:Ldagger/internal/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$SingletonCImpl;->u()Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModelImpl;-><init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/DaggerLVApplication_HiltComponents_SingletonC$ViewModelCImpl$SwitchingProvider;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
