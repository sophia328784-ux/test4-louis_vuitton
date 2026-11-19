.class public final synthetic Lxg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;)V
    .locals 1

    const/16 v0, 0x15

    iput v0, p0, Lxg0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxg0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lxg0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 12
    iput p3, p0, Lxg0;->b:I

    iput-object p1, p0, Lxg0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lxg0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lxg0;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    iget-object v6, p0, Lxg0;->d:Ljava/lang/Object;

    iget-object p0, p0, Lxg0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$SocialConsentUiModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, v6, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$CustomisationConsentUiModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, v6, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$AnalyticsConsentUiModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, v6, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v6, Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel$FunctionalConsentUiModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, v6, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/work/impl/model/PreferenceDao_Impl;

    check-cast v6, Landroidx/work/impl/model/Preference;

    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    sget-object v0, Landroidx/work/impl/model/PreferenceDao_Impl;->c:Landroidx/work/impl/model/PreferenceDao_Impl$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/work/impl/model/PreferenceDao_Impl;->b:Landroidx/work/impl/model/PreferenceDao_Impl$1;

    invoke-virtual {p0, p1, v6}, Landroidx/room/EntityInsertAdapter;->c(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p0, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;

    check-cast v6, Landroid/view/ViewGroup;

    check-cast p1, Landroid/graphics/Canvas;

    invoke-static {p0, v6, p1}, Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;->e(Lcom/sightcall/advancedannotations/domain/drawer/annotation/PointerAnnotation;Landroid/view/ViewGroup;Landroid/graphics/Canvas;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p0, Landroid/content/Context;

    check-cast v6, Landroidx/compose/runtime/MutableLongState;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v6}, Landroidx/compose/runtime/LongState;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/extensions/LongExtKt;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6}, Landroidx/compose/runtime/LongState;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/extensions/LongExtKt;->b(J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f14037a

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast p0, Ljava/util/Set;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$ScrollPercentageReachedEvent;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$ScrollPercentageReachedEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$ScrollPercentageReachedEvent;->a:Ljava/lang/String;

    iget v0, v0, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$ScrollPercentageReachedEvent;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v6, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v6, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    check-cast v6, Landroidx/navigation/NavHostController;

    check-cast p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;

    check-cast p1, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Look;->INSTANCE:Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Look;

    invoke-static {v6, v0, v5, v4}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;->m9(Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast p0, Ljava/util/List;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/cart/components/samples/ComposableSingletons$PerfumeSamplesScreenKt;->a:Lcom/vuitton/android/presentation/screen/cart/components/samples/ComposableSingletons$PerfumeSamplesScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/cart/components/samples/ComposableSingletons$PerfumeSamplesScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v1, 0x3

    invoke-static {p1, v5, v0, v1}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesScreenKt$PerfumeSamplesScreen$lambda$1$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v2, p0}, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesScreenKt$PerfumeSamplesScreen$lambda$1$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesScreenKt$PerfumeSamplesScreen$lambda$1$0$$inlined$itemsIndexed$default$3;

    invoke-direct {v4, p0, v6}, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesScreenKt$PerfumeSamplesScreen$lambda$1$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v6, 0x799532c4

    invoke-direct {p0, v6, v3, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {p1, v0, v5, v2, p0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/cart/components/samples/ComposableSingletons$PerfumeSamplesScreenKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {p1, v5, p0, v1}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast v6, Lcom/perfectcorp/perfectlib/CameraView;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$lambda$5$1$$inlined$onDispose$1;

    invoke-direct {p1, p0, v6}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/PerfectCameraComposableKt$PerfectCameraComposable$lambda$5$1$$inlined$onDispose$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/perfectcorp/perfectlib/CameraView;)V

    return-object p1

    :pswitch_a
    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->b:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAskForLivePresentationClickedEvent;->a:Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnAskForLivePresentationClickedEvent;

    invoke-static {v3, v1, v2, p0}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    new-instance p0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$VirtualStudioConsents;

    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$VirtualStudioConsents;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;)V

    invoke-interface {v6, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v6, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTracker;

    check-cast p1, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Reinsurance;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Reinsurance;-><init>(Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v6, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v0, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel$OpenReinsurance;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel$OpenReinsurance;-><init>(Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;)V

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    check-cast v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditorialContentCarouselSwipedEvent;

    invoke-direct {v2, v0, p1, v5}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnEditorialContentCarouselSwipedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    invoke-static {v2, p1, v0, p0}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    check-cast v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->b:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSwipeEvent;

    invoke-direct {v1, p0, p1, v5}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnSwipeEvent;-><init>(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p0, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    invoke-static {v1, p0, p1, v2}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditorialContentUiModel;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditorialContentUiModel;->f:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditorialContentUiModel;->b:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/graphics/LinearGradient;

    check-cast v6, Landroidx/compose/runtime/MutableState;

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->R1()V

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v9, 0x0

    const/16 v10, 0x7e

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->q1(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;II)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast v6, Ljava/util/ArrayList;

    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    new-instance v0, Lp6;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v6}, Lp6;-><init>(ILjava/util/ArrayList;)V

    iput-boolean v3, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->b:Z

    invoke-virtual {v0, p1}, Lp6;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v2, p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;->b:Z

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_4

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;->Y2()Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-interface {p0, p1, v5}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;->l(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    check-cast v6, Landroidx/compose/runtime/MutableState;

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/plp/models/plp/ProductListUiModelKt;->b(Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v8, 0x5c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v6, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;

    check-cast v6, Landroidx/navigation3/runtime/NavBackStack;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->u:Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/activity/result/ActivityResult;->b:I

    if-ne p1, v1, :cond_7

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->J()Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;->e8()V

    sget-object p0, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$ContactForm;->INSTANCE:Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$ContactForm;

    invoke-static {v6, p0}, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->K(Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/osa/OsaRoutes;)V

    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_16
    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;

    check-cast v6, Landroid/content/Context;

    move-object v9, p1

    check-cast v9, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    sget-object p1, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->u:Lcom/vuitton/android/presentation/screen/osa/OsaActivity$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/osa/OsaActivity;->p:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    if-eqz v7, :cond_8

    invoke-static {v6}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v12, 0x0

    const/16 v13, 0x1c

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v13}, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->a(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroid/os/Bundle;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$ContributionLinkNavigationAnimation;Landroidx/activity/result/ActivityResultLauncher;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_8
    const-string p0, "contributionLinkNavigator"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v5

    :pswitch_17
    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v6, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-interface {p0, v6, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v6, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    check-cast p1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, v6, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    check-cast p0, Lkotlin/jvm/functions/Function3;

    check-cast v6, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    check-cast p1, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v6, p1, v0}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1a
    check-cast p0, Lkotlin/jvm/functions/Function3;

    check-cast v6, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->c:Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    if-eqz v0, :cond_9

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->a:Ljava/lang/String;

    :cond_9
    if-nez v5, :cond_a

    const-string v5, ""

    :cond_a
    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->d:Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    invoke-interface {p0, v5, v0, p1}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    check-cast p0, Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;

    check-cast v6, Landroid/content/Context;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/models/OptionsTrackingUiModel$ContactScreen;->a:Lcom/vuitton/android/presentation/screen/options/models/OptionsTrackingUiModel$ContactScreen;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;->U0(Lcom/vuitton/android/presentation/screen/options/models/OptionsTrackingUiModel;)V

    invoke-static {p1}, Lcom/vuitton/android/platform/extensions/StringExtKt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    new-instance p1, Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToContactPage;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/options/OptionsDestinations$ToContactPage;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v6}, Lcom/vuitton/android/presentation/screen/options/OptionsDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/options/OptionsDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v6, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_b
    const-string p0, "Invalid URL : "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    const-string v0, "OptionsComposable"

    invoke-virtual {p1, v0, p0, v5}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    check-cast p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

    check-cast v6, Landroidx/navigation/NavHostController;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->t:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/activity/result/ActivityResult;->b:I

    if-ne p1, v1, :cond_d

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->J()Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->p:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;->a:Z

    if-eqz p1, :cond_c

    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$StartNow;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$StartNow;

    invoke-static {v6, p0, v5, v4}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->J()Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingViewModelImpl;->p:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingNavHostKt;->c(Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;)Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;

    move-result-object p0

    invoke-static {v6, p0, v5, v4}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    :cond_d
    :goto_2
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
