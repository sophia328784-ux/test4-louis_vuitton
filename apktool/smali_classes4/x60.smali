.class public final synthetic Lx60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lx60;->b:I

    iput-object p1, p0, Lx60;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lx60;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object p0, p0, Lx60;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;->h7()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;->q:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->c(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_0

    :cond_0
    const-string p0, "chatLifecycleObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p0, Lkotlinx/collections/immutable/ImmutableList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSwipeYMALCarouselEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSwipeYMALCarouselEvent;

    invoke-static {v3, v1, v2, p0}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p0, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OpenProductLocator;->c:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OpenProductLocator;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->a(Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;

    invoke-interface {p0, v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->C1(Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$PrepareAppointmentEvent;->a:Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$PrepareAppointmentEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModel;->o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    return-object p0

    :pswitch_7
    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->u:Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->J()Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->d:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    invoke-interface {v0, p0}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;->R2(Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast p0, Lcom/vuitton/android/presentation/screen/orders/OrderActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/OrderActivity;->q:Lcom/vuitton/android/presentation/screen/orders/OrderActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToCatalogPage;->a:Lcom/vuitton/android/presentation/screen/orders/OrderDestinations$ToCatalogPage;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/orders/OrderDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/orders/OrderDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    check-cast p0, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;->u:Lcom/vuitton/android/presentation/screen/options/OptionsActivity$Companion;

    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/NotificationUtils;->b(Landroid/content/Context;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    check-cast p0, Lcom/dynatrace/agent/storage/preference/MetricsData;

    new-instance v0, Lcom/dynatrace/agent/events/enrichment/StoredMetricsSupplier;

    invoke-direct {v0, p0}, Lcom/dynatrace/agent/events/enrichment/StoredMetricsSupplier;-><init>(Lcom/dynatrace/agent/storage/preference/MetricsData;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lgp0;

    invoke-virtual {p0}, Lgp0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/Call$Factory;

    new-instance v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;

    invoke-direct {v0, p0}, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;-><init>(Lokhttp3/Call$Factory;)V

    return-object v0

    :pswitch_c
    check-cast p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;->q:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;->O7()V

    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/NotificationUtils;->b(Landroid/content/Context;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    check-cast p0, Lcoil3/ImageLoader;

    invoke-interface {p0}, Lcoil3/ImageLoader;->a()Lcoil3/disk/DiskCache;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Landroidx/navigation/fragment/NavHostFragment;

    sget v0, Landroidx/navigation/fragment/NavHostFragment;->E:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v3, Landroidx/navigation/NavHostController;

    invoke-direct {v3, v0}, Landroidx/navigation/NavHostController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p0}, Landroidx/navigation/NavHostController;->i(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v0}, Landroidx/navigation/NavHostController;->j(Landroidx/lifecycle/ViewModelStore;)V

    iget-object v0, v3, Landroidx/navigation/NavController;->b:Landroidx/navigation/internal/NavControllerImpl;

    iget-object v4, v0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    new-instance v5, Landroidx/navigation/fragment/DialogFragmentNavigator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v6, v7}, Landroidx/navigation/fragment/DialogFragmentNavigator;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v4, v5}, Landroidx/navigation/NavigatorProvider;->a(Landroidx/navigation/Navigator;)V

    iget-object v4, v0, Landroidx/navigation/internal/NavControllerImpl;->t:Landroidx/navigation/NavigatorProvider;

    new-instance v5, Landroidx/navigation/fragment/FragmentNavigator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getId()I

    move-result v8

    if-eqz v8, :cond_2

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    goto :goto_1

    :cond_2
    const v8, 0x7f0a031b

    :goto_1
    invoke-direct {v5, v6, v7, v8}, Landroidx/navigation/fragment/FragmentNavigator;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;I)V

    invoke-virtual {v4, v5}, Landroidx/navigation/NavigatorProvider;->a(Landroidx/navigation/Navigator;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v4

    const-string v5, "android-support-nav:fragment:navControllerState"

    invoke-virtual {v4, v5}, Landroidx/savedstate/SavedStateRegistry;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v4}, Landroidx/navigation/NavController;->g(Landroid/os/Bundle;)V

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v4

    new-instance v6, Ldn;

    const/4 v7, 0x3

    invoke-direct {v6, v3, v7}, Ldn;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v5, v6}, Landroidx/savedstate/SavedStateRegistry;->c(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v4

    const-string v5, "android-support-nav:fragment:graphId"

    invoke-virtual {v4, v5}, Landroidx/savedstate/SavedStateRegistry;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroidx/navigation/fragment/NavHostFragment;->C:I

    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v4

    new-instance v6, Ldn;

    const/4 v7, 0x4

    invoke-direct {v6, p0, v7}, Ldn;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v5, v6}, Landroidx/savedstate/SavedStateRegistry;->c(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    iget v4, p0, Landroidx/navigation/fragment/NavHostFragment;->C:I

    iget-object v6, v3, Landroidx/navigation/NavController;->h:Lkotlin/Lazy;

    if-eqz v4, :cond_6

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavInflater;

    invoke-virtual {p0, v4}, Landroidx/navigation/NavInflater;->b(I)Landroidx/navigation/NavGraph;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroidx/navigation/internal/NavControllerImpl;->v(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    :cond_5
    :goto_2
    move-object v2, v3

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :cond_7
    if-eqz p0, :cond_8

    const-string v2, "android-support-nav:fragment:startDestinationArgs"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    :cond_8
    if-eqz v1, :cond_5

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavInflater;

    invoke-virtual {p0, v1}, Landroidx/navigation/NavInflater;->b(I)Landroidx/navigation/NavGraph;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Landroidx/navigation/internal/NavControllerImpl;->v(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    goto :goto_2

    :cond_9
    const-string p0, "NavController cannot be created before the fragment is attached"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    :goto_3
    return-object v2

    :pswitch_f
    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    iget-object p0, p0, Landroidx/navigation/NavBackStackEntry;->i:Landroidx/navigation/internal/NavBackStackEntryImpl;

    invoke-virtual {p0}, Landroidx/navigation/internal/NavBackStackEntryImpl;->b()Landroidx/lifecycle/SavedStateHandle;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    return-object p0

    :pswitch_11
    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment;->A:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;

    if-eqz v1, :cond_a

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;

    :cond_a
    if-eqz v2, :cond_b

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->LOGGED_IN:Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;

    invoke-virtual {v2, v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->K(Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;)V

    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    check-cast p0, Lkotlin/jvm/functions/Function3;

    sget-object v0, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen$BottomSheetCommercial;->a:Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen$BottomSheetCommercial;

    invoke-interface {p0, v0, v2, v2}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OrderCarouselFirstSwipeEvent;->a:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel$OrderCarouselFirstSwipeEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvViewModel;->W(Lcom/vuitton/android/presentation/screen/mylv/models/MyLvTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    check-cast p0, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;->H(Lcom/vuitton/android/presentation/screen/mylv/MyLvActivity;)Lcom/vuitton/android/presentation/link/models/ParsedLink;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_d

    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v1, 0x7f140d7d

    invoke-direct {p0, v1, v2, v0, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_d
    new-instance p0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v1, 0x7f140c01

    invoke-direct {p0, v1, v2, v0, v2}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_4
    return-object p0

    :pswitch_16
    check-cast p0, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;

    invoke-static {p0}, Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;->s(Lcom/sightcall/mediacapture/presenter/views/multimedia/MultiMediaFragment;)Landroidx/lifecycle/ViewModelStoreOwner;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->v(Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;->O(Lcom/vuitton/android/presentation/screen/connectivity/lightup/LightUpActivity;)Lcom/lightup/sdk/device/enums/LightupDeviceType;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p0, Lcom/dynatrace/agent/di/LifecycleModule;

    iget-object p0, p0, Lcom/dynatrace/agent/di/LifecycleModule;->g:Lcom/dynatrace/agent/lifecycle/VisibilityManager;

    invoke-interface {p0}, Lcom/dynatrace/agent/lifecycle/VisibilityManager;->c()Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;

    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    iget-object p0, p0, Landroidx/compose/foundation/text/input/internal/LegacyTextInputMethodRequest;->a:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-object v0

    :pswitch_1b
    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimator;->j:Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz p0, :cond_e

    invoke-static {p0}, Landroidx/compose/ui/node/DrawModifierNodeKt;->a(Landroidx/compose/ui/node/DrawModifierNode;)V

    :cond_e
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    check-cast p0, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;->s:Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
