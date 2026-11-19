.class public final synthetic Lt30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lt30;->b:I

    iput-object p1, p0, Lt30;->c:Ljava/lang/Object;

    iput-object p2, p0, Lt30;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lt30;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuViewModel;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuTrackingUiModel$OnCcpaChoiceEvent;->a:Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuTrackingUiModel$OnCcpaChoiceEvent;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuViewModel;->H2(Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuTrackingUiModel;)V

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;->s:Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v4, v3}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$Companion;->a(Landroid/content/Context;Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lcom/dynatrace/agent/OneAgentEventDispatcher;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;

    iget-object v0, v0, Lcom/dynatrace/agent/OneAgentEventDispatcher;->d:Lcom/dynatrace/agent/metrics/MetricsRepository;

    iget-object v0, v0, Lcom/dynatrace/agent/metrics/MetricsRepository;->h:Lcom/dynatrace/agent/storage/preference/MetricsData;

    iget-object p0, p0, Lcom/dynatrace/agent/metrics/SessionInformationMetrics;->f:Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/dynatrace/agent/events/enrichment/CachedMetricsSupplier;

    invoke-direct {v1, v0, p0}, Lcom/dynatrace/agent/events/enrichment/CachedMetricsSupplier;-><init>(Lcom/dynatrace/agent/storage/preference/MetricsData;Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/navigation/NavHostController;

    sget-object v1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->t:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$Companion;

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->c(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Login;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Login;

    invoke-static {p0, v0, v4, v2}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lkotlinx/serialization/descriptors/StructureKind$OBJECT;->a:Lkotlinx/serialization/descriptors/StructureKind$OBJECT;

    new-array v2, v3, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    new-instance v3, Ltb0;

    const/16 v4, 0xf

    invoke-direct {v3, p0, v4}, Ltb0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1, v2, v3}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->e(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/search/models/TrendingItemUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/models/TrendingItemUiModel;->a:Ljava/lang/String;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/NextFrameEndCallbackQueue;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Landroidx/compose/runtime/NextFrameEndCallbackQueue;->a:Landroidx/compose/runtime/internal/AtomicInt;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl$registerNetworkCallbackFlow$1$networkCallback$1;

    iget-object v0, v0, Lcom/dynatrace/agent/common/connectivity/NetworkConnectivityCheckerImpl;->b:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->a:Ljava/lang/String;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/navigation/NavHostController;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;->n0()V

    invoke-virtual {p0}, Landroidx/navigation/NavController;->e()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;->a:Ljava/lang/String;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/navigation/NavHostController;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment;->A:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment$Companion;

    invoke-virtual {v0}, Landroidx/navigation/NavController;->e()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/navigation/NavHostController;

    sget-object v1, Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SamplesSectionClick;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel$SamplesSectionClick;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;->W9(Lcom/vuitton/android/presentation/screen/cart/models/CartTrackingUiModel;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$PerfumeSamples;->INSTANCE:Lcom/vuitton/android/presentation/screen/cart/NativeCartRoute$PerfumeSamples;

    invoke-static {p0, v0, v4, v2}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen$BottomSheetDisclaimer;->a:Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen$BottomSheetDisclaimer;

    invoke-interface {v0, v1, p0, v4}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/cart/models/AddToWishlistRequest;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/models/AddToWishlistRequest;->b:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    invoke-interface {v0, v3, p0}, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;->vb(ZLcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->f0()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->k8()V

    sget-object v1, Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$SkipChangeLocationClickedEvent;->a:Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel$SkipChangeLocationClickedEvent;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->gb(Lcom/vuitton/android/presentation/applink/AppLinkTrackingUiModel;)V

    invoke-static {p0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->c(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    sget-object v1, Lcom/vuitton/android/presentation/screen/main/MainActivity;->L:Lcom/vuitton/android/presentation/screen/main/MainActivity$Companion;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/main/MainActivity;->J()Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/main/MainActivityViewModel;->q()V

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn;

    instance-of v1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn$ForAccountActivation;

    if-eqz v1, :cond_5

    check-cast p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn$ForAccountActivation;

    iget-object v1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn$ForAccountActivation;->a:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn$ForAccountActivation;->b:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;->p:Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroid/content/Intent;

    const-class v2, Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;

    invoke-direct {p0, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "EXTRA_CID"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->REGISTER_WITH_PREFILLED_EMAIL:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object v3, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->ONBOARDING:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2, v1, v3}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->c(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    instance-of v1, p0, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Dialog$AlreadySignedIn$ForLogin;

    if-eqz v1, :cond_7

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->E:Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;

    if-eqz p0, :cond_6

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/main/MainActivity;->H:Landroidx/activity/result/ActivityResultLauncher;

    new-instance v2, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLoginWithRedirection;

    invoke-direct {v2, v4}, Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct$FromDeeplink$ToLoginWithRedirection;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/vuitton/android/presentation/screen/main/MainActivityRouter;->a(Landroid/app/Activity;Landroidx/activity/result/ActivityResultLauncher;Lcom/vuitton/android/presentation/redirectlink/LinkEffect$Navigation$Direct;)V

    goto :goto_1

    :cond_6
    const-string p0, "mainActivityRouter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v4

    :cond_7
    if-nez p0, :cond_8

    :goto_1
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_2

    :cond_8
    invoke-static {}, Lv40;->g()V

    :goto_2
    return-object v4

    :pswitch_11
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz v0, :cond_9

    invoke-interface {p0}, Landroidx/media3/common/Player;->getCurrentPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    sget-object v2, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->q:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$Companion;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->d:Landroidx/media3/exoplayer/ExoPlayer;

    if-eqz p0, :cond_a

    invoke-interface {p0}, Landroidx/media3/common/Player;->release()V

    :cond_a
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextViewModel;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/models/OptionsTrackingUiModel$ClosePopInClickEvent;->a:Lcom/vuitton/android/presentation/screen/options/models/OptionsTrackingUiModel$ClosePopInClickEvent;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextViewModel;->U0(Lcom/vuitton/android/presentation/screen/options/models/OptionsTrackingUiModel;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0, p0, v4, v2}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->j(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;->s:Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModel;

    invoke-interface {v0, p0}, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModel;->Q7(Landroid/content/Context;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_16
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroidx/compose/material3/SheetState;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;-><init>(Landroidx/compose/material3/SheetState;Lkotlinx/coroutines/CoroutineScope;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :pswitch_17
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Lcom/kizitonwose/calendar/core/CalendarDay;

    sget v1, Lcom/vuitton/android/presentation/compose/components/LVCalendarKt;->a:F

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    sget v1, Lcom/vuitton/android/presentation/compose/components/LVAvatarKt;->a:F

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->a:Ljava/lang/String;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Lkotlinx/serialization/json/JsonNamingStrategy;

    sget-object v1, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->a:Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    :goto_3
    if-ge v3, v1, :cond_d

    invoke-interface {v0, v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    invoke-interface {p0}, Lkotlinx/serialization/json/JsonNamingStrategy;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_d
    return-object v2

    :pswitch_1a
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Lkotlinx/serialization/json/Json;

    sget-object v2, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->a:Lkotlinx/serialization/json/internal/DescriptorSchemaCache$Key;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v5, p0, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v5, v5, Lkotlinx/serialization/json/JsonConfiguration;->n:Z

    if-eqz v5, :cond_e

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v5

    sget-object v6, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->a:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_4

    :cond_e
    move v1, v3

    :goto_4
    invoke-static {v0, p0}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->f(Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlinx/serialization/json/Json;)Lkotlinx/serialization/json/JsonNamingStrategy;

    move-result-object p0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d()I

    move-result v5

    move v6, v3

    :goto_5
    if-ge v6, v5, :cond_16

    invoke-interface {v0, v6}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g(I)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Lkotlinx/serialization/json/JsonNames;

    if-eqz v10, :cond_f

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_10
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->j0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlinx/serialization/json/JsonNames;

    if-eqz v7, :cond_12

    invoke-interface {v7}, Lkotlinx/serialization/json/JsonNames;->names()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12

    array-length v8, v7

    move v9, v3

    :goto_7
    if-ge v9, v8, :cond_12

    aget-object v10, v7, v9

    if-eqz v1, :cond_11

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_11
    invoke-static {v2, v0, v10, v6}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->a(Ljava/util/LinkedHashMap;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/lang/String;I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_12
    if-eqz v1, :cond_13

    invoke-interface {v0, v6}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_8

    :cond_13
    if-eqz p0, :cond_14

    invoke-interface {v0, v6}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f(I)Ljava/lang/String;

    invoke-interface {p0}, Lkotlinx/serialization/json/JsonNamingStrategy;->a()Ljava/lang/String;

    move-result-object v7

    goto :goto_8

    :cond_14
    move-object v7, v4

    :goto_8
    if-eqz v7, :cond_15

    invoke-static {v2, v0, v7, v6}, Lkotlinx/serialization/json/internal/JsonNamesMapKt;->a(Ljava/util/LinkedHashMap;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/lang/String;I)V

    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_16
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_17

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    :cond_17
    return-object v2

    :pswitch_1b
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/Pair;

    iget-object p0, p0, Lkotlin/Pair;->c:Ljava/lang/Object;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    iget-object v0, p0, Lt30;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lt30;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSlideUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSlideUiModel;->e:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

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
