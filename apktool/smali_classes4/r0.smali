.class public final synthetic Lr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/runtime/MutableState;Ljava/lang/Object;I)V
    .locals 0

    .line 16
    iput p5, p0, Lr0;->b:I

    iput-object p1, p0, Lr0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lr0;->e:Ljava/lang/Object;

    iput-object p3, p0, Lr0;->c:Ljava/lang/Object;

    iput-object p4, p0, Lr0;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 15
    iput p5, p0, Lr0;->b:I

    iput-object p1, p0, Lr0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lr0;->e:Ljava/lang/Object;

    iput-object p3, p0, Lr0;->f:Ljava/lang/Object;

    iput-object p4, p0, Lr0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableLongState;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lr0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lr0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lr0;->e:Ljava/lang/Object;

    iput-object p4, p0, Lr0;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lr0;->b:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, v0, Lr0;->f:Ljava/lang/Object;

    iget-object v7, v0, Lr0;->d:Ljava/lang/Object;

    iget-object v8, v0, Lr0;->c:Ljava/lang/Object;

    iget-object v9, v0, Lr0;->e:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v7, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    check-cast v6, Landroidx/compose/runtime/MutableState;

    sget v0, Lcom/vuitton/android/presentation/screen/storemode/components/StoreModeWelcomeComposableKt;->a:F

    iget-boolean v0, v7, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->b:Z

    if-nez v0, :cond_0

    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-boolean v1, v7, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->b:Z

    if-eqz v1, :cond_1

    invoke-interface {v6, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v7, Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;

    check-cast v9, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    check-cast v6, Landroid/content/Context;

    check-cast v8, Landroidx/compose/runtime/State;

    sget-object v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenStoreLocatorEvent;->a:Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenStoreLocatorEvent;

    invoke-interface {v7, v0}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;->L7(Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OpenStoreLocator;->c:Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$OpenStoreLocator;

    invoke-virtual {v9, v0}, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->a(Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->f:Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;

    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;->a:Ljava/lang/String;

    :cond_2
    invoke-static {v6, v5}, Lcom/vuitton/android/presentation/screen/services/components/ServicesComposableKt;->b(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v7, Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;

    check-cast v9, Landroid/content/Context;

    check-cast v6, Landroidx/activity/compose/ManagedActivityResultLauncher;

    check-cast v8, Landroidx/compose/runtime/State;

    sget-object v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$RequestRepairEvent;->a:Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$RequestRepairEvent;

    invoke-interface {v7, v0}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;->L7(Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;)V

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->k:I

    if-nez v0, :cond_3

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->n:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToImmersiveArticlePage;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->n:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToImmersiveArticlePage;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v9}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v9, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->c:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToCareServicesPage;->a:Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToCareServicesPage;

    invoke-static {v0, v9}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v9, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToWelcomePage;->a:Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToWelcomePage;

    invoke-static {v0, v9}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0, v6}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->b(Landroid/content/Intent;Landroidx/activity/result/ActivityResultLauncher;)V

    :cond_5
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v7, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    check-cast v9, Ljava/lang/String;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast v8, Landroidx/navigation3/runtime/NavBackStack;

    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;->Hidden:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    invoke-interface {v7, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->Q1(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;)V

    invoke-interface {v7, v3}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->M4(Z)V

    if-eqz v9, :cond_6

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_6
    invoke-static {v8}, Lcom/vuitton/android/presentation/extensions/Nav3ExtKt;->b(Landroidx/navigation3/runtime/NavBackStack;)Z

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    check-cast v7, Landroidx/navigationevent/compose/NavigationEventState;

    check-cast v9, Landroidx/navigation3/scene/SceneInfo;

    check-cast v6, Ljava/util/List;

    check-cast v8, Ljava/util/List;

    iget-object v0, v7, Landroidx/navigationevent/compose/NavigationEventState;->c:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v0, v7, Landroidx/navigationevent/compose/NavigationEventState;->b:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iget-object v0, v7, Landroidx/navigationevent/compose/NavigationEventState;->d:Landroidx/compose/runtime/MutableState;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    check-cast v9, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    check-cast v6, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTracker;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$AddToCart;

    if-eqz v1, :cond_7

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v2, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCloseAddCartEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCloseAddCartEvent;

    invoke-static {v4, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_2

    :cond_7
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Permissions;

    if-eqz v1, :cond_8

    invoke-interface {v9}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->E4()V

    goto :goto_2

    :cond_8
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$SizeGuide;

    if-eqz v1, :cond_9

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v2, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSizeGuideClosedEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSizeGuideClosedEvent;

    invoke-static {v4, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_2

    :cond_9
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Reinsurance;

    if-eqz v1, :cond_a

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Reinsurance;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Reinsurance;->a:Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    iget-object v1, v6, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v2, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel$CloseReinsurance;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel$CloseReinsurance;-><init>(Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;)V

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_2

    :cond_a
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$CancelProductCustomization;

    if-eqz v1, :cond_b

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v2, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelProductCustomizationBottomSheetCancelEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelProductCustomizationBottomSheetCancelEvent;

    invoke-static {v4, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_2

    :cond_b
    instance-of v0, v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$ServerOverload;

    if-eqz v0, :cond_c

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v2, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnDismissServerOverloadSheet;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnDismissServerOverloadSheet;

    invoke-static {v4, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_c
    :goto_2
    invoke-interface {v8, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->x:Z

    if-eqz v0, :cond_d

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v2, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelProductCustomizationBottomSheetOpenEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelProductCustomizationBottomSheetOpenEvent;

    invoke-static {v4, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$CancelProductCustomization;->a:Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$CancelProductCustomization;

    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_d
    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    check-cast v6, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v2, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v3, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnVirtualStudioConsentAcceptedEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnVirtualStudioConsentAcceptedEvent;

    invoke-static {v4, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    check-cast v6, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$VirtualStudioConsents;

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$VirtualStudioConsents;->a:Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;

    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;

    check-cast v9, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$MultipleCustomizations;

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$MultipleCustomizations;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetContentKt$WhenMappings;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v4, :cond_f

    if-eq v0, v2, :cond_e

    goto :goto_4

    :cond_e
    iget-object v0, v9, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v2, v9, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v3, v9, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelPerfumeEngravingBottomSheetConfirmEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelPerfumeEngravingBottomSheetConfirmEvent;

    invoke-static {v4, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_4

    :cond_f
    iget-object v0, v9, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v2, v9, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v3, v9, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelHotstampingBottomSheetConfirmEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnCancelHotstampingBottomSheetConfirmEvent;

    invoke-static {v4, v1, v2, v3}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :goto_4
    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$MultipleCustomizations;->a:Ljava/lang/String;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$MultipleCustomizations;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    invoke-interface {v6, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    check-cast v7, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    check-cast v9, Ljava/lang/String;

    check-cast v6, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v7, v9, v3}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->zc(Ljava/lang/String;Z)V

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;->h:Ljava/lang/String;

    if-nez v0, :cond_10

    const-string v0, ""

    :cond_10
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;->i:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;->l(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    check-cast v7, Landroidx/appcompat/app/AppCompatActivity;

    check-cast v9, Lkotlin/jvm/functions/Function2;

    check-cast v6, Ljava/lang/String;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljx;

    const/16 v3, 0x1d

    invoke-direct {v2, v9, v6, v8, v3}, Ljx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0, v1, v2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->c(Landroid/view/View;Landroid/view/Window;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    check-cast v7, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    check-cast v9, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    check-cast v6, Landroidx/navigation3/runtime/NavBackStack;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v7}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->e:Z

    if-eqz v0, :cond_11

    invoke-interface {v7}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->d:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    if-eqz v0, :cond_11

    invoke-interface {v9}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->r:Z

    invoke-interface {v7, v0}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;->G4(Z)V

    goto :goto_5

    :cond_11
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/vuitton/android/presentation/extensions/Nav3ExtKt;->b(Landroidx/navigation3/runtime/NavBackStack;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_12
    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    check-cast v7, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    check-cast v6, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    new-instance v0, Lof0;

    const/16 v1, 0x9

    invoke-direct {v0, v9, v6, v8, v1}, Lof0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->b(Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    check-cast v7, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuViewModel;

    check-cast v9, Landroid/content/Context;

    check-cast v6, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    check-cast v8, Landroidx/compose/runtime/State;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuTrackingUiModel$OnContactUsEvent;->a:Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuTrackingUiModel$OnContactUsEvent;

    invoke-interface {v7, v0}, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuViewModel;->H2(Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuTrackingUiModel;)V

    invoke-static {v9}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuViewState;->c:Ljava/lang/String;

    const/16 v2, 0x78

    invoke-static {v6, v0, v1, v3, v2}, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;->b(Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;Landroid/app/Activity;Ljava/lang/String;ZI)V

    :cond_13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    check-cast v7, Lkotlin/jvm/functions/Function0;

    check-cast v9, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    check-cast v6, Landroidx/compose/runtime/MutableState;

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/components/OnboardingIconComposableKt;->a:Landroid/graphics/PathMeasure;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;

    if-ne v0, v1, :cond_14

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_6

    :cond_14
    invoke-virtual {v9}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    check-cast v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-object v11, v8

    check-cast v11, Landroidx/compose/animation/core/InfiniteRepeatableSpec;

    iget-object v1, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->b:Ljava/lang/Object;

    iget-object v13, v0, Lr0;->d:Ljava/lang/Object;

    invoke-virtual {v13, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v14, v0, Lr0;->f:Ljava/lang/Object;

    if-eqz v1, :cond_15

    iget-object v0, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->c:Ljava/lang/Object;

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_15
    iput-object v13, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->b:Ljava/lang/Object;

    iput-object v14, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->c:Ljava/lang/Object;

    new-instance v10, Landroidx/compose/animation/core/TargetBasedAnimation;

    iget-object v12, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->d:Landroidx/compose/animation/core/TwoWayConverter;

    const/16 v16, 0x10

    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v17}, Landroidx/compose/animation/core/TargetBasedAnimation;-><init>(Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/AnimationVector;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v10, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->g:Landroidx/compose/animation/core/TargetBasedAnimation;

    iget-object v0, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->k:Landroidx/compose/animation/core/InfiniteTransition;

    iget-object v0, v0, Landroidx/compose/animation/core/InfiniteTransition;->b:Landroidx/compose/runtime/MutableState;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast v0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    iput-boolean v3, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->h:Z

    iput-boolean v4, v9, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;->i:Z

    :cond_16
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    check-cast v7, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;

    check-cast v9, Ljava/lang/String;

    check-cast v6, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnExpandedPlayerOpenEvent;

    invoke-direct {v0, v9, v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnExpandedPlayerOpenEvent;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V

    invoke-interface {v7, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;->U8(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    check-cast v7, Lkotlin/jvm/functions/Function1;

    check-cast v9, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;

    check-cast v6, Ljava/lang/String;

    check-cast v8, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    invoke-interface {v7, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ShareButtonClickEvent;

    invoke-direct {v0, v6, v8}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ShareButtonClickEvent;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V

    invoke-interface {v9, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;->U8(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    check-cast v7, Landroidx/compose/runtime/GapComposer;

    check-cast v9, Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    check-cast v6, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    check-cast v8, Landroidx/compose/runtime/MovableContentStateReference;

    iget-object v1, v7, Landroidx/compose/runtime/GapComposer;->M:Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;

    iget-object v2, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    :try_start_0
    iput-object v9, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    iget-object v9, v7, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-object v10, v7, Landroidx/compose/runtime/GapComposer;->o:[I

    iget-object v11, v7, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;

    iput-object v5, v7, Landroidx/compose/runtime/GapComposer;->o:[I

    iput-object v5, v7, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iput-object v6, v7, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget-boolean v5, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-boolean v3, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e:Z

    iget-object v0, v8, Landroidx/compose/runtime/MovableContentStateReference;->a:Landroidx/compose/runtime/MovableContent;

    iget-object v3, v8, Landroidx/compose/runtime/MovableContentStateReference;->g:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-object v6, v8, Landroidx/compose/runtime/MovableContentStateReference;->b:Ljava/lang/Object;

    invoke-virtual {v7, v0, v3, v6, v4}, Landroidx/compose/runtime/GapComposer;->j0(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iput-boolean v5, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iput-object v9, v7, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iput-object v10, v7, Landroidx/compose/runtime/GapComposer;->o:[I

    iput-object v11, v7, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iput-object v2, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    :try_start_5
    iput-boolean v5, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->e:Z

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_7
    :try_start_6
    iput-object v9, v7, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iput-object v10, v7, Landroidx/compose/runtime/GapComposer;->o:[I

    iput-object v11, v7, Landroidx/compose/runtime/GapComposer;->v:Landroidx/collection/MutableIntObjectMap;

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_8
    iput-object v2, v1, Landroidx/compose/runtime/composer/gapbuffer/changelist/ComposerChangeListWriter;->b:Landroidx/compose/runtime/composer/gapbuffer/changelist/ChangeList;

    throw v0

    :pswitch_12
    check-cast v7, Landroid/content/Context;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    const v0, 0x7f140336

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v0}, Lcom/vuitton/android/presentation/utils/AccessibilityUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v9, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    check-cast v7, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    check-cast v9, Lkotlin/jvm/functions/Function0;

    check-cast v6, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    iget-boolean v0, v7, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->i:Z

    if-eqz v0, :cond_18

    invoke-interface {v9}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object v0, v6, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v1, v6, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b:Ljava/lang/String;

    iget-object v2, v6, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->c:Ljava/lang/String;

    if-nez v2, :cond_17

    move-object v2, v1

    :cond_17
    new-instance v3, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnIconClickEvent;

    invoke-direct {v3, v4, v2, v1}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnIconClickEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_9

    :cond_18
    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object v0, v7, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->h:Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$Available;->a:Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel$Available;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->c(Z)V

    iget-object v0, v6, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v1, v6, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b:Ljava/lang/String;

    iget-object v2, v6, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->c:Ljava/lang/String;

    if-nez v2, :cond_19

    move-object v2, v1

    :cond_19
    new-instance v4, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnIconClickEvent;

    invoke-direct {v4, v3, v2, v1}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnIconClickEvent;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :goto_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    check-cast v7, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    check-cast v9, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    check-cast v6, Landroid/content/Context;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    new-instance v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailForm;

    invoke-direct {v0, v5}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailForm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b(Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;)V

    iget-object v0, v9, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->l:Lcom/vuitton/android/presentation/contact/ContactUsMode;

    sget-object v1, Lcom/vuitton/android/presentation/contact/compose/ContactUsBottomSheetKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    iget-object v1, v9, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->b:Ljava/lang/String;

    if-ne v0, v4, :cond_1b

    new-instance v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailNative;

    iget-object v2, v9, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->c:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    if-eqz v2, :cond_1a

    invoke-static {v2, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    :cond_1a
    invoke-direct {v0, v1, v5}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailNative;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_1b
    new-instance v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailForm;

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailForm;-><init>(Ljava/lang/String;)V

    :goto_a
    invoke-interface {v8, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    check-cast v7, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    check-cast v9, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    check-cast v6, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    check-cast v8, Lcom/vuitton/android/presentation/screen/feed/components/c;

    iget-object v0, v6, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->a:Ljava/lang/String;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v2, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitAddToCalendarEvent;

    invoke-direct {v2, v9, v0}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitAddToCalendarEvent;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/feed/components/c;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_16
    check-cast v7, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    check-cast v8, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;->c:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;->b:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/booking/confirmation/components/BookingConfirmationCardKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v4, :cond_1d

    if-eq v0, v2, :cond_1c

    goto :goto_b

    :cond_1c
    iget-object v0, v8, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->b:Ljava/lang/String;

    invoke-interface {v6, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_1d
    invoke-interface {v9, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    check-cast v9, Landroid/content/Context;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    check-cast v6, Lkotlinx/coroutines/CoroutineScope;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->m:Lcom/perfectcorp/perfectlib/SkuInfo;

    if-eqz v0, :cond_1e

    new-instance v1, Lw9;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Lw9;-><init>(I)V

    invoke-virtual {v7, v6, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->I(Lkotlinx/coroutines/CoroutineScope;Lcom/perfectcorp/perfectlib/SkuInfo;Lkotlin/jvm/functions/Function0;)V

    :cond_1e
    const v0, 0x7f140b7d

    invoke-virtual {v9, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->H(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_18
    check-cast v7, Lkotlin/jvm/functions/Function1;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    check-cast v9, Landroidx/compose/runtime/MutableState;

    check-cast v6, Landroidx/compose/runtime/MutableLongState;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v8, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v9, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v6}, Landroidx/compose/runtime/LongState;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v7, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_19
    check-cast v7, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    check-cast v9, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

    check-cast v6, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    sget v0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/AudioGuideTrackDetailBottomSheetKt;->a:F

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->c:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->PLAYING:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    if-ne v0, v1, :cond_1f

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPauseEvent;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPauseEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_c

    :cond_1f
    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;->b:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlayEvent;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnHitPlayEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :goto_c
    invoke-interface {v8}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1a
    check-cast v7, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    check-cast v6, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    invoke-interface {v7}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;->Fb()V

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    if-eqz v1, :cond_20

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    goto :goto_d

    :cond_20
    move-object v0, v5

    :goto_d
    if-eqz v0, :cond_21

    sget-object v1, Lcom/vuitton/android/presentation/tracking/AudioGuideActions;->COMPLETED:Lcom/vuitton/android/presentation/tracking/AudioGuideActions;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->i:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;->a:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->b(Lcom/vuitton/android/presentation/tracking/AudioGuideActions;Ljava/lang/String;)V

    :cond_21
    if-eqz v0, :cond_22

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    if-eqz v0, :cond_22

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->h:Ljava/lang/String;

    :cond_22
    invoke-interface {v9, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1b
    check-cast v7, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;

    check-cast v9, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    check-cast v6, Landroidx/compose/runtime/MutableState;

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;->NATIVE_REGISTER_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;

    if-eq v7, v0, :cond_26

    new-instance v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel$OpenAddressSearchClickedEvent;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewTypeKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v4, :cond_25

    if-eq v1, v2, :cond_25

    const/4 v2, 0x3

    if-eq v1, v2, :cond_24

    const/4 v2, 0x4

    if-ne v1, v2, :cond_23

    goto :goto_e

    :cond_23
    invoke-static {}, Lv40;->g()V

    goto :goto_10

    :cond_24
    :goto_e
    sget-object v1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/TrackingAutocompleteAddressSearch;->ADD_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/TrackingAutocompleteAddressSearch;

    goto :goto_f

    :cond_25
    sget-object v1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/TrackingAutocompleteAddressSearch;->EDIT_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/TrackingAutocompleteAddressSearch;

    :goto_f
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteViewState;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel$OpenAddressSearchClickedEvent;-><init>(Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/TrackingAutocompleteAddressSearch;I)V

    invoke-interface {v9, v0}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;->N1(Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel;)V

    :cond_26
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_10
    return-object v5

    :pswitch_1c
    check-cast v7, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    check-cast v9, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;

    check-cast v6, Landroid/content/ClipboardManager;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    invoke-interface {v7, v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    const-string v0, "Session Id"

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/aicompanion/models/ChatHistoryUiModel;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-interface {v8, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

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
