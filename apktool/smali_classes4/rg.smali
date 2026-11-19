.class public final synthetic Lrg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;ZII)V
    .locals 0

    .line 18
    iput p5, p0, Lrg;->b:I

    iput-object p1, p0, Lrg;->e:Ljava/lang/Object;

    iput-object p2, p0, Lrg;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lrg;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    .line 14
    iput p4, p0, Lrg;->b:I

    iput-object p1, p0, Lrg;->e:Ljava/lang/Object;

    iput-object p2, p0, Lrg;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lrg;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLkotlin/Function;II)V
    .locals 0

    .line 15
    iput p5, p0, Lrg;->b:I

    iput-object p1, p0, Lrg;->e:Ljava/lang/Object;

    iput-boolean p2, p0, Lrg;->c:Z

    iput-object p3, p0, Lrg;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 16
    iput p4, p0, Lrg;->b:I

    iput-boolean p1, p0, Lrg;->c:Z

    iput-object p2, p0, Lrg;->e:Ljava/lang/Object;

    iput-object p3, p0, Lrg;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Object;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 17
    iput p5, p0, Lrg;->b:I

    iput-boolean p1, p0, Lrg;->c:Z

    iput-object p2, p0, Lrg;->e:Ljava/lang/Object;

    iput-object p3, p0, Lrg;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;I)V
    .locals 0

    const/16 p4, 0x9

    iput p4, p0, Lrg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lrg;->c:Z

    iput-object p2, p0, Lrg;->d:Ljava/lang/Object;

    iput-object p3, p0, Lrg;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lrg;->b:I

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-boolean v6, v0, Lrg;->c:Z

    const/4 v7, 0x1

    iget-object v8, v0, Lrg;->d:Ljava/lang/Object;

    iget-object v9, v0, Lrg;->e:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v9, Landroidx/compose/ui/Modifier;

    check-cast v8, Lcom/vuitton/android/presentation/screen/pdp/components/variations/VariationAvailabilityIconOrientation;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v9, v8, v6, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/components/variations/VariationAvailabilityKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/components/variations/VariationAvailabilityIconOrientation;ZLandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v9, Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v9, v6, v8, v0, v1}, Lcom/vuitton/android/presentation/screen/cart/components/samples/PerfumeSamplesComposableKt;->a(Lcom/vuitton/android/presentation/screen/cart/NativeCartViewModel;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v9, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object/from16 v0, p1

    check-cast v0, Ljava/util/List;

    move-object/from16 v1, p2

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->b:Ljava/lang/String;

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v5, v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v9, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMoreVariationClickedEvent;

    invoke-direct {v3, v4, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel$OnMoreVariationClickedEvent;-><init>(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;)V

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->b:Ljava/lang/String;

    iget-object v4, v9, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;

    iget-object v5, v9, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;->d:Ljava/lang/String;

    invoke-static {v3, v1, v4, v5}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackingUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Variations;

    invoke-direct {v1, v0, v6}, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$Variations;-><init>(Ljava/util/List;Z)V

    invoke-interface {v8, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v8, Lkotlin/jvm/functions/Function0;

    check-cast v9, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v6, v8, v9, v0, v1}, Lcom/vuitton/android/presentation/screen/cart/components/packaging/PackagingComposableKt;->a(ZLkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModel;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    check-cast v9, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    move-object v15, v8

    check-cast v15, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v4, :cond_1

    move v3, v7

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    and-int/2addr v1, v7

    invoke-interface {v0, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-nez v6, :cond_5

    const v1, 0x78f7335f

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v3, "OrderReturnOrExchangeSelectionScreen$lambda$1"

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v3, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->o()V

    :goto_2
    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v5, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;->i:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;

    iget-boolean v1, v1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;->c:Z

    if-eqz v1, :cond_3

    const v1, 0x7f1409b3

    goto :goto_3

    :cond_3
    const v1, 0x7f141106

    :goto_3
    invoke-static {v0, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x0

    const/16 v18, 0x1d

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v16, v0

    invoke-static/range {v10 .. v18}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->r()V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_4
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v2

    :cond_5
    const v1, 0x7902e33c

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_6
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    check-cast v9, Lkotlin/jvm/functions/Function1;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v6, v9, v8, v0, v1}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt;->e(ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    check-cast v9, Landroidx/compose/ui/Modifier;

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v9, v8, v6, v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeRegisterPasswordCheckKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    check-cast v9, Landroidx/compose/runtime/MutableState;

    check-cast v8, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;

    move-object/from16 v14, p1

    check-cast v14, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->q:Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity$Companion;

    and-int/lit8 v2, v1, 0x3

    if-eq v2, v4, :cond_7

    move v5, v7

    :cond_7
    and-int/2addr v1, v7

    invoke-interface {v14, v1, v5}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoViewState;->d:Landroidx/media3/exoplayer/ExoPlayer;

    if-nez v11, :cond_8

    const v0, 0x2d5b2258

    invoke-interface {v14, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_8
    const v1, 0x2d5b2259

    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoActivity;->B()Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;

    move-result-object v10

    invoke-interface {v14, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v14, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_9

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v1, :cond_a

    :cond_9
    new-instance v2, Lt30;

    invoke-direct {v2, v8, v9, v3}, Lt30;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v14, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v13, v2

    check-cast v13, Lkotlin/jvm/functions/Function0;

    const/4 v15, 0x0

    iget-boolean v12, v0, Lrg;->c:Z

    invoke-static/range {v10 .. v15}, Lcom/vuitton/android/presentation/screen/livevideo/component/LiveVideoComposableKt;->a(Lcom/vuitton/android/presentation/screen/livevideo/LiveVideoViewModel;Landroidx/media3/exoplayer/ExoPlayer;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_b
    invoke-interface {v14}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    check-cast v9, Landroidx/compose/ui/Modifier;

    check-cast v8, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoArticleSectionUiModel;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v9, v8, v6, v0, v1}, Lcom/vuitton/android/presentation/screen/immersivearticle/components/cards/ImmersiveArticleVideoViewKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoArticleSectionUiModel;ZLandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    check-cast v9, Landroidx/compose/ui/Modifier;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v9, v6, v8, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/components/findinstore/FindInStoreHeaderKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    check-cast v9, Landroidx/compose/ui/Modifier;

    check-cast v8, Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v9, v8, v6, v0, v1}, Lcom/vuitton/android/presentation/screen/catalog/components/CatalogCategoryScreenKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/model/common/AssetUiModel;ZLandroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    check-cast v9, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    invoke-static {v6, v9, v8, v0, v1}, Lcom/vuitton/android/presentation/screen/storemode/filters/components/BooleanFilterComponentKt;->a(ZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    check-cast v9, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    move-object v15, v8

    check-cast v15, Lkotlin/jvm/functions/Function0;

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v3, v1, 0x3

    if-eq v3, v4, :cond_c

    move v3, v7

    goto :goto_6

    :cond_c
    move v3, v5

    :goto_6
    and-int/2addr v1, v7

    invoke-interface {v12, v1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v9, :cond_d

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    if-eqz v1, :cond_d

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->a:Ljava/util/List;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    :cond_d
    move v10, v5

    if-eqz v9, :cond_f

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    if-eqz v1, :cond_f

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->d:Ljava/lang/String;

    if-nez v1, :cond_e

    goto :goto_8

    :cond_e
    :goto_7
    move-object v14, v1

    goto :goto_9

    :cond_f
    :goto_8
    if-eqz v9, :cond_10

    iget-object v1, v9, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    if-eqz v1, :cond_10

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->c:Ljava/lang/String;

    :cond_10
    if-nez v2, :cond_11

    const-string v1, ""

    goto :goto_7

    :cond_11
    move-object v14, v2

    :goto_9
    const/4 v11, 0x0

    const/4 v13, 0x0

    iget-boolean v0, v0, Lrg;->c:Z

    move/from16 v16, v0

    invoke-static/range {v10 .. v16}, Lcom/vuitton/android/presentation/screen/booking/summary/components/SummaryStickyBottomViewKt;->a(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)V

    goto :goto_a

    :cond_12
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
