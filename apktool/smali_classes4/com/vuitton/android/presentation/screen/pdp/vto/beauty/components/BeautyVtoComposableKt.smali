.class public abstract Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\n\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u0004\u0018\u00010\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002\u00b2\u0006\u0010\u0010\t\u001a\u0004\u0018\u00010\u00088\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;",
        "permissionsState",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;",
        "bottomSheet",
        "",
        "dualSeparatorPercentage",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "itemToNotify",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 36

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x311a12a

    move-object/from16 v1, p12

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p13, v0

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    move-object/from16 v1, p3

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x800

    goto :goto_3

    :cond_3
    const/16 v6, 0x400

    :goto_3
    or-int/2addr v0, v6

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x4000

    goto :goto_4

    :cond_4
    const/16 v6, 0x2000

    :goto_4
    or-int/2addr v0, v6

    move-object/from16 v6, p5

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/high16 v8, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v8, 0x10000

    :goto_5
    or-int/2addr v0, v8

    move-object/from16 v8, p6

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/high16 v16, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v16, 0x80000

    :goto_6
    or-int v0, v0, v16

    move-object/from16 v14, p7

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/high16 v18, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v18, 0x400000

    :goto_7
    or-int v0, v0, v18

    move-object/from16 v8, p8

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/high16 v18, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v18, 0x2000000

    :goto_8
    or-int v0, v0, v18

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    const/high16 v18, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v18, 0x10000000

    :goto_9
    or-int v0, v0, v18

    move-object/from16 v8, p10

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v19, 0x4

    :goto_a
    move-object/from16 v8, p11

    goto :goto_b

    :cond_a
    const/16 v19, 0x2

    goto :goto_a

    :goto_b
    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    const/16 v20, 0x20

    goto :goto_c

    :cond_b
    const/16 v20, 0x10

    :goto_c
    or-int v19, v19, v20

    const v20, 0x12492493

    and-int v5, v0, v20

    const v7, 0x12492492

    const/16 v8, 0x12

    const/16 v33, 0x1

    if-ne v5, v7, :cond_d

    and-int/lit8 v5, v19, 0x13

    if-eq v5, v8, :cond_c

    goto :goto_d

    :cond_c
    const/4 v5, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    move/from16 v5, v33

    :goto_e
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v13, v7, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_44

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-static {v5, v13}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v7

    invoke-interface {v9}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-static {v5, v13}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->e()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-static {v4, v13}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v34

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->g2()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v4

    invoke-static {v4, v13}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v23

    sget-object v4, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    sget-object v8, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v15, :cond_e

    invoke-static {v13}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v3

    :cond_e
    check-cast v3, Landroidx/compose/material3/SnackbarHostState;

    move/from16 v27, v0

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    const/4 v14, 0x0

    if-ne v0, v15, :cond_f

    invoke-static {v14}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v0, Landroidx/compose/runtime/MutableState;

    sget-object v14, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v12, v27, 0xe

    move-object/from16 v29, v0

    const/4 v0, 0x4

    if-eq v12, v0, :cond_10

    const/4 v0, 0x0

    goto :goto_f

    :cond_10
    move/from16 v0, v33

    :goto_f
    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    or-int v0, v0, v30

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    or-int v0, v0, v30

    const/high16 v30, 0x70000

    move/from16 v31, v0

    and-int v0, v27, v30

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_11

    move/from16 v0, v33

    goto :goto_10

    :cond_11
    const/4 v0, 0x0

    :goto_10
    or-int v0, v31, v0

    const/high16 v25, 0x380000

    and-int v1, v27, v25

    move/from16 v30, v0

    const/high16 v0, 0x100000

    if-ne v1, v0, :cond_12

    move/from16 v0, v33

    goto :goto_11

    :cond_12
    const/4 v0, 0x0

    :goto_11
    or-int v0, v30, v0

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_14

    if-ne v1, v15, :cond_13

    goto :goto_12

    :cond_13
    move-object/from16 v17, v3

    move-object/from16 p12, v5

    move-object/from16 v10, v29

    const/16 v11, 0x20

    const/16 v24, 0x12

    goto :goto_13

    :cond_14
    :goto_12
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$1$1;

    move-object v2, v4

    move-object v4, v8

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object/from16 p12, v5

    move-object v5, v6

    move-object/from16 v10, v29

    const/16 v11, 0x20

    const/16 v24, 0x12

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    move-object v2, v1

    move-object/from16 v17, v3

    move-object v8, v4

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v1, v0

    :goto_13
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v14, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {p12 .. p12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    move-object/from16 v1, p12

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x4

    if-eq v12, v4, :cond_15

    const/4 v4, 0x0

    goto :goto_14

    :cond_15
    move/from16 v4, v33

    :goto_14
    or-int/2addr v3, v4

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_16

    if-ne v4, v15, :cond_17

    :cond_16
    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$2$1;

    const/4 v3, 0x0

    invoke-direct {v4, v2, v1, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$2$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v0, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    and-int/lit8 v0, v27, 0x70

    if-eq v0, v11, :cond_18

    const/4 v4, 0x0

    :goto_15
    const/4 v0, 0x4

    goto :goto_16

    :cond_18
    move/from16 v4, v33

    goto :goto_15

    :goto_16
    if-eq v12, v0, :cond_19

    const/4 v0, 0x0

    goto :goto_17

    :cond_19
    move/from16 v0, v33

    :goto_17
    or-int/2addr v0, v4

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1a

    if-ne v1, v15, :cond_1b

    :cond_1a
    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$3$1;

    const/4 v3, 0x0

    invoke-direct {v1, v9, v2, v10, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$3$1;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1b
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v14, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v7}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v14

    const/4 v0, 0x4

    if-eq v12, v0, :cond_1c

    const/4 v4, 0x0

    goto :goto_18

    :cond_1c
    move/from16 v4, v33

    :goto_18
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v4, :cond_1d

    if-ne v0, v15, :cond_1e

    :cond_1d
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$4$1;

    const-string v5, "onTryOnProductSelected(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    const-string v4, "onTryOnProductSelected"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    move-object/from16 v18, v0

    check-cast v18, Lkotlin/reflect/KFunction;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_1f

    const/4 v4, 0x0

    goto :goto_19

    :cond_1f
    move/from16 v4, v33

    :goto_19
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v4, :cond_20

    if-ne v0, v15, :cond_21

    :cond_20
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$5$1;

    const-string v5, "onTryOnStackingProductClick(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    const-string v4, "onTryOnStackingProductClick"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_21
    move-object/from16 v20, v0

    check-cast v20, Lkotlin/reflect/KFunction;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_22

    const/4 v4, 0x0

    goto :goto_1a

    :cond_22
    move/from16 v4, v33

    :goto_1a
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v4, :cond_23

    if-ne v0, v15, :cond_24

    :cond_23
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$6$1;

    const-string v5, "onComparedProductClick(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    const-string v4, "onComparedProductClick"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    move-object/from16 v21, v0

    check-cast v21, Lkotlin/reflect/KFunction;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_25

    const/4 v4, 0x0

    goto :goto_1b

    :cond_25
    move/from16 v4, v33

    :goto_1b
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v4, :cond_26

    if-ne v0, v15, :cond_27

    :cond_26
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$7$1;

    const-string v5, "onLookClick(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    const-string v4, "onLookClick"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_27
    move-object/from16 v22, v0

    check-cast v22, Lkotlin/reflect/KFunction;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_28

    const/4 v4, 0x0

    goto :goto_1c

    :cond_28
    move/from16 v4, v33

    :goto_1c
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v4, :cond_29

    if-ne v0, v15, :cond_2a

    :cond_29
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$8$1;

    const-string v5, "openTutorial()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    const-string v4, "openTutorial"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    move-object/from16 v23, v0

    check-cast v23, Lkotlin/reflect/KFunction;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_2b

    const/4 v4, 0x0

    goto :goto_1d

    :cond_2b
    move/from16 v4, v33

    :goto_1d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v4, :cond_2c

    if-ne v0, v15, :cond_2d

    :cond_2c
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$9$1;

    const-string v5, "trackLookSelectorClicked()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    const-string v4, "trackLookSelectorClicked"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2d
    move-object/from16 v28, v0

    check-cast v28, Lkotlin/reflect/KFunction;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_2e

    const/4 v4, 0x0

    goto :goto_1e

    :cond_2e
    move/from16 v4, v33

    :goto_1e
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v4, :cond_2f

    if-ne v0, v15, :cond_30

    :cond_2f
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$10$1;

    const-string v5, "trackOnSelectDualColorClicked()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    const-string v4, "trackOnSelectDualColorClicked"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_30
    move-object/from16 v29, v0

    check-cast v29, Lkotlin/reflect/KFunction;

    const/4 v0, 0x4

    if-eq v12, v0, :cond_31

    const/4 v4, 0x0

    goto :goto_1f

    :cond_31
    move/from16 v4, v33

    :goto_1f
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v4, :cond_33

    if-ne v0, v15, :cond_32

    goto :goto_20

    :cond_32
    move-object/from16 v2, p0

    goto :goto_21

    :cond_33
    :goto_20
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoComposableKt$BeautyVtoComposable$11$1;

    const-string v5, "trackColorSliderSwipe()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    const-string v4, "trackColorSliderSwipe"

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_21
    check-cast v0, Lkotlin/reflect/KFunction;

    const/4 v4, 0x4

    if-eq v12, v4, :cond_34

    const/4 v4, 0x0

    goto :goto_22

    :cond_34
    move/from16 v4, v33

    :goto_22
    move/from16 v1, v27

    and-int/lit16 v3, v1, 0x380

    const/16 v5, 0x100

    if-ne v3, v5, :cond_35

    move/from16 v3, v33

    goto :goto_23

    :cond_35
    const/4 v3, 0x0

    :goto_23
    or-int/2addr v3, v4

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_37

    if-ne v4, v15, :cond_36

    goto :goto_24

    :cond_36
    move-object/from16 v5, p2

    goto :goto_25

    :cond_37
    :goto_24
    new-instance v4, Ll0;

    const/16 v3, 0x18

    move-object/from16 v5, p2

    invoke-direct {v4, v2, v5, v3}, Ll0;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_25
    check-cast v4, Lkotlin/jvm/functions/Function0;

    const v3, 0xe000

    and-int v6, v1, v3

    move/from16 p12, v3

    const/16 v3, 0x4000

    if-ne v6, v3, :cond_38

    move/from16 v3, v33

    goto :goto_26

    :cond_38
    const/4 v3, 0x0

    :goto_26
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_3a

    if-ne v6, v15, :cond_39

    goto :goto_27

    :cond_39
    move-object/from16 v3, p4

    move-object/from16 v16, v0

    goto :goto_28

    :cond_3a
    :goto_27
    new-instance v6, Lo8;

    move-object/from16 v3, p4

    move-object/from16 v16, v0

    const/4 v0, 0x2

    invoke-direct {v6, v3, v7, v0}, Lo8;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_28
    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast v18, Lkotlin/jvm/functions/Function1;

    check-cast v20, Lkotlin/jvm/functions/Function1;

    check-cast v21, Lkotlin/jvm/functions/Function1;

    const/high16 v0, 0x70000000

    and-int/2addr v0, v1

    move/from16 v27, v1

    const/high16 v1, 0x20000000

    if-ne v0, v1, :cond_3b

    move/from16 v0, v33

    :goto_29
    const/4 v1, 0x4

    goto :goto_2a

    :cond_3b
    const/4 v0, 0x0

    goto :goto_29

    :goto_2a
    if-eq v12, v1, :cond_3c

    const/16 v26, 0x0

    goto :goto_2b

    :cond_3c
    move/from16 v26, v33

    :goto_2b
    or-int v0, v0, v26

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3e

    if-ne v1, v15, :cond_3d

    goto :goto_2c

    :cond_3d
    move-object/from16 v9, p9

    goto :goto_2d

    :cond_3e
    :goto_2c
    new-instance v1, Lk;

    const/16 v0, 0xc

    move-object/from16 v9, p9

    invoke-direct {v1, v9, v2, v0}, Lk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_2d
    check-cast v1, Lkotlin/jvm/functions/Function1;

    check-cast v22, Lkotlin/jvm/functions/Function1;

    check-cast v23, Lkotlin/jvm/functions/Function0;

    check-cast v28, Lkotlin/jvm/functions/Function0;

    check-cast v29, Lkotlin/jvm/functions/Function0;

    move-object/from16 v30, v16

    check-cast v30, Lkotlin/jvm/functions/Function0;

    shl-int/lit8 v0, v27, 0x3

    and-int v0, v0, p12

    move/from16 p12, v0

    const/16 v0, 0x30

    or-int/lit8 v16, p12, 0x30

    shl-int/lit8 v19, v19, 0x12

    and-int v19, v19, v25

    or-int v16, v16, v19

    const/high16 v19, 0x1c00000

    and-int v19, v27, v19

    or-int v16, v16, v19

    const/high16 v19, 0xe000000

    and-int v19, v27, v19

    or-int v32, v16, v19

    move-object/from16 v19, p10

    move-object/from16 v25, v1

    move-object/from16 v16, v4

    move-object/from16 v31, v13

    move-object v1, v15

    move-object/from16 v24, v21

    move-object/from16 v26, v22

    move-object/from16 v27, v23

    const/4 v4, 0x4

    move-object/from16 v21, p8

    move-object v13, v11

    move v15, v14

    move-object/from16 v14, v17

    move-object/from16 v22, v18

    move-object/from16 v23, v20

    move-object/from16 v17, p3

    move-object/from16 v20, p7

    move-object/from16 v18, v6

    invoke-static/range {v13 .. v32}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyVtoScreenKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;Landroidx/compose/material3/SnackbarHostState;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v11, v31

    invoke-interface/range {v34 .. v34}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;

    if-eqz v6, :cond_43

    const v6, 0x20d2f763

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_3f

    new-instance v6, Lu5;

    const/16 v13, 0x1b

    invoke-direct {v6, v13}, Lu5;-><init>(I)V

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3f
    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v13, 0x5

    invoke-static {v0, v13, v11, v6}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v16

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v0, v0

    sget-object v6, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const v6, 0x3f59999a    # 0.85f

    mul-float/2addr v0, v6

    const v6, 0x7f140319

    invoke-static {v11, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v14

    const/4 v6, 0x7

    const/4 v13, 0x0

    invoke-static {v13, v6}, Landroidx/compose/foundation/layout/WindowInsetsKt;->b(II)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v17

    if-eq v12, v4, :cond_40

    move/from16 v33, v13

    :cond_40
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v33, :cond_41

    if-ne v4, v1, :cond_42

    :cond_41
    new-instance v4, Lke;

    invoke-direct {v4, v2, v13}, Lke;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;I)V

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_42
    move-object v15, v4

    check-cast v15, Lkotlin/jvm/functions/Function0;

    move v1, v0

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/b;

    move-object/from16 v5, p1

    move-object/from16 v6, p11

    move-object v3, v7

    move-object v4, v8

    move-object v8, v10

    move-object/from16 v7, v34

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/b;-><init>(FLcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Landroidx/compose/runtime/MutableState;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    const v1, 0x80812b9

    invoke-static {v1, v0, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v22

    sget v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v0, v0, 0x9

    const/high16 v1, 0x6000000

    or-int v24, v0, v1

    const/16 v25, 0xe1

    move/from16 v35, v13

    const/4 v13, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v23, v11

    move/from16 v0, v35

    invoke-static/range {v13 .. v25}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2e

    :cond_43
    const/4 v0, 0x0

    const v1, 0x213fab18

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2e

    :cond_44
    move-object v9, v12

    move-object v11, v13

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2e
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_45

    new-instance v0, Lle;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p13

    move-object v10, v9

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v13}, Lle;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_45
    return-void
.end method
