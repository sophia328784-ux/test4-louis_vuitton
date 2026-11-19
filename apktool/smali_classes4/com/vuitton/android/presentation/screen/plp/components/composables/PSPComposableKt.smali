.class public abstract Lcom/vuitton/android/presentation/screen/plp/components/composables/PSPComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0006\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;",
        "pspViewState",
        "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;",
        "quickAccessFiltersViewState",
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPStyle;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 40

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x446db397

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p8, v0

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x800

    goto :goto_2

    :cond_2
    const/16 v1, 0x400

    :goto_2
    or-int/2addr v0, v1

    move-object/from16 v13, p4

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x4000

    goto :goto_3

    :cond_3
    const/16 v1, 0x2000

    :goto_3
    or-int/2addr v0, v1

    move-object/from16 v15, p5

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x20000

    goto :goto_4

    :cond_4
    const/high16 v1, 0x10000

    :goto_4
    or-int/2addr v0, v1

    move-object/from16 v14, p6

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/high16 v1, 0x100000

    goto :goto_5

    :cond_5
    const/high16 v1, 0x80000

    :goto_5
    or-int/2addr v0, v1

    const v1, 0x92493

    and-int/2addr v1, v0

    const v4, 0x92492

    const/4 v5, 0x0

    if-eq v1, v4, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    move v1, v5

    :goto_6
    and-int/lit8 v4, v0, 0x1

    invoke-virtual {v9, v4, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v1, p8, 0x1

    if-eqz v1, :cond_8

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :cond_8
    :goto_7
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    sget-object v4, Lcom/vuitton/android/presentation/tracking/AppsFlyerTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v12, 0x7

    invoke-static {v6, v10, v9, v5, v12}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;->M0()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v11

    invoke-static {v11, v10, v9, v5, v12}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v11

    invoke-interface {v7}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    invoke-static {v3, v10, v9, v5, v12}, Landroidx/lifecycle/compose/FlowExtKt;->c(Lkotlinx/coroutines/flow/StateFlow;Landroidx/lifecycle/Lifecycle$State;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v5, v20

    check-cast v5, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->b:Ljava/lang/String;

    const-string v20, ""

    if-nez v5, :cond_9

    move-object/from16 v5, v20

    :cond_9
    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v12, v22

    check-cast v12, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    iget-object v12, v12, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->a:Ljava/lang/String;

    if-nez v12, :cond_a

    move-object/from16 v12, v20

    :cond_a
    sget-object v10, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-object/from16 v22, v1

    and-int/lit16 v1, v0, 0x1c00

    move/from16 v24, v0

    const/16 v0, 0x800

    if-ne v1, v0, :cond_b

    const/4 v0, 0x1

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v6

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_c

    if-ne v1, v6, :cond_d

    :cond_c
    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/components/composables/PSPComposableKt$PSPComposable$4$1;

    const/4 v0, 0x0

    invoke-direct {v1, v0, v8}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PSPComposableKt$PSPComposable$4$1;-><init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v10, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {v19 .. v19}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->g()Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v13

    and-int/lit8 v0, v24, 0xe

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    const/4 v1, 0x0

    :goto_9
    move/from16 v25, v0

    goto :goto_a

    :cond_e
    const/4 v1, 0x1

    goto :goto_9

    :goto_a
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_10

    if-ne v0, v6, :cond_f

    goto :goto_b

    :cond_f
    move-object/from16 v27, v5

    move-object/from16 p7, v10

    move-object/from16 v8, v22

    move/from16 v15, v25

    const/4 v14, 0x1

    move-object v10, v4

    move-object/from16 v25, v12

    move-object/from16 v22, v13

    move-object v13, v3

    move-object v12, v6

    goto :goto_c

    :cond_10
    :goto_b
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PSPComposableKt$PSPComposable$5$1;

    move-object v1, v5

    const-string v5, "refreshWishlist()V"

    move-object/from16 v26, v6

    const/4 v6, 0x0

    move-object/from16 v27, v1

    const/4 v1, 0x0

    move-object/from16 v28, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;

    move-object/from16 v29, v4

    const-string v4, "refreshWishlist"

    move-object/from16 p7, v10

    move-object/from16 v8, v22

    move/from16 v15, v25

    move-object/from16 v10, v29

    const/4 v14, 0x1

    move-object/from16 v25, v12

    move-object/from16 v22, v13

    move-object/from16 v12, v26

    move-object/from16 v13, v28

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_c
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object/from16 v26, v0

    check-cast v26, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x18

    if-nez v0, :cond_11

    if-ne v1, v12, :cond_12

    :cond_11
    new-instance v1, Lje;

    invoke-direct {v1, v8, v3}, Lje;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object/from16 v28, v1

    check-cast v28, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x4

    if-eq v15, v1, :cond_13

    const/4 v5, 0x0

    goto :goto_d

    :cond_13
    move v5, v14

    :goto_d
    and-int/lit8 v0, v24, 0x70

    xor-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-le v0, v1, :cond_14

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    :cond_14
    and-int/lit8 v4, v24, 0x30

    if-ne v4, v1, :cond_16

    :cond_15
    move v1, v14

    goto :goto_e

    :cond_16
    const/4 v1, 0x0

    :goto_e
    or-int/2addr v1, v5

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_17

    if-ne v4, v12, :cond_18

    :cond_17
    new-instance v4, Lrh0;

    invoke-direct {v4, v2, v7, v3}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    move-object/from16 v29, v4

    check-cast v29, Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x4

    if-eq v15, v1, :cond_19

    const/4 v5, 0x0

    goto :goto_f

    :cond_19
    move v5, v14

    :goto_f
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v5, :cond_1a

    if-ne v1, v12, :cond_1b

    :cond_1a
    move v1, v0

    goto :goto_10

    :cond_1b
    move v14, v0

    goto :goto_11

    :goto_10
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PSPComposableKt$PSPComposable$8$1;

    const-string v5, "search(Ljava/lang/String;)V"

    const/4 v6, 0x0

    move v3, v1

    const/4 v1, 0x1

    move v4, v3

    const-class v3, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;

    move/from16 v30, v4

    const-string v4, "search"

    move/from16 v14, v30

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_11
    check-cast v1, Lkotlin/reflect/KFunction;

    move-object/from16 v30, v1

    check-cast v30, Lkotlin/jvm/functions/Function1;

    const/16 v1, 0x20

    if-le v14, v1, :cond_1c

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_1c
    and-int/lit8 v0, v24, 0x30

    if-ne v0, v1, :cond_1e

    :cond_1d
    const/4 v5, 0x1

    goto :goto_12

    :cond_1e
    const/4 v5, 0x0

    :goto_12
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_20

    if-ne v0, v12, :cond_1f

    goto :goto_13

    :cond_1f
    move-object v2, v7

    move-object/from16 v7, p0

    goto :goto_14

    :cond_20
    :goto_13
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PSPComposableKt$PSPComposable$9$1;

    const-string v5, "updateCategory(Ljava/lang/String;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    const-string v4, "updateCategory"

    move-object v2, v7

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_14
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object/from16 v32, v0

    check-cast v32, Lkotlin/jvm/functions/Function1;

    const/16 v1, 0x20

    if-le v14, v1, :cond_21

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_21
    and-int/lit8 v0, v24, 0x30

    if-ne v0, v1, :cond_23

    :cond_22
    const/4 v5, 0x1

    goto :goto_15

    :cond_23
    const/4 v5, 0x0

    :goto_15
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_25

    if-ne v0, v12, :cond_24

    goto :goto_16

    :cond_24
    move-object v1, v2

    goto :goto_17

    :cond_25
    :goto_16
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PSPComposableKt$PSPComposable$10$1;

    const-string v5, "updateFiltersContainerVisibility(Z)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    const-string v4, "updateFiltersContainerVisibility"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_17
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object/from16 v33, v0

    check-cast v33, Lkotlin/jvm/functions/Function1;

    const/16 v0, 0x20

    if-le v14, v0, :cond_26

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_26
    and-int/lit8 v2, v24, 0x30

    if-ne v2, v0, :cond_28

    :cond_27
    const/4 v5, 0x1

    goto :goto_18

    :cond_28
    const/4 v5, 0x0

    :goto_18
    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v5

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_29

    if-ne v2, v12, :cond_2a

    :cond_29
    new-instance v2, Lfk0;

    const/4 v0, 0x1

    invoke-direct {v2, v1, v13, v0}, Lfk0;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    move-object v13, v2

    check-cast v13, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x4

    if-eq v15, v0, :cond_2b

    const/4 v5, 0x0

    goto :goto_19

    :cond_2b
    const/4 v5, 0x1

    :goto_19
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_2c

    if-ne v0, v12, :cond_2d

    :cond_2c
    new-instance v0, Lll0;

    const/4 v2, 0x0

    invoke-direct {v0, v7, v2}, Lll0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2d
    move-object/from16 v34, v0

    check-cast v34, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x4

    if-eq v15, v0, :cond_2e

    const/4 v5, 0x0

    goto :goto_1a

    :cond_2e
    const/4 v5, 0x1

    :goto_1a
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_30

    if-ne v0, v12, :cond_2f

    goto :goto_1b

    :cond_2f
    move-object v7, v1

    goto :goto_1c

    :cond_30
    :goto_1b
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PSPComposableKt$PSPComposable$13$1;

    const-string v5, "onWishlistAnimationEnded(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;

    const-string v4, "onWishlistAnimationEnded"

    move-object v2, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1c
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object/from16 v35, v0

    check-cast v35, Lkotlin/jvm/functions/Function1;

    const/16 v1, 0x20

    if-le v14, v1, :cond_31

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    :cond_31
    and-int/lit8 v0, v24, 0x30

    if-ne v0, v1, :cond_33

    :cond_32
    const/4 v5, 0x1

    goto :goto_1d

    :cond_33
    const/4 v5, 0x0

    :goto_1d
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_35

    if-ne v0, v12, :cond_34

    goto :goto_1e

    :cond_34
    move-object v1, v7

    move-object/from16 v7, p0

    goto :goto_1f

    :cond_35
    :goto_1e
    new-instance v0, Lcom/vuitton/android/presentation/screen/plp/components/composables/PSPComposableKt$PSPComposable$14$1;

    const-string v5, "updateQuickAccessFiltersButtonState(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    const-string v4, "updateQuickAccessFiltersButtonState"

    move-object v2, v7

    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v2

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1f
    check-cast v0, Lkotlin/reflect/KFunction;

    move-object/from16 v36, v0

    check-cast v36, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    if-eq v15, v0, :cond_36

    const/4 v5, 0x0

    goto :goto_20

    :cond_36
    const/4 v5, 0x1

    :goto_20
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_38

    if-ne v0, v12, :cond_37

    goto :goto_21

    :cond_37
    const/4 v2, 0x0

    goto :goto_22

    :cond_38
    :goto_21
    new-instance v0, Lkl0;

    const/4 v2, 0x0

    invoke-direct {v0, v7, v2}, Lkl0;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_22
    move-object/from16 v21, v0

    check-cast v21, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    if-eq v15, v0, :cond_39

    move v5, v2

    goto :goto_23

    :cond_39
    const/4 v5, 0x1

    :goto_23
    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v5

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_3a

    if-ne v3, v12, :cond_3b

    :cond_3a
    new-instance v3, Lwd0;

    const/16 v0, 0x13

    invoke-direct {v3, v7, v8, v0}, Lwd0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3b
    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function2;

    const/16 v0, 0x20

    if-le v14, v0, :cond_3c

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    :cond_3c
    and-int/lit8 v3, v24, 0x30

    if-ne v3, v0, :cond_3e

    :cond_3d
    const/4 v5, 0x1

    goto :goto_24

    :cond_3e
    move v5, v2

    :goto_24
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_3f

    if-ne v0, v12, :cond_40

    :cond_3f
    new-instance v0, Lak;

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3}, Lak;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_40
    move-object/from16 v37, v0

    check-cast v37, Lkotlin/jvm/functions/Function0;

    const/16 v0, 0x20

    if-le v14, v0, :cond_41

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    :cond_41
    and-int/lit8 v3, v24, 0x30

    if-ne v3, v0, :cond_43

    :cond_42
    const/4 v5, 0x1

    goto :goto_25

    :cond_43
    move v5, v2

    :goto_25
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_44

    if-ne v0, v12, :cond_45

    :cond_44
    new-instance v0, Lak;

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3}, Lak;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_45
    move-object/from16 v38, v0

    check-cast v38, Lkotlin/jvm/functions/Function0;

    const/16 v0, 0x20

    if-le v14, v0, :cond_46

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    :cond_46
    and-int/lit8 v3, v24, 0x30

    if-ne v3, v0, :cond_48

    :cond_47
    const/4 v5, 0x1

    goto :goto_26

    :cond_48
    move v5, v2

    :goto_26
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_49

    if-ne v0, v12, :cond_4a

    :cond_49
    new-instance v0, Lbk;

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lbk;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4a
    move-object/from16 v16, v0

    check-cast v16, Lkotlin/jvm/functions/Function1;

    const/16 v0, 0x20

    if-le v14, v0, :cond_4b

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    :cond_4b
    and-int/lit8 v3, v24, 0x30

    if-ne v3, v0, :cond_4d

    :cond_4c
    const/4 v5, 0x1

    goto :goto_27

    :cond_4d
    move v5, v2

    :goto_27
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_4e

    if-ne v0, v12, :cond_4f

    :cond_4e
    new-instance v0, Lak;

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3}, Lak;-><init>(Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4f
    move-object v14, v0

    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    const/4 v3, 0x4

    if-eq v15, v3, :cond_50

    move v5, v2

    goto :goto_28

    :cond_50
    const/4 v5, 0x1

    :goto_28
    or-int/2addr v0, v5

    move-object/from16 v5, v27

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    move-object/from16 v3, v25

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_52

    if-ne v4, v12, :cond_51

    goto :goto_29

    :cond_51
    move-object/from16 v39, v7

    move v7, v2

    move-object/from16 v2, v39

    goto :goto_2a

    :cond_52
    :goto_29
    new-instance v0, Ld1;

    const/16 v6, 0xf

    move-object v1, v7

    move-object v4, v11

    move v7, v2

    move-object v2, v5

    move-object v5, v10

    invoke-direct/range {v0 .. v6}, Ld1;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v2, v1

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :goto_2a
    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    if-eq v15, v0, :cond_53

    move v5, v7

    goto :goto_2b

    :cond_53
    const/4 v5, 0x1

    :goto_2b
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_54

    if-ne v0, v12, :cond_55

    :cond_54
    new-instance v0, Lkl0;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lkl0;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_55
    check-cast v0, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v1, v24, 0x3

    const v3, 0x381c00

    and-int/2addr v1, v3

    shl-int/lit8 v3, v24, 0x9

    const/high16 v5, 0x1c00000

    and-int/2addr v5, v3

    or-int/2addr v1, v5

    const/high16 v5, 0x70000000

    and-int/2addr v3, v5

    or-int/2addr v1, v3

    move-object/from16 v12, p2

    move-object/from16 v15, p5

    move-object/from16 v18, p6

    move-object/from16 v23, v13

    move-object/from16 v31, v16

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v27, v21

    move-object/from16 v13, v22

    move-object/from16 v17, v28

    move-object/from16 v19, v29

    move-object/from16 v20, v30

    move-object/from16 v21, v32

    move-object/from16 v22, v33

    move-object/from16 v24, v34

    move-object/from16 v25, v35

    move-object/from16 v29, v37

    move-object/from16 v30, v38

    move-object/from16 v16, p4

    move-object/from16 v34, v0

    move-object/from16 v33, v4

    move-object/from16 v28, v8

    move-object/from16 v35, v9

    move-object/from16 v32, v14

    move-object/from16 v14, v26

    move-object/from16 v26, v36

    move-object/from16 v9, p7

    move/from16 v36, v1

    invoke-static/range {v9 .. v36}, Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPScreenKt;->a(Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPStyle;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2c

    :cond_56
    move-object/from16 v35, v9

    invoke-virtual/range {v35 .. v35}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2c
    invoke-virtual/range {v35 .. v35}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_57

    new-instance v0, Lo;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move-object v1, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v8}, Lo;-><init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lcom/vuitton/android/presentation/screen/plp/components/screens/PSPStyle;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_57
    return-void
.end method
