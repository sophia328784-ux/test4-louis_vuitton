.class public abstract Lcom/vuitton/android/presentation/screen/pdp/components/PdpMainViewKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/pdp/components/PdpMainViewKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "hasTrackedYmalLoaded",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;Lkotlinx/collections/immutable/ImmutableList;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const-string v2, "PdpMainView"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p19 .. p19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p21 .. p21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p22 .. p22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p23 .. p23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p24 .. p24}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p25 .. p25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p26 .. p26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v7, 0x73c23fdb

    move-object/from16 v8, p27

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    or-int/lit8 v8, p28, 0x6

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x20

    goto :goto_0

    :cond_1
    const/16 v9, 0x10

    :goto_0
    or-int/2addr v8, v9

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x100

    goto :goto_1

    :cond_2
    const/16 v9, 0x80

    :goto_1
    or-int/2addr v8, v9

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x800

    goto :goto_2

    :cond_3
    const/16 v9, 0x400

    :goto_2
    or-int/2addr v8, v9

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    const/16 v16, 0x2000

    if-eqz v9, :cond_4

    const/16 v9, 0x4000

    goto :goto_3

    :cond_4
    move/from16 v9, v16

    :goto_3
    or-int/2addr v8, v9

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    const/high16 v17, 0x10000

    if-eqz v9, :cond_5

    const/high16 v9, 0x20000

    goto :goto_4

    :cond_5
    move/from16 v9, v17

    :goto_4
    or-int/2addr v8, v9

    move-object/from16 v9, p6

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    const/high16 v19, 0x80000

    if-eqz v18, :cond_6

    const/high16 v18, 0x100000

    goto :goto_5

    :cond_6
    move/from16 v18, v19

    :goto_5
    or-int v8, v8, v18

    move-object/from16 v13, p7

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    const/high16 v22, 0x400000

    if-eqz v21, :cond_7

    const/high16 v21, 0x800000

    goto :goto_6

    :cond_7
    move/from16 v21, v22

    :goto_6
    or-int v8, v8, v21

    move-object/from16 v12, p8

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    const/high16 v25, 0x2000000

    if-eqz v24, :cond_8

    const/high16 v24, 0x4000000

    goto :goto_7

    :cond_8
    move/from16 v24, v25

    :goto_7
    or-int v8, v8, v24

    move-object/from16 v11, p9

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    const/high16 v28, 0x10000000

    if-eqz v27, :cond_9

    const/high16 v27, 0x20000000

    goto :goto_8

    :cond_9
    move/from16 v27, v28

    :goto_8
    or-int v8, v8, v27

    move-object/from16 v10, p10

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    const/16 v31, 0x2

    if-eqz v30, :cond_a

    const/16 v33, 0x4

    :goto_9
    move-object/from16 v15, p11

    goto :goto_a

    :cond_a
    move/from16 v33, v31

    goto :goto_9

    :goto_a
    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_b

    const/16 v34, 0x20

    goto :goto_b

    :cond_b
    const/16 v34, 0x10

    :goto_b
    or-int v33, v33, v34

    move-object/from16 v14, p12

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_c

    const/16 v35, 0x100

    goto :goto_c

    :cond_c
    const/16 v35, 0x80

    :goto_c
    or-int v33, v33, v35

    move-object/from16 v35, v0

    move-object/from16 v0, p13

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_d

    const/16 v36, 0x800

    goto :goto_d

    :cond_d
    const/16 v36, 0x400

    :goto_d
    or-int v33, v33, v36

    move-object/from16 v0, p14

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_e

    const/16 v36, 0x4000

    goto :goto_e

    :cond_e
    move/from16 v36, v16

    :goto_e
    or-int v33, v33, v36

    move-object/from16 v0, p15

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_f

    const/high16 v36, 0x20000

    goto :goto_f

    :cond_f
    move/from16 v36, v17

    :goto_f
    or-int v33, v33, v36

    move-object/from16 v0, p16

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_10

    const/high16 v36, 0x100000

    goto :goto_10

    :cond_10
    move/from16 v36, v19

    :goto_10
    or-int v33, v33, v36

    move-object/from16 v0, p17

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_11

    const/high16 v22, 0x800000

    :cond_11
    or-int v22, v33, v22

    move-object/from16 v0, p18

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_12

    const/high16 v25, 0x4000000

    :cond_12
    or-int v22, v22, v25

    move-object/from16 v0, p19

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_13

    const/high16 v28, 0x20000000

    :cond_13
    or-int v0, v22, v28

    move/from16 v22, v8

    move-object/from16 v8, p20

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    const/16 v31, 0x4

    :cond_14
    move-object/from16 v11, p21

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    const/16 v25, 0x20

    goto :goto_11

    :cond_15
    const/16 v25, 0x10

    :goto_11
    or-int v25, v31, v25

    move-object/from16 v8, p22

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_16

    const/16 v28, 0x100

    goto :goto_12

    :cond_16
    const/16 v28, 0x80

    :goto_12
    or-int v25, v25, v28

    move-object/from16 v8, p23

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_17

    const/16 v20, 0x800

    goto :goto_13

    :cond_17
    const/16 v20, 0x400

    :goto_13
    or-int v20, v25, v20

    move-object/from16 v8, p24

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    const/16 v16, 0x4000

    :cond_18
    or-int v16, v20, v16

    move-object/from16 v8, p25

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    const/high16 v17, 0x20000

    :cond_19
    or-int v16, v16, v17

    move-object/from16 v8, p26

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const/high16 v19, 0x100000

    :cond_1a
    or-int v8, v16, v19

    const v16, 0x12492493

    and-int v9, v22, v16

    const v10, 0x12492492

    const/16 v17, 0x0

    const/16 v19, 0x1

    if-ne v9, v10, :cond_1c

    and-int v9, v0, v16

    if-ne v9, v10, :cond_1c

    const v9, 0x92493

    and-int/2addr v9, v8

    const v10, 0x92492

    if-eq v9, v10, :cond_1b

    goto :goto_14

    :cond_1b
    move/from16 v9, v17

    goto :goto_15

    :cond_1c
    :goto_14
    move/from16 v9, v19

    :goto_15
    and-int/lit8 v10, v22, 0x1

    invoke-virtual {v7, v10, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_3d

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    sget-object v10, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    sget-object v11, Lcom/vuitton/android/presentation/tracking/GA4TrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/tracking/GA4Tracker;

    sget-object v12, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v13, v14, :cond_21

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModelKt;->a(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    move-result-object v13

    const/16 v16, 0x0

    if-eqz v13, :cond_1d

    iget-object v15, v13, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;

    goto :goto_16

    :cond_1d
    move-object/from16 v15, v16

    :goto_16
    if-eqz v15, :cond_1e

    iget-object v15, v13, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;

    move-object/from16 p0, v11

    move-object/from16 v28, v12

    iget-wide v11, v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceSpecificationUiModel;->c:D

    const-wide/16 v35, 0x0

    cmpg-double v11, v11, v35

    if-nez v11, :cond_1f

    goto :goto_17

    :cond_1e
    move-object/from16 p0, v11

    move-object/from16 v28, v12

    :goto_17
    move-object/from16 v13, v16

    :cond_1f
    if-eqz v13, :cond_20

    iget-object v11, v13, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;->b:Ljava/lang/String;

    move-object v13, v11

    goto :goto_18

    :cond_20
    move-object/from16 v13, v16

    :goto_18
    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_19

    :cond_21
    move-object/from16 p0, v11

    move-object/from16 v28, v12

    :goto_19
    check-cast v13, Ljava/lang/String;

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v14, :cond_23

    iget-boolean v11, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->M:Z

    if-eqz v11, :cond_22

    iget-object v11, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->T:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel;

    instance-of v11, v11, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SellableStatusUiModel$SellableUiModel;

    if-nez v11, :cond_22

    iget-object v11, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->A:Ljava/lang/String;

    if-eqz v11, :cond_22

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_22

    move/from16 v11, v19

    goto :goto_1a

    :cond_22
    move/from16 v11, v17

    :goto_1a
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_23
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v12, :cond_24

    if-ne v15, v14, :cond_25

    :cond_24
    iget-object v12, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->o:Ljava/util/List;

    check-cast v12, Ljava/lang/Iterable;

    invoke-static {v12}, Lkotlinx/collections/immutable/ExtensionsKt;->a(Ljava/lang/Iterable;)Lkotlinx/collections/immutable/ImmutableList;

    move-result-object v15

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v15, Lkotlinx/collections/immutable/ImmutableList;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v9, v12}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v35

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v12, v12, v16

    const/high16 v16, 0x380000

    and-int v1, v22, v16

    move-object/from16 p27, v9

    const/high16 v9, 0x100000

    if-ne v1, v9, :cond_26

    move/from16 v1, v19

    goto :goto_1b

    :cond_26
    move/from16 v1, v17

    :goto_1b
    or-int/2addr v1, v12

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v1, v9

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v1, v9

    const/high16 v9, 0x1c00000

    and-int v12, v22, v9

    move/from16 v20, v9

    const/high16 v9, 0x800000

    if-ne v12, v9, :cond_27

    move/from16 v9, v19

    goto :goto_1c

    :cond_27
    move/from16 v9, v17

    :goto_1c
    or-int/2addr v1, v9

    const/high16 v9, 0xe000000

    and-int v12, v0, v9

    move/from16 v25, v9

    const/high16 v9, 0x4000000

    if-ne v12, v9, :cond_28

    move/from16 v9, v19

    goto :goto_1d

    :cond_28
    move/from16 v9, v17

    :goto_1d
    or-int/2addr v1, v9

    const/high16 v9, 0x70000000

    and-int v12, v22, v9

    move/from16 v31, v9

    const/high16 v9, 0x20000000

    if-ne v12, v9, :cond_29

    move/from16 v9, v19

    goto :goto_1e

    :cond_29
    move/from16 v9, v17

    :goto_1e
    or-int/2addr v1, v9

    and-int/lit8 v9, v8, 0x70

    const/16 v12, 0x20

    if-ne v9, v12, :cond_2a

    move/from16 v9, v19

    goto :goto_1f

    :cond_2a
    move/from16 v9, v17

    :goto_1f
    or-int/2addr v1, v9

    const v9, 0xe000

    and-int v12, v8, v9

    move/from16 v33, v9

    const/16 v9, 0x4000

    if-ne v12, v9, :cond_2b

    move/from16 v12, v19

    goto :goto_20

    :cond_2b
    move/from16 v12, v17

    :goto_20
    or-int/2addr v1, v12

    and-int v12, v8, v16

    const/high16 v9, 0x100000

    if-ne v12, v9, :cond_2c

    move/from16 v9, v19

    goto :goto_21

    :cond_2c
    move/from16 v9, v17

    :goto_21
    or-int/2addr v1, v9

    and-int v9, v0, v33

    const/16 v12, 0x4000

    if-ne v9, v12, :cond_2d

    move/from16 v9, v19

    goto :goto_22

    :cond_2d
    move/from16 v9, v17

    :goto_22
    or-int/2addr v1, v9

    const/high16 v9, 0x70000

    and-int v12, v8, v9

    move/from16 v26, v9

    const/high16 v9, 0x20000

    if-ne v12, v9, :cond_2e

    move/from16 v9, v19

    goto :goto_23

    :cond_2e
    move/from16 v9, v17

    :goto_23
    or-int/2addr v1, v9

    and-int/lit16 v9, v8, 0x1c00

    const/16 v12, 0x800

    if-ne v9, v12, :cond_2f

    move/from16 v9, v19

    goto :goto_24

    :cond_2f
    move/from16 v9, v17

    :goto_24
    or-int/2addr v1, v9

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v1, v9

    and-int v9, v0, v31

    const/high16 v12, 0x20000000

    if-ne v9, v12, :cond_30

    move/from16 v9, v19

    goto :goto_25

    :cond_30
    move/from16 v9, v17

    :goto_25
    or-int/2addr v1, v9

    and-int/lit8 v9, v0, 0x70

    const/16 v12, 0x20

    if-ne v9, v12, :cond_31

    move/from16 v9, v19

    goto :goto_26

    :cond_31
    move/from16 v9, v17

    :goto_26
    or-int/2addr v1, v9

    and-int/lit8 v9, v0, 0xe

    const/4 v12, 0x4

    if-ne v9, v12, :cond_32

    move/from16 v9, v19

    goto :goto_27

    :cond_32
    move/from16 v9, v17

    :goto_27
    or-int/2addr v1, v9

    and-int v9, v22, v25

    const/high16 v12, 0x4000000

    if-ne v9, v12, :cond_33

    move/from16 v9, v19

    goto :goto_28

    :cond_33
    move/from16 v9, v17

    :goto_28
    or-int/2addr v1, v9

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v1, v9

    and-int/lit16 v9, v0, 0x1c00

    const/16 v12, 0x800

    if-ne v9, v12, :cond_34

    move/from16 v9, v19

    goto :goto_29

    :cond_34
    move/from16 v9, v17

    :goto_29
    or-int/2addr v1, v9

    and-int v9, v0, v26

    const/high16 v12, 0x20000

    if-ne v9, v12, :cond_35

    move/from16 v9, v19

    goto :goto_2a

    :cond_35
    move/from16 v9, v17

    :goto_2a
    or-int/2addr v1, v9

    and-int v9, v0, v16

    const/high16 v12, 0x100000

    if-ne v9, v12, :cond_36

    move/from16 v9, v19

    goto :goto_2b

    :cond_36
    move/from16 v9, v17

    :goto_2b
    or-int/2addr v1, v9

    and-int/lit16 v9, v8, 0x380

    const/16 v12, 0x100

    if-ne v9, v12, :cond_37

    move/from16 v9, v19

    goto :goto_2c

    :cond_37
    move/from16 v9, v17

    :goto_2c
    or-int/2addr v1, v9

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v1, v9

    move-object/from16 v9, v28

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v1, v1, v16

    move/from16 v16, v1

    and-int/lit16 v1, v0, 0x380

    if-ne v1, v12, :cond_38

    move/from16 v1, v19

    goto :goto_2d

    :cond_38
    move/from16 v1, v17

    :goto_2d
    or-int v1, v16, v1

    move-object/from16 v12, p0

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v1, v1, v16

    and-int/lit8 v8, v8, 0xe

    move/from16 p0, v0

    const/4 v0, 0x4

    if-ne v8, v0, :cond_39

    move/from16 v0, v19

    goto :goto_2e

    :cond_39
    move/from16 v0, v17

    :goto_2e
    or-int/2addr v0, v1

    invoke-virtual {v7, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    and-int v1, p0, v20

    const/high16 v8, 0x800000

    if-ne v1, v8, :cond_3a

    move/from16 v17, v19

    :cond_3a
    or-int v0, v0, v17

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_3c

    if-ne v1, v14, :cond_3b

    goto :goto_2f

    :cond_3b
    move-object/from16 v34, p27

    move-object v0, v1

    move-object v1, v7

    goto :goto_30

    :cond_3c
    :goto_2f
    new-instance v0, Lnm0;

    move-object/from16 v1, p1

    move-object/from16 v21, p8

    move-object/from16 v20, p10

    move-object/from16 v19, p11

    move-object/from16 v29, p12

    move-object/from16 v23, p13

    move-object/from16 v14, p14

    move-object/from16 v24, p15

    move-object/from16 v25, p16

    move-object/from16 v33, p17

    move-object/from16 v18, p19

    move-object/from16 v31, p20

    move-object/from16 v26, p22

    move-object/from16 v16, p23

    move-object/from16 v34, p27

    move-object/from16 v17, v2

    move-object v2, v3

    move-object/from16 v22, v4

    move-object/from16 v32, v5

    move-object/from16 v27, v6

    move-object/from16 v37, v7

    move-object/from16 v28, v9

    move-object v5, v10

    move v9, v11

    move-object/from16 v30, v12

    move-object v8, v13

    move-object v3, v15

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    move-object/from16 v10, p9

    move-object/from16 v7, p18

    move-object/from16 v11, p21

    move-object/from16 v12, p24

    move-object/from16 v15, p25

    move-object/from16 v13, p26

    invoke-direct/range {v0 .. v33}, Lnm0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/util/List;Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/tracking/GA4Tracker;Lkotlin/jvm/functions/Function1;Lkotlinx/collections/immutable/ImmutableList;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v1, v37

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_30
    move-object/from16 v16, v0

    check-cast v16, Lkotlin/jvm/functions/Function1;

    const/16 v18, 0x0

    const/16 v19, 0x1fe

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v17, v1

    move-object/from16 v8, v35

    invoke-static/range {v8 .. v19}, Landroidx/compose/foundation/lazy/LazyDslKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v37, v17

    move-object/from16 v1, v34

    goto :goto_31

    :cond_3d
    move-object/from16 v37, v7

    invoke-virtual/range {v37 .. v37}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v1, v35

    :goto_31
    invoke-virtual/range {v37 .. v37}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_3e

    move-object v2, v0

    new-instance v0, Lom0;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    move/from16 v28, p28

    move-object/from16 v38, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v28}, Lom0;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;Lkotlinx/collections/immutable/ImmutableList;Ljava/util/List;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;I)V

    move-object/from16 v2, v38

    iput-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_3e
    return-void
.end method
