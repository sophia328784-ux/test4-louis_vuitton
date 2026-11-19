.class public abstract Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0008\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00028\n@\nX\u008a\u008e\u0002\u00b2\u0006\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u00048\n@\nX\u008a\u008e\u0002\u00b2\u0006\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00068\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/models/FindInStoreViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/screen/pdp/FindInStoreBottomSheet;",
        "currentBottomSheet",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;",
        "currentSelectedSize",
        "Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;",
        "currentPlace",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;ZLkotlin/Pair;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v10, p9

    move/from16 v15, p15

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x6a15a15d

    move-object/from16 v3, p13

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p14, v0

    move-object/from16 v9, p1

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    move-object/from16 v11, p2

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x800

    goto :goto_3

    :cond_3
    const/16 v4, 0x400

    :goto_3
    or-int/2addr v0, v4

    move-object/from16 v4, p4

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    const/16 v16, 0x4000

    goto :goto_4

    :cond_4
    const/16 v16, 0x2000

    :goto_4
    or-int v0, v0, v16

    const/high16 v16, 0x30000

    and-int v16, p14, v16

    move-object/from16 v12, p5

    if-nez v16, :cond_6

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    const/high16 v16, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v16, 0x10000

    :goto_5
    or-int v0, v0, v16

    :cond_6
    if-nez p6, :cond_7

    const/16 v16, -0x1

    :goto_6
    move/from16 v5, v16

    goto :goto_7

    :cond_7
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    goto :goto_6

    :goto_7
    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v5

    if-eqz v5, :cond_8

    const/high16 v5, 0x100000

    goto :goto_8

    :cond_8
    const/high16 v5, 0x80000

    :goto_8
    or-int/2addr v0, v5

    move/from16 v5, p7

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_9

    const/high16 v16, 0x800000

    goto :goto_9

    :cond_9
    const/high16 v16, 0x400000

    :goto_9
    or-int v0, v0, v16

    move-object/from16 v6, p8

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const/high16 v18, 0x4000000

    goto :goto_a

    :cond_a
    const/high16 v18, 0x2000000

    :goto_a
    or-int v0, v0, v18

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    const/high16 v18, 0x20000000

    goto :goto_b

    :cond_b
    const/high16 v18, 0x10000000

    :goto_b
    or-int v0, v0, v18

    and-int/lit8 v18, v15, 0x6

    move-object/from16 v6, p10

    if-nez v18, :cond_d

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v18, 0x4

    goto :goto_c

    :cond_c
    const/16 v18, 0x2

    :goto_c
    or-int v18, v15, v18

    goto :goto_d

    :cond_d
    move/from16 v18, v15

    :goto_d
    and-int/lit8 v20, v15, 0x30

    move-object/from16 v6, p11

    if-nez v20, :cond_f

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    const/16 v16, 0x20

    goto :goto_e

    :cond_e
    const/16 v16, 0x10

    :goto_e
    or-int v18, v18, v16

    :cond_f
    and-int/lit16 v3, v15, 0x180

    if-nez v3, :cond_11

    move-object/from16 v3, p12

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/16 v17, 0x100

    goto :goto_f

    :cond_10
    const/16 v17, 0x80

    :goto_f
    or-int v18, v18, v17

    :goto_10
    move/from16 v6, v18

    goto :goto_11

    :cond_11
    move-object/from16 v3, p12

    goto :goto_10

    :goto_11
    const v17, 0x12492493

    and-int v13, v0, v17

    const v14, 0x12492492

    const/4 v8, 0x0

    const/16 v20, 0x1

    if-ne v13, v14, :cond_13

    and-int/lit16 v13, v6, 0x93

    const/16 v14, 0x92

    if-eq v13, v14, :cond_12

    goto :goto_12

    :cond_12
    move v13, v8

    goto :goto_13

    :cond_13
    :goto_12
    move/from16 v13, v20

    :goto_13
    and-int/lit8 v14, v0, 0x1

    invoke-virtual {v7, v14, v13}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v13

    if-eqz v13, :cond_39

    sget-object v13, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v13

    invoke-static {v13, v7}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    const/4 v14, 0x7

    const/4 v3, 0x0

    invoke-static {v8, v14, v7, v3}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v14

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v21, v3

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v8, v3, :cond_14

    invoke-static/range {v21 .. v21}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v8, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_15

    invoke-static/range {p4 .. p4}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    move-object/from16 v22, v4

    check-cast v22, Landroidx/compose/runtime/MutableState;

    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v3, :cond_16

    invoke-static/range {v21 .. v21}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v5, Landroidx/compose/runtime/MutableState;

    sget-object v9, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v11, v0, 0xe

    const/4 v12, 0x4

    if-eq v11, v12, :cond_17

    const/4 v12, 0x0

    goto :goto_14

    :cond_17
    move/from16 v12, v20

    :goto_14
    move/from16 v23, v12

    and-int/lit16 v12, v0, 0x1c00

    move/from16 v24, v0

    const/16 v0, 0x800

    if-ne v12, v0, :cond_18

    move/from16 v0, v20

    goto :goto_15

    :cond_18
    const/4 v0, 0x0

    :goto_15
    or-int v0, v23, v0

    move/from16 v23, v0

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v23, :cond_19

    if-ne v0, v3, :cond_1a

    :cond_19
    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1;

    move-object/from16 v15, v21

    invoke-direct {v0, v1, v2, v5, v15}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1a
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v9, v0}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v0, 0x4

    if-eq v11, v0, :cond_1b

    const/4 v0, 0x0

    goto :goto_16

    :cond_1b
    move/from16 v0, v20

    :goto_16
    const/high16 v23, 0x70000000

    and-int v15, v24, v23

    move/from16 v25, v0

    const/high16 v0, 0x20000000

    if-ne v15, v0, :cond_1c

    move/from16 v0, v20

    goto :goto_17

    :cond_1c
    const/4 v0, 0x0

    :goto_17
    or-int v0, v25, v0

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v0, :cond_1d

    if-ne v15, v3, :cond_1e

    :cond_1d
    new-instance v15, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$2$1;

    const/4 v0, 0x0

    invoke-direct {v15, v1, v10, v0}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$2$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v9, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v9, "FindInStoreBottomSheet-79N4jBc"

    invoke-direct {v0, v9}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const v9, 0x3f666666    # 0.9f

    invoke-static {v0, v9}, Landroidx/compose/foundation/layout/SizeKt;->c(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/vuitton/android/presentation/screen/pdp/models/FindInStoreViewState;

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    if-eqz v0, :cond_1f

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->b:Ljava/lang/String;

    move-object/from16 v21, v0

    goto :goto_18

    :cond_1f
    move-object/from16 v21, v2

    :goto_18
    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/FindInStoreViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/FindInStoreViewState;->d:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-static {v0, v4}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    if-eqz v0, :cond_21

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->d:Ljava/lang/String;

    if-nez v0, :cond_20

    goto :goto_19

    :cond_20
    move-object/from16 v26, v21

    move-object/from16 v21, v0

    goto :goto_1a

    :cond_21
    :goto_19
    move-object/from16 v26, v21

    move-object/from16 v21, p2

    :goto_1a
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v27, v0

    check-cast v27, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    move/from16 p13, v0

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p13, :cond_22

    if-ne v0, v3, :cond_23

    :cond_22
    new-instance v0, Lm8;

    const/4 v1, 0x2

    invoke-direct {v0, v14, v8, v1}, Lm8;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    move-object/from16 v16, v0

    check-cast v16, Lkotlin/jvm/functions/Function0;

    and-int/lit16 v0, v6, 0x380

    const/16 v1, 0x100

    if-ne v0, v1, :cond_24

    move/from16 v0, v20

    :goto_1b
    const/4 v1, 0x4

    goto :goto_1c

    :cond_24
    const/4 v0, 0x0

    goto :goto_1b

    :goto_1c
    if-eq v11, v1, :cond_25

    const/4 v1, 0x0

    goto :goto_1d

    :cond_25
    move/from16 v1, v20

    :goto_1d
    or-int/2addr v0, v1

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    const/16 v1, 0x800

    if-ne v12, v1, :cond_26

    move/from16 v1, v20

    goto :goto_1e

    :cond_26
    const/4 v1, 0x0

    :goto_1e
    or-int/2addr v0, v1

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_28

    if-ne v1, v3, :cond_27

    goto :goto_1f

    :cond_27
    move-object v0, v1

    move-object/from16 v19, v5

    move/from16 p13, v6

    move-object/from16 v37, v8

    move-object v1, v14

    move-object v8, v3

    move-object v14, v4

    goto :goto_20

    :cond_28
    :goto_1f
    new-instance v0, Lyh;

    move v1, v6

    const/4 v6, 0x6

    move-object/from16 p13, v14

    move-object v14, v4

    move-object/from16 v4, p13

    move/from16 p13, v1

    move-object/from16 v19, v5

    move-object v5, v8

    move-object/from16 v1, p12

    move-object v8, v3

    move-object v3, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v6}, Lyh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v1, v4

    move-object/from16 v37, v5

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_20
    move-object/from16 v28, v0

    check-cast v28, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x4

    if-eq v11, v0, :cond_29

    const/4 v0, 0x0

    :goto_21
    const/16 v2, 0x800

    goto :goto_22

    :cond_29
    move/from16 v0, v20

    goto :goto_21

    :goto_22
    if-ne v12, v2, :cond_2a

    move/from16 v2, v20

    goto :goto_23

    :cond_2a
    const/4 v2, 0x0

    :goto_23
    or-int/2addr v0, v2

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_2c

    if-ne v2, v8, :cond_2b

    goto :goto_24

    :cond_2b
    move-object v4, v13

    move-object v3, v14

    move-object v13, v1

    goto :goto_25

    :cond_2c
    :goto_24
    new-instance v0, Ld1;

    const/4 v6, 0x7

    move-object/from16 v2, p3

    move-object v4, v13

    move-object v3, v14

    move-object/from16 v5, v19

    move-object v13, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Ld1;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_25
    move-object/from16 v29, v2

    check-cast v29, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    if-eq v11, v0, :cond_2d

    const/4 v0, 0x0

    :goto_26
    const/16 v1, 0x800

    goto :goto_27

    :cond_2d
    move/from16 v0, v20

    goto :goto_26

    :goto_27
    if-ne v12, v1, :cond_2e

    move/from16 v1, v20

    goto :goto_28

    :cond_2e
    const/4 v1, 0x0

    :goto_28
    or-int/2addr v0, v1

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_30

    if-ne v1, v8, :cond_2f

    goto :goto_29

    :cond_2f
    move-object/from16 v14, p3

    move-object v0, v1

    move-object v6, v4

    move-object/from16 v1, p0

    goto :goto_2a

    :cond_30
    :goto_29
    new-instance v0, Lk3;

    const/16 v5, 0xa

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v5}, Lk3;-><init>(Ljava/lang/Object;Ljava/lang/String;Landroid/content/Context;Landroidx/compose/runtime/MutableState;I)V

    move-object v14, v2

    move-object v6, v4

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_2a
    move-object/from16 v30, v0

    check-cast v30, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    if-eq v11, v0, :cond_31

    const/4 v0, 0x0

    :goto_2b
    const/16 v2, 0x800

    goto :goto_2c

    :cond_31
    move/from16 v0, v20

    goto :goto_2b

    :goto_2c
    if-ne v12, v2, :cond_32

    move/from16 v2, v20

    goto :goto_2d

    :cond_32
    const/4 v2, 0x0

    :goto_2d
    or-int/2addr v0, v2

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_33

    if-ne v2, v8, :cond_34

    :cond_33
    new-instance v2, Lgv;

    const/16 v0, 0xd

    invoke-direct {v2, v1, v14, v0}, Lgv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_34
    move-object/from16 v32, v2

    check-cast v32, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x4

    if-eq v11, v0, :cond_35

    const/16 v20, 0x0

    :cond_35
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    or-int v0, v20, v0

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_37

    if-ne v2, v8, :cond_36

    goto :goto_2e

    :cond_36
    move-object v1, v13

    goto :goto_2f

    :cond_37
    :goto_2e
    new-instance v0, Lk3;

    const/16 v5, 0xb

    move-object v4, v1

    move-object v1, v13

    move-object/from16 v3, v19

    move-object/from16 v2, v22

    invoke-direct/range {v0 .. v5}, Lk3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v2, v0

    :goto_2f
    move-object/from16 v33, v2

    check-cast v33, Lkotlin/jvm/functions/Function1;

    shl-int/lit8 v0, v24, 0x6

    and-int/lit16 v2, v0, 0x1c00

    or-int/lit8 v2, v2, 0x6

    const/high16 v3, 0x1c00000

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    const/high16 v3, 0xe000000

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    and-int v0, v0, v23

    or-int v35, v2, v0

    shr-int/lit8 v0, v24, 0x18

    and-int/lit8 v0, v0, 0xe

    shl-int/lit8 v2, p13, 0xf

    const/high16 v3, 0x70000

    and-int/2addr v2, v3

    or-int v36, v0, v2

    move-object/from16 v19, p1

    move-object/from16 v23, p5

    move-object/from16 v24, p6

    move-object/from16 v31, p10

    move-object/from16 v34, v7

    move-object/from16 v17, v15

    move-object/from16 v20, v25

    move-object/from16 v18, v26

    move-object/from16 v22, v27

    move/from16 v25, p7

    move-object/from16 v26, p8

    move-object/from16 v27, v16

    move-object/from16 v16, v9

    invoke-static/range {v16 .. v36}, Lcom/vuitton/android/presentation/screen/pdp/components/findinstore/FindInStoreComponentKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/FindInStoreViewState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;ZLkotlin/Pair;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v1}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a()Z

    move-result v0

    if-eqz v0, :cond_38

    const v0, -0x2ae586f8

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v0, 0x7f140319

    invoke-static {v7, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v17

    new-instance v0, Ln4;

    move-object v4, v6

    const/16 v6, 0xb

    move-object/from16 v3, p11

    move-object v2, v1

    move-object v5, v4

    move-object/from16 v4, v37

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Ln4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object v1, v2

    const v2, -0x175800cc

    invoke-static {v2, v0, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v25

    sget v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v0, v0, 0x9

    const v2, 0x6000006

    or-int v27, v0, v2

    const/16 v28, 0xf4

    sget-object v16, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const/16 v18, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v19, v1

    move-object/from16 v26, v7

    invoke-static/range {v16 .. v28}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_30

    :cond_38
    const/4 v0, 0x0

    const v1, -0x2acbc2a1    # -1.238598E13f

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_30

    :cond_39
    move-object v14, v2

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_30
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_3a

    move-object v1, v0

    new-instance v0, Luy;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v15, p15

    move-object/from16 v38, v1

    move-object v4, v14

    move-object/from16 v1, p0

    move/from16 v14, p14

    invoke-direct/range {v0 .. v15}, Luy;-><init>(Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;ZLkotlin/Pair;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;II)V

    move-object/from16 v1, v38

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_3a
    return-void
.end method
