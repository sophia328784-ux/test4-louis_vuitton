.class public final synthetic Lwd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    const/16 p1, 0x18

    iput p1, p0, Lwd0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lwd0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lwd0;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 12
    iput p3, p0, Lwd0;->b:I

    iput-object p1, p0, Lwd0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lwd0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 13
    iput p4, p0, Lwd0;->b:I

    iput-object p1, p0, Lwd0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lwd0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 14
    iput p3, p0, Lwd0;->b:I

    iput-object p1, p0, Lwd0;->d:Ljava/lang/Object;

    iput-object p2, p0, Lwd0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 36

    move-object/from16 v0, p0

    iget v1, v0, Lwd0;->b:I

    const/4 v2, 0x7

    sget-object v3, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x31

    const/16 v6, 0xa

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    iget-object v13, v0, Lwd0;->d:Ljava/lang/Object;

    iget-object v0, v0, Lwd0;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    check-cast v13, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v2, p2

    check-cast v2, Lcom/vuitton/android/presentation/screen/filter/model/FilterType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->p:Z

    if-eqz v0, :cond_0

    invoke-interface {v13, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v0, [Ljava/lang/Object;

    check-cast v13, Landroidx/compose/runtime/MutableIntState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Landroidx/compose/ui/tooling/PreviewActivity;->h:I

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v11, :cond_1

    move v10, v12

    :cond_1
    and-int/2addr v2, v12

    invoke-interface {v1, v2, v10}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_2

    if-ne v3, v7, :cond_3

    :cond_2
    new-instance v3, Ljm0;

    invoke-direct {v3, v13, v0, v6}, Ljm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function0;

    sget-object v0, Landroidx/compose/ui/tooling/ComposableSingletons$PreviewActivity_androidKt;->a:Landroidx/compose/ui/tooling/ComposableSingletons$PreviewActivity_androidKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v22, Landroidx/compose/ui/tooling/ComposableSingletons$PreviewActivity_androidKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/high16 v24, 0xc00000

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v23, v1

    invoke-static/range {v14 .. v24}, Landroidx/compose/material3/FloatingActionButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    goto :goto_0

    :cond_4
    move-object/from16 v23, v1

    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v0, Landroidx/compose/ui/focus/FocusRequester;

    check-cast v13, Landroidx/compose/ui/focus/FocusRequester;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x14506b5a

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v3, "setGivenGridMode$lambda$0"

    invoke-direct {v2, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_5

    if-ne v3, v7, :cond_6

    :cond_5
    new-instance v3, Lxk0;

    invoke-direct {v3, v13, v11}, Lxk0;-><init>(Landroidx/compose/ui/focus/FocusRequester;I)V

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v3}, Landroidx/compose/ui/focus/FocusPropertiesKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_7

    new-instance v2, Lyn0;

    invoke-direct {v2, v9}, Lyn0;-><init>(I)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v10, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    return-object v0

    :pswitch_2
    check-cast v0, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSharingUiModel;

    check-cast v13, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-static {v0, v13, v1, v2}, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt;->a(Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSharingUiModel;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v13, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$BookAppointmentEvent;->a:Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/models/PersonalSelectionsInStoreTrackingUiModel$BookAppointmentEvent;

    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    check-cast v13, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-static {v13, v0, v1, v2}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/components/PersonalSelectionsCurationAdvisorLookListKt;->c(Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionAssetUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    check-cast v13, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    move-object/from16 v2, p2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->b:Ljava/lang/String;

    new-instance v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v6, v5}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v13, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMoreVariationClickedEvent;

    invoke-direct {v5, v4, v2}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMoreVariationClickedEvent;-><init>(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;)V

    iget-object v2, v13, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v4, v13, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v6, v13, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    invoke-static {v5, v2, v4, v6}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Variations;

    invoke-direct {v2, v1, v10}, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Variations;-><init>(Ljava/util/List;Z)V

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    check-cast v0, Landroidx/compose/ui/Modifier;

    check-cast v13, Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassUiModel;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-static {v0, v13, v1, v2}, Lcom/vuitton/android/presentation/screen/booking/pass/components/PassViewKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/booking/pass/models/BookingPassUiModel;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    check-cast v0, Lkotlin/jvm/internal/Ref$FloatRef;

    check-cast v13, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v2, Landroidx/compose/foundation/pager/PagerStateKt;->a:F

    iget v2, v0, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    sub-float/2addr v1, v2

    iget-object v2, v13, Landroidx/compose/foundation/pager/PagerScrollScopeKt$LazyLayoutScrollScope$1;->a:Landroidx/compose/foundation/gestures/ScrollScope;

    invoke-interface {v2, v1}, Landroidx/compose/foundation/gestures/ScrollScope;->e(F)F

    move-result v1

    iget v2, v0, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    add-float/2addr v2, v1

    iput v2, v0, Lkotlin/jvm/internal/Ref$FloatRef;->b:F

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    check-cast v0, Landroidx/compose/ui/Modifier;

    check-cast v13, Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-static {v0, v13, v1, v2}, Lcom/vuitton/android/presentation/screen/cart/components/packaging/PackagingScreenKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;

    check-cast v13, Landroid/content/Context;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v22

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v15, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->a:Ljava/lang/String;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->d:Ljava/lang/String;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->b:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-eqz v4, :cond_9

    iget-object v4, v4, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->b:Ljava/lang/String;

    goto :goto_2

    :cond_9
    move-object v4, v8

    :goto_2
    if-nez v4, :cond_a

    const-string v4, ""

    :cond_a
    move-object/from16 v17, v4

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget v4, v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->g:I

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    new-instance v14, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v3

    move/from16 v19, v4

    move-object/from16 v18, v5

    invoke-direct/range {v14 .. v21}, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;ILjava/time/LocalDateTime;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v14}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;->x6(Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromPlp;

    invoke-direct {v3, v1, v8, v11, v8}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations$PageFromPlp;-><init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3, v13}, Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/plp/activities/PLPDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->d:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->d:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;

    if-eqz v1, :cond_b

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->c:Ljava/lang/Double;

    move-object/from16 v21, v4

    goto :goto_3

    :cond_b
    move-object/from16 v21, v8

    :goto_3
    if-eqz v1, :cond_c

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->d:Ljava/lang/String;

    :cond_c
    move-object/from16 v16, v8

    new-instance v14, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;

    const/16 v25, 0x300

    const/16 v26, 0x0

    const-string v15, "search"

    const-string v17, "search_results"

    const-string v18, "Search results"

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-direct/range {v14 .. v26}, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v14}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->j(Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    check-cast v13, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;

    move-object/from16 v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v11, :cond_d

    move v2, v12

    goto :goto_4

    :cond_d
    move v2, v10

    :goto_4
    and-int/2addr v1, v12

    invoke-interface {v5, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "PLPStoreModeScreen$lambda$1$0$2"

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v3, v10}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v5, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v9

    if-eqz v9, :cond_12

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v5, v7}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_e
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->o()V

    :goto_5
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v3, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v6, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->p:I

    invoke-static {v1, v5, v10}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v14

    const v1, 0x7f14036c

    invoke-static {v5, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v15

    sget-object v1, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeScreenKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v12, :cond_10

    if-ne v0, v11, :cond_f

    const v0, 0x545346ff

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    :goto_6
    move-wide/from16 v17, v0

    goto :goto_7

    :cond_f
    const v0, 0x54532aee

    invoke-static {v5, v0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_10
    const v0, 0x54533865

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_6

    :goto_7
    const/16 v20, 0x8

    const/16 v21, 0x4

    const/16 v16, 0x0

    move-object/from16 v19, v5

    invoke-static/range {v14 .. v21}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    if-eqz v13, :cond_11

    iget-boolean v0, v13, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->e:Z

    if-ne v0, v12, :cond_11

    const v0, 0x36184628

    invoke-static {v0, v5, v2}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->d:Landroidx/compose/ui/BiasAlignment;

    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v2, v0, v1}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v5}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v0

    iget v2, v0, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->h:F

    const/4 v6, 0x0

    const/4 v7, 0x4

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/designkit/components/components/LVNotificationIconKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_8

    :cond_11
    const v0, 0x361ca111

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    :goto_8
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_9

    :cond_12
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v8

    :cond_13
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_9
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    check-cast v13, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-static {v0, v13, v1, v2}, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeLeaveScreenKt;->a(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    check-cast v0, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    check-cast v13, Lcom/vuitton/android/presentation/utils/UrlFactory;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-static {v0, v13, v1, v2}, Lcom/vuitton/android/presentation/screen/plp/components/composables/brandcontent/PLPProductFullscreenComposableKt;->a(Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/utils/UrlFactory;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    check-cast v0, Landroidx/compose/ui/Modifier;

    check-cast v13, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-static {v0, v13, v1, v2}, Lcom/vuitton/android/presentation/screen/plp/components/composables/brandcontent/PLPCuratedTextComposableKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$CuratedText;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    check-cast v0, Lkotlin/jvm/functions/Function3;

    check-cast v13, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;

    move-object/from16 v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v13}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPCategoryViewModel;->C2()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-interface {v3}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$NativeShareRequestedEvent;

    invoke-direct {v0, v2}, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$NativeShareRequestedEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v13, v0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->O0(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModel;

    check-cast v13, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-object/from16 v2, p2

    check-cast v2, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$AddAppointmentToCalendarEvent;

    invoke-direct {v3, v2}, Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel$AddAppointmentToCalendarEvent;-><init>(Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;)V

    invoke-interface {v0, v3}, Lcom/vuitton/android/presentation/screen/osa/list/OsaListViewModel;->o(Lcom/vuitton/android/presentation/screen/osa/tracking/OsaTrackingUiModel;)V

    invoke-interface {v13, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;

    move-object/from16 v22, v13

    check-cast v22, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v5, v2, 0x3

    if-eq v5, v11, :cond_14

    move v5, v12

    goto :goto_a

    :cond_14
    move v5, v10

    :goto_a
    and-int/2addr v2, v12

    invoke-interface {v1, v2, v5}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v2, "OsaListScreen$lambda$5"

    invoke-static {v2, v4}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-static {v5, v6, v7, v3}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v5, v10}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v1, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v10

    if-eqz v10, :cond_16

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    :cond_15
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->o()V

    :goto_b
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v5, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v7, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v3, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    const v5, 0x7f140f74

    invoke-static {v1, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v21

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/osa/list/models/OsaListViewState;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v24

    invoke-static {v2, v4}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v0, v4, v2, v5, v6}, Landroidx/compose/foundation/layout/PaddingKt;->l(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const-string v2, "osa_bookAppointment_button"

    invoke-static {v0, v2}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    const/16 v25, 0x0

    const/16 v15, 0x178

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v1

    move-object/from16 v18, v3

    invoke-static/range {v14 .. v25}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_c

    :cond_16
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v8

    :cond_17
    move-object/from16 v16, v1

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_c
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    check-cast v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;

    check-cast v13, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-static {v0, v13, v1, v2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormScreenKt;->a(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/models/OsaContactFormViewState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_12
    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/ConfirmReturnResponseUiModel;

    check-cast v13, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-static {v0, v13, v1, v2}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt;->j(Lcom/vuitton/android/presentation/screen/orders/models/ConfirmReturnResponseUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;

    check-cast v13, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-static {v0, v13, v1, v2}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt;->k(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeBottomSheet$SizeGuide$SizeGuideRequest;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel;

    check-cast v13, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-static {v0, v13, v1, v2}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt;->c(Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    check-cast v13, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/lit8 v6, v5, 0x3

    if-eq v6, v11, :cond_18

    move v6, v12

    goto :goto_d

    :cond_18
    move v6, v10

    :goto_d
    and-int/2addr v5, v12

    invoke-interface {v1, v5, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_1f

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v6, "OrderExchangeVariantSelectionScreen$lambda$1"

    invoke-direct {v5, v6}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x6

    invoke-static {v5, v1, v11, v9}, Lcom/vuitton/android/designkit/ui/theme/ShadowKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v9

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-static {v5, v14, v15, v3}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v5, v10}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v1, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v15

    if-eqz v15, :cond_1e

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v15

    if-eqz v15, :cond_19

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_e

    :cond_19
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->o()V

    :goto_e
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v5, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v11, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v5, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v3, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    invoke-static {v6, v4}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v4, v5, v6}, Landroidx/compose/foundation/layout/PaddingKt;->j(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v17

    const v4, 0x7f140635

    invoke-static {v1, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v21

    iget-object v4, v13, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->k:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    iget-object v4, v13, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->k:Ljava/util/List;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    if-eqz v4, :cond_1a

    iget-object v8, v4, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;->e:Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    :cond_1a
    if-nez v8, :cond_1b

    move/from16 v24, v12

    goto :goto_f

    :cond_1b
    move/from16 v24, v10

    :goto_f
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_1c

    if-ne v5, v7, :cond_1d

    :cond_1c
    new-instance v5, Lrh0;

    invoke-direct {v5, v0, v13, v2}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1d
    move-object/from16 v22, v5

    check-cast v22, Lkotlin/jvm/functions/Function0;

    const/4 v14, 0x0

    const/16 v15, 0x178

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v16, v1

    move-object/from16 v18, v3

    invoke-static/range {v14 .. v25}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_10

    :cond_1e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v8

    :cond_1f
    move-object/from16 v16, v1

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_16
    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

    move-object/from16 v20, v13

    check-cast v20, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit8 v3, v2, 0x3

    if-eq v3, v11, :cond_20

    move v10, v12

    :cond_20
    and-int/2addr v2, v12

    invoke-interface {v1, v2, v10}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_22

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v2, 0x7f140d93

    invoke-static {v1, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->b:Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    if-eqz v0, :cond_21

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->e:Ljava/lang/String;

    :cond_21
    invoke-static {v2, v8}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sget-object v15, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->INVERT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    const/16 v27, 0x0

    const/16 v28, 0xfb5

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x30

    move-object/from16 v25, v1

    invoke-static/range {v14 .. v28}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVStandardTopBarKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarNavIcon;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function4;Landroidx/compose/foundation/layout/WindowInsets;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;III)V

    goto :goto_11

    :cond_22
    move-object/from16 v25, v1

    invoke-interface/range {v25 .. v25}, Landroidx/compose/runtime/Composer;->D()V

    :goto_11
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    move-object v0, v13

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

    move-object/from16 v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0x3

    if-eq v4, v11, :cond_23

    move v10, v12

    :cond_23
    and-int/2addr v3, v12

    invoke-interface {v2, v3, v10}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_27

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v4, "OrderDetailBottomSheetContent_jIwJxvA$lambda$0$0$3$0$0"

    invoke-direct {v3, v4}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;->PRICE:Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->p:Landroidx/compose/ui/BiasAlignment$Horizontal;

    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    const/16 v6, 0x30

    invoke-static {v5, v4, v2, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v2, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v9

    if-eqz v9, :cond_26

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v8

    if-eqz v8, :cond_24

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_12

    :cond_24
    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->o()V

    :goto_12
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v4, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v22, 0x0

    const v23, 0x1fffa

    move-object/from16 v32, v2

    const/4 v2, 0x0

    move-object/from16 v19, v3

    move-wide v3, v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v32

    invoke-static/range {v1 .. v23}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v1, v20

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->k:Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;->c:Z

    if-eqz v0, :cond_25

    const v0, -0xa631686

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    const v0, 0x7f140a7a

    invoke-static {v1, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v34, 0x0

    const v35, 0x1fffa

    const/4 v14, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v33, 0x0

    move-object/from16 v31, v0

    move-object/from16 v32, v1

    move-wide v15, v2

    invoke-static/range {v13 .. v35}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_13

    :cond_25
    const v0, -0xa5dcec1

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    :goto_13
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_14

    :cond_26
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v8

    :cond_27
    move-object v1, v2

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_18
    check-cast v0, Ljava/lang/String;

    check-cast v13, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-static {v0, v13, v1, v2}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->m(Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_19
    check-cast v0, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuViewModel;

    check-cast v13, Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-static {v0, v13, v1, v2}, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/OptOutPrivacyMenuComposableKt;->a(Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/OptOutPrivacyMenuViewModel;Lcom/vuitton/android/presentation/screen/webview/WebViewRouter;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1a
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateHolder;

    check-cast v13, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-static {v0, v13, v1, v2}, Landroidx/navigation/compose/NavBackStackEntryProviderKt;->b(Landroidx/compose/runtime/saveable/SaveableStateHolder;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1b
    check-cast v0, Landroidx/compose/ui/Modifier;

    check-cast v13, Lcom/vuitton/android/presentation/compose/components/LVNotificationData;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    invoke-static {v0, v13, v1, v2}, Lcom/vuitton/android/presentation/screen/cart/components/sections/NativeCartNotificationKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/compose/components/LVNotificationData;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1c
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v13, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-object/from16 v1, p2

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    if-eqz v3, :cond_2a

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3$WhenMappings;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    if-ne v3, v11, :cond_2a

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->g:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object v5, v14, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v6, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$loadDynamicProfileForm$3$WhenMappings;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-ne v5, v12, :cond_28

    new-instance v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;

    new-instance v6, Lvd0;

    const/4 v7, 0x4

    invoke-direct {v6, v13, v7}, Lvd0;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;I)V

    new-instance v7, Lx60;

    invoke-direct {v7, v13, v2}, Lx60;-><init>(Ljava/lang/Object;I)V

    new-instance v8, Lew;

    const/16 v9, 0x13

    invoke-direct {v8, v9}, Lew;-><init>(I)V

    invoke-direct {v5, v6, v7, v8}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const/16 v23, 0x0

    const/16 v24, 0x3de

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v20, v5

    invoke-static/range {v14 .. v24}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;ZLcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;Ljava/lang/String;ZZI)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v14

    :cond_28
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_29
    invoke-static {v1, v4}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;Ljava/util/AbstractList;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldPhoneUiModel;

    move-result-object v1

    :cond_2a
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

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
