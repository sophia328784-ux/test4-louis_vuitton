.class public final synthetic Lsm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 14
    iput p1, p0, Lsm0;->b:I

    iput-object p4, p0, Lsm0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lsm0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lsm0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;IILjava/lang/String;Lkotlin/jvm/internal/Ref$IntRef;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;)V
    .locals 0

    const/16 p2, 0x12

    iput p2, p0, Lsm0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsm0;->d:Ljava/lang/Object;

    iput-object p5, p0, Lsm0;->c:Ljava/lang/Object;

    iput-object p6, p0, Lsm0;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 15
    iput p4, p0, Lsm0;->b:I

    iput-object p1, p0, Lsm0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lsm0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lsm0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 16
    iput p4, p0, Lsm0;->b:I

    iput-object p1, p0, Lsm0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lsm0;->e:Ljava/lang/Object;

    iput-object p3, p0, Lsm0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lsm0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Lst0;

    iget-object v1, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/linkplay/core/device/LPDevice;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lst0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    iget-object v1, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, p0}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpThemesOverlayKt;->c(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ConfirmExitClickedEvent;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$ConfirmExitClickedEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->S6(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;)V

    :cond_0
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;

    iget-object v1, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter v0

    :try_start_0
    iget v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v2, v1, :cond_1

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;

    move-result-object v2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->a:Ljava/lang/String;

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0

    :pswitch_4
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    iget-object v1, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->g:Z

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->i:Z

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;

    iget-object v1, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function2;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->b:Z

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;->a:Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;

    iget-object v1, v0, Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;->d:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;->b:Ljava/lang/String;

    invoke-interface {p0, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iget-object v1, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/navigation/NavHostController;

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->c(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;->O4()V

    invoke-virtual {p0}, Landroidx/navigation/NavController;->e()Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    iget-object v1, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/State;

    new-instance v2, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnSearch;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->g:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel$OnHitOnSearch;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->x7(Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;)V

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;->g:Ljava/lang/String;

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    sget-object v2, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsRescheduleAppointmentClickedEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsRescheduleAppointmentClickedEvent;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->h:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    iget-object v1, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->m:Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->c:Z

    if-eqz v0, :cond_5

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/BottomSheetScreen$BottomSheetCancel;->a:Lcom/vuitton/android/presentation/screen/repairs/detail/components/BottomSheetScreen$BottomSheetCancel;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-object v1, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->k:Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->c:Z

    if-eqz v0, :cond_6

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/BottomSheetScreen$BottomSheetCancel;->a:Lcom/vuitton/android/presentation/screen/repairs/detail/components/BottomSheetScreen$BottomSheetCancel;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iget-object v3, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_7

    invoke-interface {p0, v2}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_7
    sget-object p0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    invoke-interface {v0, v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    sget-object v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;->Visible:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iget-object v2, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    sget-object v3, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    invoke-interface {v0, v1}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;

    iget-object v1, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;->b:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->PLAYING:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    if-ne v0, v2, :cond_8

    sget-object p0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Pause;->a:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Pause;

    invoke-interface {v1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    sget-object v0, Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Resume;->a:Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent$Resume;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    new-instance v2, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnCollapsedPlayerPlayEvent;

    invoke-direct {v2, v1, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$OnCollapsedPlayerPlayEvent;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    iget-object v0, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    instance-of v0, v1, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Permissions;

    if-eqz v0, :cond_9

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Permissions;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Permissions;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    iget-object v0, p0, Lsm0;->d:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    iget-object v1, p0, Lsm0;->c:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Lsm0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnShadeFinderClickedEvent;

    invoke-direct {v4, v0, v2}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnShadeFinderClickedEvent;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    invoke-static {v4, v0, v2, p0}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_a
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
