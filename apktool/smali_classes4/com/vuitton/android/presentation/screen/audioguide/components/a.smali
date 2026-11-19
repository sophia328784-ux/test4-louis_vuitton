.class public final synthetic Lcom/vuitton/android/presentation/screen/audioguide/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/a;->b:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/a;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/a;->d:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/2addr v1, v3

    invoke-interface {v9, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1f

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

    sget-object v1, Lcom/vuitton/android/presentation/tracking/AppsFlyerTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Landroid/content/Context;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/a;->b:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    invoke-interface {v15}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    const/4 v12, 0x0

    const/4 v2, 0x7

    invoke-static {v1, v12, v9, v4, v2}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-interface {v15}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;->cb()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-static {v1, v12, v9, v4, v2}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v16

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v6, :cond_1

    new-instance v1, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v1}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Landroidx/compose/material3/SnackbarHostState;

    invoke-interface {v15}, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;->e()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v7

    invoke-static {v7, v12, v9, v4, v2}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v17

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_2

    new-instance v2, Lu5;

    const/16 v7, 0x8

    invoke-direct {v2, v7}, Lu5;-><init>(I)V

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/16 v7, 0x30

    const/4 v8, 0x5

    invoke-static {v7, v8, v9, v2}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v27

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/common/AccessibilityExtKt;->a(Landroidx/compose/runtime/Composer;)Z

    move-result v2

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;

    if-nez v7, :cond_3

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;

    instance-of v7, v7, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    if-eqz v7, :cond_3

    move v7, v3

    goto :goto_1

    :cond_3
    move v7, v4

    :goto_1
    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_4

    if-ne v10, v6, :cond_5

    :cond_4
    new-instance v10, Lia;

    invoke-direct {v10, v15, v5}, Lia;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;I)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-static {v7, v10, v9, v4, v4}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;

    instance-of v7, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Loading;

    if-eqz v7, :cond_6

    const v1, 0x19fd6835

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v9, v4}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideLoadingScreenKt;->a(Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    move-object/from16 p2, v13

    move-object/from16 v12, v17

    move-object v13, v6

    goto/16 :goto_3

    :cond_6
    instance-of v7, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Error;

    if-eqz v7, :cond_9

    const v2, 0x19fd7194

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_7

    if-ne v3, v6, :cond_8

    :cond_7
    new-instance v20, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideComposableKt$AudioGuideComposable$1$2$1;

    const-string v25, "initAudioGuide()V"

    const/16 v26, 0x0

    const/16 v21, 0x0

    const-class v23, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    const-string v24, "initAudioGuide"

    move-object/from16 v22, v15

    invoke-direct/range {v20 .. v26}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v3, v20

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v3, Lkotlin/reflect/KFunction;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v2, 0x6

    invoke-static {v1, v3, v9, v2}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideErrorScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_9
    instance-of v1, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    if-eqz v1, :cond_1e

    const v1, 0x25b46c9e

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_a

    if-ne v7, v6, :cond_b

    :cond_a
    new-instance v7, Lia;

    const/4 v5, 0x3

    invoke-direct {v7, v15, v5}, Lia;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;I)V

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_c

    if-ne v8, v6, :cond_d

    :cond_c
    new-instance v20, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideComposableKt$AudioGuideComposable$1$4$1;

    const-string v25, "onLanguageSelected(Ljava/lang/String;)V"

    const/16 v26, 0x0

    const/16 v21, 0x1

    const-class v23, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    const-string v24, "onLanguageSelected"

    move-object/from16 v22, v15

    invoke-direct/range {v20 .. v26}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v8, v20

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v8, Lkotlin/reflect/KFunction;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v5, v10

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v5, :cond_e

    if-ne v10, v6, :cond_f

    :cond_e
    new-instance v10, Lja;

    invoke-direct {v10, v1, v15, v4}, Lja;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;I)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result v18

    or-int v5, v5, v18

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v5, :cond_10

    if-ne v12, v6, :cond_11

    :cond_10
    new-instance v12, Lka;

    invoke-direct {v12, v15, v2, v4}, Lka;-><init>(Ljava/lang/Object;ZI)V

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    move-object v5, v12

    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_12

    if-ne v4, v6, :cond_13

    :cond_12
    new-instance v20, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideComposableKt$AudioGuideComposable$1$7$1;

    const-string v25, "onPlayPause()V"

    const/16 v26, 0x0

    const/16 v21, 0x0

    const-class v23, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    const-string v24, "onPlayPause"

    move-object/from16 v22, v15

    invoke-direct/range {v20 .. v26}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v4, v20

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v4, Lkotlin/reflect/KFunction;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v2, :cond_14

    if-ne v12, v6, :cond_15

    :cond_14
    new-instance v20, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideComposableKt$AudioGuideComposable$1$8$1;

    const-string v25, "selectNextTrack()V"

    const/16 v26, 0x0

    const/16 v21, 0x0

    const-class v23, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;

    const-string v24, "selectNextTrack"

    move-object/from16 v22, v15

    invoke-direct/range {v20 .. v26}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v12, v20

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v12, Lkotlin/reflect/KFunction;

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v18

    or-int v2, v2, v18

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_16

    if-ne v3, v6, :cond_17

    :cond_16
    new-instance v3, Lja;

    const/4 v2, 0x1

    invoke-direct {v3, v1, v15, v2}, Lja;-><init>(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;I)V

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v2, v6

    move-object v6, v4

    move-object v4, v10

    const/4 v10, 0x0

    move-object/from16 p2, v8

    move-object v8, v3

    move-object/from16 v3, p2

    move-object/from16 p2, v13

    move-object v13, v2

    move-object v2, v7

    move-object v7, v12

    move-object/from16 v12, v17

    invoke-static/range {v1 .. v10}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideScreenKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    :goto_3
    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;

    if-eqz v1, :cond_1d

    const v1, 0x25cda4bb

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet;

    instance-of v1, v1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideBottomSheet$TrackDetail;

    const v2, 0x7f140319

    invoke-static {v9, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v2

    xor-int/lit8 v7, v1, 0x1

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState;

    instance-of v4, v3, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    if-eqz v4, :cond_18

    check-cast v3, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;

    goto :goto_4

    :cond_18
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_19

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideViewState$Success;->a:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    if-eqz v3, :cond_19

    iget-wide v3, v3, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->e:J

    new-instance v5, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    if-eqz v1, :cond_19

    goto :goto_5

    :cond_19
    const/4 v5, 0x0

    :goto_5
    if-nez v5, :cond_1a

    const v1, 0x19feaf0d

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    :goto_6
    move-wide v5, v3

    goto :goto_7

    :cond_1a
    const v1, 0x19fe9770

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    iget-wide v3, v5, Landroidx/compose/ui/graphics/Color;->a:J

    goto :goto_6

    :goto_7
    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0x9

    if-nez v1, :cond_1b

    if-ne v3, v13, :cond_1c

    :cond_1b
    new-instance v3, Lq;

    invoke-direct {v3, v11, v15, v12, v4}, Lq;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object/from16 v17, v12

    new-instance v12, Lcom/vuitton/android/presentation/screen/audioguide/components/b;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/a;->c:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/components/a;->d:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    move-object/from16 v13, p2

    move-object/from16 v18, v0

    move-object/from16 v20, v16

    move-object/from16 v16, v1

    invoke-direct/range {v12 .. v20}, Lcom/vuitton/android/presentation/screen/audioguide/components/b;-><init>(Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroid/content/Context;Landroidx/compose/runtime/MutableState;)V

    const v0, 0x1f7f1e4b

    invoke-static {v0, v12, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    sget v1, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/2addr v1, v4

    const/high16 v4, 0x6000000

    or-int v11, v1, v4

    const/16 v12, 0x91

    move-object v10, v9

    move-object v9, v0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, v27

    invoke-static/range {v0 .. v12}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v9, v10

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_8

    :cond_1d
    const v0, 0x26170186

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_8

    :cond_1e
    const v0, 0x19fd673e

    invoke-static {v9, v0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_1f
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->D()V

    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
