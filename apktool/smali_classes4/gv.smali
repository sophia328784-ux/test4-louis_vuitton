.class public final synthetic Lgv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lgv;->b:I

    iput-object p1, p0, Lgv;->c:Ljava/lang/Object;

    iput-object p2, p0, Lgv;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    .line 10
    iput p3, p0, Lgv;->b:I

    iput-object p1, p0, Lgv;->d:Ljava/lang/Object;

    iput-object p2, p0, Lgv;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lgv;->b:I

    const v2, 0x2fd4df92

    const-string v3, ", "

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, v0, Lgv;->d:Ljava/lang/Object;

    iget-object v0, v0, Lgv;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Landroid/content/Context;

    check-cast v8, Ljava/time/Instant;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v8}, Lcom/vuitton/android/presentation/utils/AccessibilityUtils;->b(Landroid/content/Context;Ljava/time/Instant;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-interface {v9}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationLink;->d:F

    invoke-interface {v9, v0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v0

    sub-float/2addr v2, v0

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/graphics/Color;

    iget-wide v10, v0, Landroidx/compose/ui/graphics/Color;->a:J

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v4, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v12, v0

    shl-long/2addr v4, v3

    and-long/2addr v12, v6

    or-long/2addr v12, v4

    sget-object v0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v4, v2

    shl-long/2addr v0, v3

    and-long v2, v4, v6

    or-long v14, v0, v2

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {v9, v0}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v16

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/Stroke;->f:Landroidx/compose/ui/graphics/drawscope/Stroke$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawScope;->a0:Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v19, Landroidx/compose/ui/graphics/drawscope/DrawScope$Companion;->b:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-interface/range {v9 .. v19}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->b0(JJJFILandroidx/compose/ui/graphics/PathEffect;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBluetoothDeviceAdapter;

    check-cast v8, Lcom/lp/ble/entity/LPBluetoothDevice;

    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBluetoothDeviceAdapter$ViewHolder;->d:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBluetoothDeviceAdapter;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v0, Landroid/view/View;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lx40;

    invoke-direct {v1, v0, v8}, Lx40;-><init>(Landroid/view/View;Landroidx/compose/runtime/MutableState;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v2, Lcom/vuitton/android/presentation/compose/KeyboardStateKt$keyboardAsState$lambda$1$0$$inlined$onDispose$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/presentation/compose/KeyboardStateKt$keyboardAsState$lambda$1$0$$inlined$onDispose$1;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object v2

    :pswitch_3
    check-cast v0, Landroidx/compose/animation/core/InfiniteTransition;

    check-cast v8, Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object v1, v0, Landroidx/compose/animation/core/InfiniteTransition;->a:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/collection/MutableVector;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Landroidx/compose/animation/core/InfiniteTransition;->b:Landroidx/compose/runtime/MutableState;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    new-instance v1, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$lambda$2$0$$inlined$onDispose$1;

    invoke-direct {v1, v0, v8}, Landroidx/compose/animation/core/InfiniteTransitionKt$animateValue$lambda$2$0$$inlined$onDispose$1;-><init>(Landroidx/compose/animation/core/InfiniteTransition;Landroidx/compose/animation/core/InfiniteTransition$TransitionAnimationState;)V

    return-object v1

    :pswitch_4
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v8, Lcom/vuitton/android/presentation/screen/immersivearticle/models/VideoCtaArticleSectionUiModel;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v8, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSlideUiModel;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    iget-object v1, v8, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSlideUiModel;->e:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;

    check-cast v8, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;

    if-eqz v0, :cond_2

    iget-object v2, v8, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;->IMAGE_ONLY:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;

    if-eq v2, v6, :cond_0

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v4

    :cond_1
    const-string v3, " "

    invoke-static {v0, v3, v2}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_2
    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v7

    :goto_1
    invoke-static {v1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v5}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    check-cast v0, Lkotlinx/coroutines/android/HandlerContext;

    check-cast v8, Ljr;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    iget-object v0, v0, Lkotlinx/coroutines/android/HandlerContext;->b:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    check-cast v8, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Lcom/google/android/gms/location/LocationSettingsResponse;

    invoke-static {v8, v0, v1}, Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;->b(Lcom/sightcall/gpslocation/datasource/GpsGmsDatasourceImpl;Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/location/LocationSettingsResponse;)Lkotlin/Unit;

    move-result-object v0

    return-object v0

    :pswitch_a
    check-cast v8, Lkotlinx/coroutines/flow/StateFlow;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v2, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    check-cast v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-ne v2, v0, :cond_5

    iput-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    :cond_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    check-cast v8, Landroidx/compose/foundation/interaction/FocusInteraction;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget-object v1, Landroidx/compose/foundation/FocusableNode;->x:Landroidx/compose/foundation/FocusableNode$TraverseKey;

    invoke-interface {v0, v8}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->b(Landroidx/compose/foundation/interaction/Interaction;)Z

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    check-cast v8, Lcom/vuitton/android/presentation/screen/pdp/models/FindInStoreViewState;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v8, Lcom/vuitton/android/presentation/screen/pdp/models/FindInStoreViewState;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreSearchBottomSheetKt$FindInStoreSearchBottomSheet$lambda$5$2$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v4, v2}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreSearchBottomSheetKt$FindInStoreSearchBottomSheet$lambda$5$2$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreSearchBottomSheetKt$FindInStoreSearchBottomSheet$lambda$5$2$0$$inlined$itemsIndexed$default$3;

    invoke-direct {v5, v2, v0, v8}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreSearchBottomSheetKt$FindInStoreSearchBottomSheet$lambda$5$2$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/pdp/models/FindInStoreViewState;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, 0x799532c4

    invoke-direct {v0, v2, v6, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v1, v3, v7, v4, v0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;

    check-cast v8, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;->m1(Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/PlaceAutocompleteUiModel;)V

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;->b1()V

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->d:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState$Companion;

    new-instance v0, Lk40;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Lk40;-><init>(I)V

    invoke-virtual {v8, v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->b(Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;

    check-cast v8, Ljava/lang/String;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ChangeAvailabilityFilterEvent;

    invoke-direct {v2, v8, v1, v7}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ChangeAvailabilityFilterEvent;-><init>(Ljava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;->s6(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    check-cast v0, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v10, p1

    check-cast v10, Ljava/lang/String;

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->s:Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->H()Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayViewModel;

    move-result-object v1

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FilterOverlayViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FilterOverlayViewState;->a:Ljava/util/Map;

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->b:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersUiModel;->c:Ljava/util/List;

    if-eqz v2, :cond_8

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->c:Ljava/lang/String;

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v7, v3

    :cond_7
    check-cast v7, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

    if-eqz v7, :cond_8

    iget-boolean v5, v7, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->d:Z

    :cond_8
    new-instance v2, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;

    invoke-direct {v2, v6, v5, v10}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel$HitOnBooleanFilterEvent;-><init>(ZZLjava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayViewModel;->l0(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersTrackingUiModel;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->H()Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayViewModel;

    move-result-object v1

    new-instance v9, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;->I()Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;

    move-result-object v12

    sget-object v14, Lcom/vuitton/android/presentation/screen/filter/model/FilterType;->BOOLEAN:Lcom/vuitton/android/presentation/screen/filter/model/FilterType;

    const/16 v15, 0x8

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v9 .. v16}, Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;Ljava/util/UUID;Lcom/vuitton/android/presentation/screen/filter/model/FilterType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v9}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayViewModel;->Y0(Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v8, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    move-object/from16 v1, p1

    check-cast v1, Ljava/time/Instant;

    new-instance v2, Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;

    check-cast v8, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    iget-object v3, v8, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->a:Ljava/lang/String;

    iget-object v5, v8, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;

    if-eqz v5, :cond_9

    iget-object v5, v5, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;->a:Ljava/lang/String;

    goto :goto_2

    :cond_9
    move-object v5, v7

    :goto_2
    if-nez v5, :cond_a

    goto :goto_3

    :cond_a
    move-object v4, v5

    :goto_3
    if-eqz v1, :cond_b

    invoke-direct {v2, v3, v4, v1}, Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;)V

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_4

    :cond_b
    const-string v0, "Required value was null."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    :goto_4
    return-object v7

    :pswitch_12
    check-cast v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    check-cast v8, Landroid/content/Context;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->g:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CardUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;

    instance-of v4, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Event;

    if-eqz v4, :cond_f

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Event;

    iget-object v2, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Event;->a:Ljava/time/Instant;

    if-eqz v2, :cond_c

    invoke-static {v8, v2}, Lcom/vuitton/android/presentation/utils/AccessibilityUtils;->b(Landroid/content/Context;Ljava/time/Instant;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_c
    move-object v2, v7

    :goto_5
    if-eqz v0, :cond_d

    iget-object v3, v0, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;->b:Ljava/lang/String;

    goto :goto_6

    :cond_d
    move-object v3, v7

    :goto_6
    if-eqz v0, :cond_e

    iget-object v7, v0, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;->a:Ljava/lang/String;

    :cond_e
    filled-new-array {v3, v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const-string v7, ", "

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_f
    instance-of v4, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    if-eqz v4, :cond_14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    iget-object v2, v2, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;->a:Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    iget-object v6, v2, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->b:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    sget-object v9, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;->LIVE:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    if-ne v6, v9, :cond_10

    const v6, 0x7f140a03

    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    if-eqz v0, :cond_11

    iget-object v6, v0, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;->b:Ljava/lang/String;

    goto :goto_7

    :cond_11
    move-object v6, v7

    :goto_7
    if-eqz v0, :cond_12

    iget-object v7, v0, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;->a:Ljava/lang/String;

    :cond_12
    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v13, 0x0

    const/16 v14, 0x3e

    const-string v10, ", "

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->b:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    sget-object v6, Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;->LIVE_UPCOMING:Lcom/vuitton/android/presentation/screen/livevideo/models/LiveVideoStatusUiModel;

    if-ne v0, v6, :cond_13

    iget-object v0, v2, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->c:Ljava/time/Instant;

    if-eqz v0, :cond_13

    invoke-static {v8, v0}, Lcom/vuitton/android/presentation/utils/AccessibilityUtils;->b(Landroid/content/Context;Ljava/time/Instant;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_13

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_14
    if-eqz v0, :cond_15

    iget-object v2, v0, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;->b:Ljava/lang/String;

    goto :goto_8

    :cond_15
    move-object v2, v7

    :goto_8
    if-eqz v0, :cond_16

    iget-object v7, v0, Lcom/vuitton/android/presentation/common/editorial/models/TitlesUiModel;->a:Ljava/lang/String;

    :cond_16
    filled-new-array {v2, v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const-string v7, ", "

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v5}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    check-cast v0, Lkotlin/jvm/functions/Function2;

    check-cast v8, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;

    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;->ib(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    check-cast v0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    check-cast v8, Landroid/content/Context;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/common/ScreenOrigin;->FEED:Lcom/vuitton/android/presentation/common/ScreenOrigin;

    invoke-virtual {v0, v2, v1}, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;->a(Lcom/vuitton/android/presentation/common/ScreenOrigin;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    if-eqz v0, :cond_17

    sget-object v1, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToAICompanionPage;->a:Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToAICompanionPage;

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_16
    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;->W1(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;

    check-cast v8, Ljava/util/List;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqView;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;->e:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-interface {v1, v0, v8}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqView;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/util/List;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_18
    check-cast v0, Landroid/view/View;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    new-instance v1, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1;

    invoke-direct {v1, v0, v8}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$SoftKeyboardListener$lambda$5$lambda$4$$inlined$onDispose$1;

    invoke-direct {v0, v1}, Landroidx/compose/material3/ExposedDropdownMenu_androidKt$SoftKeyboardListener$lambda$5$lambda$4$$inlined$onDispose$1;-><init>(Landroidx/compose/material3/ExposedDropdownMenu_androidKt$SoftKeyboardListener$1$1$listener$1;)V

    return-object v0

    :pswitch_19
    check-cast v8, Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesViewState;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v8, Lcom/vuitton/android/presentation/screen/exclusivesales/models/ExclusiveSalesViewState;->b:Ljava/util/List;

    sget-object v4, Lcom/vuitton/android/presentation/screen/exclusivesales/components/ExclusiveSalesComposableKt$ExclusiveSalesScreen$lambda$2$0$0$$inlined$items$default$1;->b:Lcom/vuitton/android/presentation/screen/exclusivesales/components/ExclusiveSalesComposableKt$ExclusiveSalesScreen$lambda$2$0$0$$inlined$items$default$1;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-instance v8, Lcom/vuitton/android/presentation/screen/exclusivesales/components/ExclusiveSalesComposableKt$ExclusiveSalesScreen$lambda$2$0$0$$inlined$items$default$3;

    invoke-direct {v8, v4, v3}, Lcom/vuitton/android/presentation/screen/exclusivesales/components/ExclusiveSalesComposableKt$ExclusiveSalesScreen$lambda$2$0$0$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/exclusivesales/components/ExclusiveSalesComposableKt$ExclusiveSalesScreen$lambda$2$0$0$$inlined$items$default$4;

    invoke-direct {v4, v3, v0}, Lcom/vuitton/android/presentation/screen/exclusivesales/components/ExclusiveSalesComposableKt$ExclusiveSalesScreen$lambda$2$0$0$$inlined$items$default$4;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {v0, v2, v6, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v1, v5, v7, v8, v0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1a
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v8}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1b
    check-cast v8, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v8

    check-cast v3, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState$Success;->a:Ljava/util/List;

    new-instance v4, Liv;

    const/4 v5, 0x7

    invoke-direct {v4, v5}, Liv;-><init>(I)V

    sget-object v5, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarScreenKt$EditAvatarScreen$lambda$2$0$0$$inlined$items$default$1;->b:Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarScreenKt$EditAvatarScreen$lambda$2$0$0$$inlined$items$default$1;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-instance v9, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarScreenKt$EditAvatarScreen$lambda$2$0$0$$inlined$items$default$2;

    invoke-direct {v9, v4, v3}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarScreenKt$EditAvatarScreen$lambda$2$0$0$$inlined$items$default$2;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarScreenKt$EditAvatarScreen$lambda$2$0$0$$inlined$items$default$3;

    invoke-direct {v4, v5, v3}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarScreenKt$EditAvatarScreen$lambda$2$0$0$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarScreenKt$EditAvatarScreen$lambda$2$0$0$$inlined$items$default$4;

    invoke-direct {v5, v3, v8, v0}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarScreenKt$EditAvatarScreen$lambda$2$0$0$$inlined$items$default$4;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/editavatar/models/EditAvatarViewState;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-direct {v0, v2, v6, v5}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v1, v7, v9, v4, v0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1c
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    check-cast v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object v1, v8, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

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
