.class public final synthetic Lrh0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lrh0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrh0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lrh0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 12
    iput p3, p0, Lrh0;->b:I

    iput-object p1, p0, Lrh0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lrh0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lrh0;->b:I

    const/4 v1, 0x6

    sget-object v2, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$SearchOpenedEvent;->a:Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$SearchOpenedEvent;

    const/16 v3, 0x1c

    const/4 v4, 0x1

    const-string v5, ""

    const/4 v6, 0x0

    iget-object v7, p0, Lrh0;->d:Ljava/lang/Object;

    iget-object p0, p0, Lrh0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Permissions;

    invoke-interface {p0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;

    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->I()Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->t0:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v6

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p0, v0, v6, v3}, Lcom/vuitton/android/presentation/utils/ShareUtilsKt;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    iget-object p0, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v1, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v2, v7, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnShareOnScreenshotEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnShareOnScreenshotEvent;

    invoke-static {v3, v0, v1, v2}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;

    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    invoke-virtual {p0, v7}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->J(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/navigation3/runtime/NavBackStack;

    check-cast v7, Landroidx/compose/runtime/MutableState;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->Z:Ljava/util/List;

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/pdp/contextualsizing/models/ModelSizeVariationUiModel;->g:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/PdpRoutes$ContextualSize;->INSTANCE:Lcom/vuitton/android/presentation/screen/pdp/PdpRoutes$ContextualSize;

    invoke-virtual {p0, v0}, Landroidx/navigation3/runtime/NavBackStack;->a(Landroidx/navigation3/runtime/NavKey;)V

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;->q0()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;

    check-cast v7, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    invoke-interface {p0, v5, v6}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;->l(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$ClearAllFiltersEvent;

    sget-object v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;->SEARCH:Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$ClearAllFiltersEvent;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;)V

    invoke-interface {v7, p0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v7, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->b()Lkotlin/enums/EnumEntries;

    move-result-object v0

    invoke-virtual {v7}, Lcom/vuitton/android/designkit/ui/theme/molecules/SegmentedControlState;->a()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;->q0()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;

    check-cast v7, Landroid/content/Context;

    invoke-interface {p0, v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->O0(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    invoke-static {p0, v7}, Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v7, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast p0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    check-cast v7, Landroidx/compose/runtime/MutableState;

    sget-object v0, Lcom/vuitton/android/presentation/common/ScreenOrigin;->PLP:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;->b(Lcom/vuitton/android/presentation/common/ScreenOrigin;)V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v7, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v7, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductSlider;

    invoke-interface {p0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v7, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductFullscreen;

    invoke-interface {p0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v7, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$HalfEdito;

    invoke-interface {p0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;

    check-cast v7, Landroid/content/Context;

    invoke-interface {p0, v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->O0(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    invoke-static {p0, v7}, Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v7, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->c()V

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPByCategoryDelegate;

    check-cast v7, Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPByCategoryDelegate;->b:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    move-object v7, p0

    :goto_2
    return-object v7

    :pswitch_f
    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    check-cast v7, Landroidx/navigation3/runtime/NavBackStack;

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$ContinueAsGuestClickedEvent;

    invoke-direct {v0, v4}, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$ContinueAsGuestClickedEvent;-><init>(Z)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->I0(Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$LocationForm;->INSTANCE:Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$LocationForm;

    invoke-static {v7, p0, v4}, Lcom/vuitton/android/presentation/extensions/Nav3ExtKt;->c(Landroidx/navigation3/runtime/NavBackStack;Landroidx/navigation3/runtime/NavKey;Z)Z

    invoke-virtual {v7, p0}, Landroidx/navigation3/runtime/NavBackStack;->a(Landroidx/navigation3/runtime/NavKey;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegisterClickEvent;

    invoke-direct {v0, v4}, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegisterClickEvent;-><init>(Z)V

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->I0(Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;)V

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v7, Lcom/vuitton/android/presentation/model/common/CtaUiModel;

    iget-object v0, v7, Lcom/vuitton/android/presentation/model/common/CtaUiModel;->c:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModel;

    check-cast v7, Landroidx/compose/runtime/MutableState;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentEvent;->a:Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$BookAppointmentEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModel;->o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;

    check-cast v7, Landroidx/navigation3/runtime/NavBackStack;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->u:Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;->o8()V

    sget-object p0, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$List;->INSTANCE:Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$List;

    invoke-virtual {v7, p0}, Landroidx/navigation3/runtime/NavBackStack;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-static {v7, p0, v0}, Lcom/vuitton/android/presentation/extensions/Nav3ExtKt;->c(Landroidx/navigation3/runtime/NavBackStack;Landroidx/navigation3/runtime/NavKey;Z)Z

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$ContactForm;->INSTANCE:Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$ContactForm;

    invoke-static {v7, v0, v4}, Lcom/vuitton/android/presentation/extensions/Nav3ExtKt;->c(Landroidx/navigation3/runtime/NavBackStack;Landroidx/navigation3/runtime/NavKey;Z)Z

    invoke-virtual {v7, p0}, Landroidx/navigation3/runtime/NavBackStack;->a(Landroidx/navigation3/runtime/NavKey;)V

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    check-cast v7, Landroidx/navigation/NavHostController;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v7}, Landroidx/navigation/NavController;->e()Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v7, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->k:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;->b:Ljava/lang/String;

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    move-object v5, v0

    :cond_b
    :goto_4
    invoke-interface {p0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_16
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v7, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->e:Ljava/lang/String;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_17
    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v7, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->c:Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    if-eqz v0, :cond_c

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->d:Ljava/lang/String;

    goto :goto_5

    :cond_c
    move-object v1, v6

    :goto_5
    if-nez v1, :cond_d

    move-object v1, v5

    :cond_d
    if-eqz v0, :cond_e

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->a:Ljava/lang/String;

    :cond_e
    if-nez v6, :cond_f

    goto :goto_6

    :cond_f
    move-object v5, v6

    :goto_6
    invoke-interface {p0, v1, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    check-cast p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

    check-cast v7, Landroidx/navigation/NavHostController;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;->m8()V

    sget-object p0, Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Notifications;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Notifications;

    invoke-static {v7, p0, v6, v1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    check-cast p0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;->O7()V

    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1a
    check-cast p0, Landroid/content/Context;

    check-cast v7, Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    if-eqz p0, :cond_10

    invoke-interface {v7}, Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;->Vb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f1411ea

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f1411e9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/vuitton/android/presentation/broadcast/ShareBroadcastReceiver;->d:Lcom/vuitton/android/presentation/broadcast/ShareBroadcastReceiver$Companion;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/vuitton/android/presentation/broadcast/ShareBroadcastReceiver;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "PAGE_NAME"

    const-string v5, "LVPass/ShareApp"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "PAGE_POSITION"

    const-string v5, "Share"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v1, v2, v3, v0}, Lcom/vuitton/android/presentation/utils/ShareUtilsKt;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_10
    sget-object p0, Lcom/vuitton/android/presentation/screen/options/models/OptionsTrackingUiModel$ShareScreen;->a:Lcom/vuitton/android/presentation/screen/options/models/OptionsTrackingUiModel$ShareScreen;

    invoke-interface {v7, p0}, Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;->U0(Lcom/vuitton/android/presentation/screen/options/models/OptionsTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    check-cast p0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast v7, Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState$Companion;

    new-instance v0, Lk40;

    invoke-direct {v0, v3}, Lk40;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->b(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v7}, Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;->q()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    check-cast p0, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuViewModel;

    check-cast v7, Landroidx/navigation/NavHostController;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuTrackingUiModel$OnOptOutOthersChoiceEvent;->a:Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuTrackingUiModel$OnOptOutOthersChoiceEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuViewModel;->H2(Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/models/OptOutPrivacyMenuTrackingUiModel;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/OptOutOthers;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/OptOutOthers;

    invoke-static {v7, p0, v6, v1}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

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
