.class public abstract Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u00a8\u0006\u000c\u00b2\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u0004\u0018\u00010\u00028\nX\u008a\u0084\u0002\u00b2\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\t\u001a\u00020\u00088\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\n\u001a\u00020\u00088\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u000b\u001a\u00020\u00068\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;",
        "currentSpotlight",
        "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;",
        "currentHotspot",
        "",
        "removeExoplayer",
        "",
        "speedFactor",
        "Landroidx/compose/ui/unit/Dp;",
        "bottomPadding",
        "topPadding",
        "scaleVideoValue",
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


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x41400000    # 12.0f

    sput v0, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->a:F

    return-void
.end method

.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p12

    move-object/from16 v6, p17

    move/from16 v3, p20

    move/from16 v4, p21

    const-string v5, "ContentScreen"

    if-eqz v0, :cond_0

    invoke-static {v0, v5}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v7, 0x15649754

    move-object/from16 v8, p19

    invoke-interface {v8, v7}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    and-int/lit8 v8, v3, 0x6

    if-nez v8, :cond_2

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x4

    goto :goto_0

    :cond_1
    const/4 v8, 0x2

    :goto_0
    or-int/2addr v8, v3

    goto :goto_1

    :cond_2
    move v8, v3

    :goto_1
    and-int/lit8 v11, v3, 0x30

    if-nez v11, :cond_4

    move-object/from16 v11, p1

    invoke-virtual {v7, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/16 v14, 0x20

    goto :goto_2

    :cond_3
    const/16 v14, 0x10

    :goto_2
    or-int/2addr v8, v14

    goto :goto_3

    :cond_4
    move-object/from16 v11, p1

    :goto_3
    and-int/lit16 v14, v3, 0x180

    const/16 v16, 0x100

    if-nez v14, :cond_6

    move-object/from16 v14, p2

    invoke-virtual {v7, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    move/from16 v17, v16

    goto :goto_4

    :cond_5
    const/16 v17, 0x80

    :goto_4
    or-int v8, v8, v17

    goto :goto_5

    :cond_6
    move-object/from16 v14, p2

    :goto_5
    and-int/lit16 v9, v3, 0xc00

    const/16 v17, 0x400

    const/16 v18, 0x800

    if-nez v9, :cond_8

    invoke-virtual {v7, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move/from16 v9, v18

    goto :goto_6

    :cond_7
    move/from16 v9, v17

    :goto_6
    or-int/2addr v8, v9

    :cond_8
    and-int/lit16 v9, v3, 0x6000

    const/16 v19, 0x2000

    const/16 v20, 0x4000

    if-nez v9, :cond_a

    move-object/from16 v9, p4

    invoke-virtual {v7, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    move/from16 v21, v20

    goto :goto_7

    :cond_9
    move/from16 v21, v19

    :goto_7
    or-int v8, v8, v21

    goto :goto_8

    :cond_a
    move-object/from16 v9, p4

    :goto_8
    const/high16 v21, 0x30000

    and-int v22, v3, v21

    const/high16 v23, 0x10000

    const/high16 v24, 0x20000

    move-object/from16 v10, p5

    if-nez v22, :cond_c

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    move/from16 v22, v24

    goto :goto_9

    :cond_b
    move/from16 v22, v23

    :goto_9
    or-int v8, v8, v22

    :cond_c
    const/high16 v22, 0x180000

    and-int v25, v3, v22

    const/high16 v26, 0x80000

    const/high16 v27, 0x100000

    move/from16 v12, p6

    if-nez v25, :cond_e

    invoke-virtual {v7, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v28

    if-eqz v28, :cond_d

    move/from16 v28, v27

    goto :goto_a

    :cond_d
    move/from16 v28, v26

    :goto_a
    or-int v8, v8, v28

    :cond_e
    const/high16 v28, 0xc00000

    and-int v29, v3, v28

    const/high16 v30, 0x400000

    const/high16 v31, 0x800000

    move-object/from16 v13, p7

    if-nez v29, :cond_10

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_f

    move/from16 v32, v31

    goto :goto_b

    :cond_f
    move/from16 v32, v30

    :goto_b
    or-int v8, v8, v32

    :cond_10
    const/high16 v32, 0x6000000

    and-int v33, v3, v32

    const/high16 v34, 0x2000000

    const/high16 v35, 0x4000000

    move-object/from16 v15, p8

    if-nez v33, :cond_12

    invoke-virtual {v7, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_11

    move/from16 v36, v35

    goto :goto_c

    :cond_11
    move/from16 v36, v34

    :goto_c
    or-int v8, v8, v36

    :cond_12
    const/high16 v36, 0x30000000

    and-int v36, v3, v36

    move-object/from16 v3, p9

    if-nez v36, :cond_14

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_13

    const/high16 v36, 0x20000000

    goto :goto_d

    :cond_13
    const/high16 v36, 0x10000000

    :goto_d
    or-int v8, v8, v36

    :cond_14
    and-int/lit8 v36, v4, 0x6

    move-object/from16 v3, p10

    if-nez v36, :cond_16

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_15

    const/16 v36, 0x4

    goto :goto_e

    :cond_15
    const/16 v36, 0x2

    :goto_e
    or-int v36, v4, v36

    goto :goto_f

    :cond_16
    move/from16 v36, v4

    :goto_f
    and-int/lit8 v37, v4, 0x30

    move-object/from16 v3, p11

    if-nez v37, :cond_18

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_17

    const/16 v29, 0x20

    goto :goto_10

    :cond_17
    const/16 v29, 0x10

    :goto_10
    or-int v36, v36, v29

    :cond_18
    and-int/lit16 v3, v4, 0x180

    if-nez v3, :cond_1a

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_11

    :cond_19
    const/16 v16, 0x80

    :goto_11
    or-int v36, v36, v16

    :cond_1a
    and-int/lit16 v3, v4, 0xc00

    if-nez v3, :cond_1c

    move-object/from16 v3, p13

    invoke-virtual {v7, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    move/from16 v17, v18

    :cond_1b
    or-int v36, v36, v17

    goto :goto_12

    :cond_1c
    move-object/from16 v3, p13

    :goto_12
    and-int/lit16 v2, v4, 0x6000

    if-nez v2, :cond_1e

    move-object/from16 v2, p14

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1d

    move/from16 v19, v20

    :cond_1d
    or-int v36, v36, v19

    goto :goto_13

    :cond_1e
    move-object/from16 v2, p14

    :goto_13
    and-int v16, v4, v21

    move-object/from16 v2, p15

    if-nez v16, :cond_20

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1f

    move/from16 v23, v24

    :cond_1f
    or-int v36, v36, v23

    :cond_20
    and-int v16, v4, v22

    move-object/from16 v2, p16

    if-nez v16, :cond_22

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_21

    move/from16 v26, v27

    :cond_21
    or-int v36, v36, v26

    :cond_22
    and-int v16, v4, v28

    if-nez v16, :cond_24

    invoke-virtual {v7, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_23

    move/from16 v30, v31

    :cond_23
    or-int v36, v36, v30

    :cond_24
    and-int v16, v4, v32

    move-object/from16 v2, p18

    if-nez v16, :cond_26

    invoke-virtual {v7, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_25

    move/from16 v34, v35

    :cond_25
    or-int v36, v36, v34

    :cond_26
    const v16, 0x12492493

    and-int v2, v8, v16

    const v3, 0x12492492

    const/16 v18, 0x0

    const/16 v19, 0x1

    if-ne v2, v3, :cond_28

    const v2, 0x2492493

    and-int v2, v36, v2

    const v3, 0x2492492

    if-eq v2, v3, :cond_27

    goto :goto_14

    :cond_27
    move/from16 v2, v18

    goto :goto_15

    :cond_28
    :goto_14
    move/from16 v2, v19

    :goto_15
    and-int/lit8 v3, v8, 0x1

    invoke-virtual {v7, v3, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_2d

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean v2, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->f:Z

    if-eqz v2, :cond_2a

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_29

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->a:Landroidx/compose/ui/draw/BlurredEdgeTreatment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/draw/BlurredEdgeTreatment;->b:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    new-instance v8, Landroidx/compose/ui/draw/BlurredEdgeTreatment;

    sget v8, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->a:F

    invoke-static {v2, v8, v8, v3}, Landroidx/compose/ui/draw/BlurKt;->a(Landroidx/compose/ui/Modifier;FFLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    goto :goto_16

    :cond_29
    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_16

    :cond_2a
    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :goto_16
    invoke-interface {v0, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v20

    move-object v2, v0

    new-instance v0, Lb11;

    move-object/from16 v21, v2

    move-object/from16 v39, v5

    move-object/from16 v17, v6

    move-object/from16 v38, v7

    move-object v3, v9

    move-object v4, v10

    move-object v8, v11

    move v2, v12

    move-object v10, v13

    move-object v13, v14

    move-object/from16 v16, v15

    move-object/from16 v7, p9

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v14, p15

    move-object/from16 v9, p16

    move-object/from16 v15, p18

    invoke-direct/range {v0 .. v17}, Lb11;-><init>(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;ZLcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move-object/from16 v6, v17

    const v2, 0x7add3a2a

    move-object/from16 v12, v38

    invoke-static {v2, v1, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    const/16 v13, 0xc00

    const/4 v14, 0x6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v8, v20

    invoke-static/range {v8 .. v14}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    iget-boolean v8, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->f:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v10

    invoke-static {v1, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object v11

    new-instance v1, Lgl;

    const/4 v2, 0x5

    move-object/from16 v3, p12

    invoke-direct {v1, v6, v3, v2}, Lgl;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    const v2, -0xc13ddd4

    invoke-static {v2, v1, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v13

    const v15, 0x30d80

    const/16 v16, 0x12

    move-object v14, v12

    const/4 v12, 0x0

    invoke-static/range {v8 .. v16}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object v12, v14

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-object/from16 v2, v39

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->b:Z

    if-nez v2, :cond_2b

    iget-boolean v2, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->c:Z

    if-eqz v2, :cond_2c

    :cond_2b
    move/from16 v18, v19

    :cond_2c
    iget-boolean v3, v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->c:Z

    const/high16 v2, 0x70000

    shr-int/lit8 v4, v36, 0x6

    and-int/2addr v2, v4

    or-int/lit8 v8, v2, 0x6

    const/16 v9, 0x14

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, v1

    move-object v7, v12

    move/from16 v1, v18

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/loading/LvLoadingKt;->b(Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/loading/LoadingMode;ZJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_17

    :cond_2d
    move-object/from16 v21, v0

    move-object v12, v7

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_17
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2e

    move-object v1, v0

    new-instance v0, Lc11;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

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

    move/from16 v20, p20

    move-object/from16 v40, v1

    move-object/from16 v1, v21

    move/from16 v21, p21

    invoke-direct/range {v0 .. v21}, Lc11;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V

    move-object/from16 v1, v40

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2e
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v4, p3

    move-object/from16 v9, p11

    move/from16 v10, p16

    move/from16 v11, p17

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->a:Ljava/util/List;

    iget-boolean v2, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->f:Z

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x518f5d74

    move-object/from16 v5, p15

    invoke-interface {v5, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    and-int/lit8 v3, v10, 0x6

    if-nez v3, :cond_1

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v10

    goto :goto_1

    :cond_1
    move v3, v10

    :goto_1
    and-int/lit8 v6, v10, 0x30

    if-nez v6, :cond_3

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_2

    :cond_2
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :cond_3
    and-int/lit16 v6, v10, 0x180

    const/16 v16, 0x80

    if-nez v6, :cond_5

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x100

    goto :goto_3

    :cond_4
    move/from16 v6, v16

    :goto_3
    or-int/2addr v3, v6

    :cond_5
    and-int/lit16 v6, v10, 0xc00

    const/16 v17, 0x400

    if-nez v6, :cond_7

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x800

    goto :goto_4

    :cond_6
    move/from16 v6, v17

    :goto_4
    or-int/2addr v3, v6

    :cond_7
    and-int/lit16 v6, v10, 0x6000

    const/16 v19, 0x2000

    move/from16 v20, v6

    move-object/from16 v6, p4

    if-nez v20, :cond_9

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    const/16 v21, 0x4000

    goto :goto_5

    :cond_8
    move/from16 v21, v19

    :goto_5
    or-int v3, v3, v21

    :cond_9
    const/high16 v21, 0x30000

    and-int v21, v10, v21

    move-object/from16 v6, p5

    if-nez v21, :cond_b

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    const/high16 v21, 0x20000

    goto :goto_6

    :cond_a
    const/high16 v21, 0x10000

    :goto_6
    or-int v3, v3, v21

    :cond_b
    const/high16 v21, 0x180000

    and-int v21, v10, v21

    move-object/from16 v6, p6

    if-nez v21, :cond_d

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    const/high16 v21, 0x100000

    goto :goto_7

    :cond_c
    const/high16 v21, 0x80000

    :goto_7
    or-int v3, v3, v21

    :cond_d
    const/high16 v21, 0xc00000

    and-int v21, v10, v21

    move-object/from16 v6, p7

    if-nez v21, :cond_f

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    const/high16 v21, 0x800000

    goto :goto_8

    :cond_e
    const/high16 v21, 0x400000

    :goto_8
    or-int v3, v3, v21

    :cond_f
    const/high16 v21, 0x6000000

    and-int v21, v10, v21

    move-object/from16 v6, p8

    if-nez v21, :cond_11

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    const/high16 v21, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v21, 0x2000000

    :goto_9
    or-int v3, v3, v21

    :cond_11
    const/high16 v21, 0x30000000

    and-int v21, v10, v21

    move-object/from16 v6, p9

    if-nez v21, :cond_13

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    const/high16 v22, 0x20000000

    goto :goto_a

    :cond_12
    const/high16 v22, 0x10000000

    :goto_a
    or-int v3, v3, v22

    :cond_13
    and-int/lit8 v22, v11, 0x6

    move-object/from16 v6, p10

    if-nez v22, :cond_15

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    const/16 v22, 0x4

    goto :goto_b

    :cond_14
    const/16 v22, 0x2

    :goto_b
    or-int v22, v11, v22

    goto :goto_c

    :cond_15
    move/from16 v22, v11

    :goto_c
    and-int/lit8 v23, v11, 0x30

    if-nez v23, :cond_17

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_16

    const/16 v23, 0x20

    goto :goto_d

    :cond_16
    const/16 v23, 0x10

    :goto_d
    or-int v22, v22, v23

    :cond_17
    and-int/lit16 v13, v11, 0x180

    if-nez v13, :cond_19

    move-object/from16 v13, p12

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_18

    const/16 v16, 0x100

    :cond_18
    or-int v22, v22, v16

    goto :goto_e

    :cond_19
    move-object/from16 v13, p12

    :goto_e
    and-int/lit16 v14, v11, 0xc00

    if-nez v14, :cond_1b

    move-object/from16 v14, p13

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    const/16 v17, 0x800

    :cond_1a
    or-int v22, v22, v17

    goto :goto_f

    :cond_1b
    move-object/from16 v14, p13

    :goto_f
    and-int/lit16 v15, v11, 0x6000

    if-nez v15, :cond_1d

    move-object/from16 v15, p14

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1c

    const/16 v19, 0x4000

    :cond_1c
    or-int v22, v22, v19

    :goto_10
    move/from16 v6, v22

    goto :goto_11

    :cond_1d
    move-object/from16 v15, p14

    goto :goto_10

    :goto_11
    const v19, 0x12492493

    and-int v5, v3, v19

    move/from16 v19, v2

    const v2, 0x12492492

    if-ne v5, v2, :cond_1f

    and-int/lit16 v2, v6, 0x2493

    const/16 v5, 0x2492

    if-eq v2, v5, :cond_1e

    goto :goto_12

    :cond_1e
    const/4 v2, 0x0

    goto :goto_13

    :cond_1f
    :goto_12
    const/4 v2, 0x1

    :goto_13
    and-int/lit8 v5, v3, 0x1

    invoke-virtual {v12, v5, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_53

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v12}, Lcom/google/accompanist/systemuicontroller/SystemUiControllerKt;->a(Landroidx/compose/runtime/Composer;)Lcom/google/accompanist/systemuicontroller/AndroidSystemUiController;

    move-result-object v2

    sget-object v5, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v10, Landroidx/compose/ui/graphics/Color;->h:J

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;

    iget-boolean v4, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->b:Z

    if-nez v19, :cond_20

    if-nez v4, :cond_20

    move/from16 v23, v4

    iget-boolean v4, v1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;->c:Z

    if-nez v4, :cond_21

    const/4 v4, 0x1

    goto :goto_14

    :cond_20
    move/from16 v23, v4

    :cond_21
    const/4 v4, 0x0

    :goto_14
    invoke-static {v2, v10, v11, v4}, Lcom/google/accompanist/systemuicontroller/SystemUiController;->b(Lcom/google/accompanist/systemuicontroller/SystemUiController;JZ)V

    if-nez v19, :cond_22

    iget-boolean v4, v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->b:Z

    if-nez v4, :cond_22

    if-nez v23, :cond_22

    const/4 v4, 0x1

    goto :goto_15

    :cond_22
    const/4 v4, 0x0

    :goto_15
    sget-object v13, Lcom/google/accompanist/systemuicontroller/SystemUiControllerKt;->b:Lkotlin/jvm/functions/Function1;

    iget-object v14, v2, Lcom/google/accompanist/systemuicontroller/AndroidSystemUiController;->b:Landroid/view/Window;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/google/accompanist/systemuicontroller/AndroidSystemUiController;->c:Landroidx/core/view/WindowInsetsControllerCompat;

    if-nez v2, :cond_23

    goto :goto_16

    :cond_23
    invoke-virtual {v2, v4}, Landroidx/core/view/WindowInsetsControllerCompat;->d(Z)V

    :goto_16
    move-object/from16 v19, v2

    if-nez v14, :cond_24

    goto :goto_17

    :cond_24
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    :goto_17
    if-nez v14, :cond_25

    goto :goto_19

    :cond_25
    if-eqz v4, :cond_27

    if-eqz v19, :cond_26

    invoke-virtual/range {v19 .. v19}, Landroidx/core/view/WindowInsetsControllerCompat;->b()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_26

    goto :goto_18

    :cond_26
    new-instance v2, Landroidx/compose/ui/graphics/Color;

    invoke-direct {v2, v10, v11}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    invoke-interface {v13, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/Color;

    iget-wide v10, v2, Landroidx/compose/ui/graphics/Color;->a:J

    :cond_27
    :goto_18
    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->i(J)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    :goto_19
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v10, :cond_28

    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v2, v12}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_28
    move-object v11, v2

    check-cast v11, Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v2, :cond_29

    if-ne v4, v10, :cond_2a

    :cond_29
    new-instance v4, Lhv0;

    const/16 v2, 0x8

    invoke-direct {v4, v1, v2}, Lhv0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2a
    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v13, 0x6

    const/4 v2, 0x2

    const/4 v14, 0x0

    invoke-static {v14, v4, v12, v13, v2}, Landroidx/compose/foundation/pager/PagerStateKt;->b(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2c

    if-eqz v23, :cond_2b

    goto :goto_1a

    :cond_2b
    invoke-virtual {v4}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    goto :goto_1b

    :cond_2c
    :goto_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-static {v0, v12}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v2, :cond_2d

    if-ne v14, v10, :cond_2e

    :cond_2d
    new-instance v14, Lu00;

    const/16 v2, 0x1d

    invoke-direct {v14, v2, v0}, Lu00;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2e
    check-cast v14, Lkotlin/jvm/functions/Function0;

    move-object/from16 v22, v0

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v14, v12, v13, v2}, Landroidx/compose/foundation/pager/PagerStateKt;->b(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v14

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    and-int/lit8 v2, v3, 0x70

    move/from16 v29, v13

    const/16 v13, 0x20

    if-ne v2, v13, :cond_2f

    const/4 v2, 0x1

    goto :goto_1c

    :cond_2f
    const/4 v2, 0x0

    :goto_1c
    or-int/2addr v0, v2

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_30

    if-ne v2, v10, :cond_31

    :cond_30
    new-instance v2, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt$SpotlightScreen$1$1;

    const/4 v0, 0x0

    invoke-direct {v2, v4, v7, v0}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt$SpotlightScreen$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_31
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v4, v2}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    and-int/lit16 v2, v3, 0x380

    const/16 v13, 0x100

    if-ne v2, v13, :cond_32

    const/4 v2, 0x1

    goto :goto_1d

    :cond_32
    const/4 v2, 0x0

    :goto_1d
    or-int/2addr v0, v2

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_34

    if-ne v2, v10, :cond_33

    goto :goto_1e

    :cond_33
    const/4 v0, 0x0

    goto :goto_1f

    :cond_34
    :goto_1e
    new-instance v2, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt$SpotlightScreen$2$1;

    const/4 v0, 0x0

    invoke-direct {v2, v14, v8, v4, v0}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt$SpotlightScreen$2$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/pager/PagerState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_1f
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v14, v2}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-boolean v2, v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightContainerStateUiModel;->a:Z

    if-eqz v2, :cond_39

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    if-eqz v2, :cond_35

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->g:Ljava/util/List;

    goto :goto_20

    :cond_35
    move-object v2, v0

    :goto_20
    check-cast v2, Ljava/util/Collection;

    if-eqz v2, :cond_39

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_36

    goto :goto_22

    :cond_36
    invoke-virtual {v14}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v2

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    if-eqz v5, :cond_37

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->g:Ljava/util/List;

    if-eqz v5, :cond_37

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    goto :goto_21

    :cond_37
    const/4 v5, 0x0

    :goto_21
    if-lt v2, v5, :cond_38

    goto :goto_22

    :cond_38
    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    if-eqz v2, :cond_39

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;->g:Ljava/util/List;

    if-eqz v2, :cond_39

    invoke-virtual {v14}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    :cond_39
    :goto_22
    invoke-static {v0, v12}, Landroidx/compose/runtime/SnapshotStateKt;->l(Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_3a

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_3a
    move-object v5, v0

    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    and-int/lit16 v2, v6, 0x1c00

    move/from16 v16, v0

    const/16 v0, 0x800

    if-ne v2, v0, :cond_3b

    const/16 v19, 0x1

    goto :goto_23

    :cond_3b
    const/16 v19, 0x0

    :goto_23
    or-int v16, v16, v19

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    or-int v16, v16, v19

    move/from16 v19, v6

    and-int/lit16 v6, v3, 0x1c00

    if-ne v6, v0, :cond_3c

    const/4 v0, 0x1

    goto :goto_24

    :cond_3c
    const/4 v0, 0x0

    :goto_24
    or-int v0, v16, v0

    move/from16 v16, v0

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v16, :cond_3e

    if-ne v0, v10, :cond_3d

    goto :goto_25

    :cond_3d
    move v7, v2

    move/from16 v16, v3

    move-object v2, v4

    move-object v3, v5

    move v8, v6

    move-object/from16 v20, v13

    const/16 v13, 0x4000

    move-object/from16 v6, p3

    goto :goto_26

    :cond_3e
    :goto_25
    new-instance v0, Ld11;

    move/from16 v16, v6

    const/4 v6, 0x0

    move v7, v2

    move-object/from16 v20, v13

    move/from16 v8, v16

    const/16 v13, 0x4000

    move-object/from16 v2, p13

    move/from16 v16, v3

    move-object v3, v4

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Ld11;-><init>(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    move-object v2, v3

    move-object v6, v4

    move-object v3, v5

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_26
    check-cast v0, Lkotlin/jvm/functions/Function0;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5, v0, v12, v5, v4}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v5, "SpotlightScreen"

    invoke-direct {v0, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v5}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v27

    invoke-interface/range {v22 .. v22}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3f

    const v0, -0x3a58a16c

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v28, v4

    :goto_27
    const/16 v5, 0x800

    goto :goto_28

    :cond_3f
    const/4 v0, 0x0

    const v5, -0x2b2c218d

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v5, Landroidx/compose/ui/platform/InspectionModeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v28, v5

    goto :goto_27

    :goto_28
    if-ne v8, v5, :cond_40

    move v5, v4

    goto :goto_29

    :cond_40
    move v5, v0

    :goto_29
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v5, :cond_41

    if-ne v0, v10, :cond_42

    :cond_41
    new-instance v0, Lna;

    const/16 v5, 0xd

    invoke-direct {v0, v6, v3, v5}, Lna;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_42
    move-object/from16 v32, v0

    check-cast v32, Lkotlin/jvm/functions/Function0;

    const v0, 0xe000

    and-int v0, v16, v0

    if-ne v0, v13, :cond_43

    move v0, v4

    goto :goto_2a

    :cond_43
    const/4 v0, 0x0

    :goto_2a
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_45

    if-ne v5, v10, :cond_44

    goto :goto_2b

    :cond_44
    move-object v0, v2

    move-object v2, v11

    move-object/from16 v25, v14

    goto :goto_2c

    :cond_45
    :goto_2b
    new-instance v21, Lcom/vuitton/android/presentation/screen/spotlight/components/a;

    const/16 v26, 0x2

    move-object/from16 v22, p4

    move-object/from16 v23, v2

    move-object/from16 v24, v11

    move-object/from16 v25, v14

    invoke-direct/range {v21 .. v26}, Lcom/vuitton/android/presentation/screen/spotlight/components/a;-><init>(Ljava/lang/Object;Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Object;I)V

    move-object/from16 v5, v21

    move-object/from16 v0, v23

    move-object/from16 v2, v24

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_2c
    move-object v11, v5

    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v5, v13

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v5, v13

    const/high16 v13, 0x70000000

    and-int v13, v16, v13

    const/high16 v14, 0x20000000

    if-ne v13, v14, :cond_46

    move v13, v4

    goto :goto_2d

    :cond_46
    const/4 v13, 0x0

    :goto_2d
    or-int/2addr v5, v13

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v5, :cond_47

    if-ne v13, v10, :cond_48

    :cond_47
    move-object/from16 v23, v0

    goto :goto_2e

    :cond_48
    move-object v14, v2

    move-object v2, v0

    move-object v0, v13

    move-object v13, v3

    move-object v3, v14

    move v14, v4

    const/16 v31, 0x0

    goto :goto_2f

    :goto_2e
    new-instance v0, Lcom/vuitton/android/presentation/screen/spotlight/components/a;

    const/4 v5, 0x0

    move-object v13, v3

    move v14, v4

    const/16 v31, 0x0

    move-object/from16 v4, p9

    move-object v3, v2

    move-object/from16 v2, v23

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/spotlight/components/a;-><init>(Ljava/lang/Object;Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Object;I)V

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_2f
    move-object/from16 v21, v0

    check-cast v21, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    and-int/lit8 v4, v19, 0xe

    const/4 v5, 0x4

    if-ne v4, v5, :cond_49

    move v4, v14

    goto :goto_30

    :cond_49
    move/from16 v4, v31

    :goto_30
    or-int/2addr v0, v4

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_4a

    if-ne v4, v10, :cond_4b

    :cond_4a
    new-instance v0, Lcom/vuitton/android/presentation/screen/spotlight/components/a;

    const/4 v5, 0x1

    move-object/from16 v4, p10

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/spotlight/components/a;-><init>(Ljava/lang/Object;Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/Object;I)V

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :cond_4b
    move-object/from16 v18, v4

    check-cast v18, Lkotlin/jvm/functions/Function1;

    and-int/lit8 v0, v19, 0x70

    const/16 v3, 0x20

    if-ne v0, v3, :cond_4c

    move v0, v14

    goto :goto_31

    :cond_4c
    move/from16 v0, v31

    :goto_31
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_4d

    if-ne v3, v10, :cond_4e

    :cond_4d
    new-instance v3, Lrp0;

    const/16 v0, 0x1a

    invoke-direct {v3, v9, v2, v0}, Lrp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_4e
    move-object/from16 v17, v3

    check-cast v17, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    const/16 v5, 0x800

    if-ne v7, v5, :cond_4f

    move v3, v14

    goto :goto_32

    :cond_4f
    move/from16 v3, v31

    :goto_32
    or-int/2addr v0, v3

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    if-ne v8, v5, :cond_50

    goto :goto_33

    :cond_50
    move/from16 v14, v31

    :goto_33
    or-int/2addr v0, v14

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_51

    if-ne v3, v10, :cond_52

    :cond_51
    new-instance v0, Ld11;

    const/4 v6, 0x1

    move-object/from16 v4, p3

    move-object v3, v2

    move-object v5, v13

    move-object/from16 v2, p13

    invoke-direct/range {v0 .. v6}, Ld11;-><init>(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    move-object v2, v3

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v0

    :cond_52
    check-cast v3, Lkotlin/jvm/functions/Function0;

    shl-int/lit8 v0, v16, 0x9

    and-int/lit16 v0, v0, 0x1c00

    or-int/lit8 v0, v0, 0x6

    const/high16 v1, 0x1c00000

    and-int v1, v16, v1

    or-int/2addr v0, v1

    shr-int/lit8 v1, v16, 0xf

    and-int/lit8 v1, v1, 0x7e

    shr-int/lit8 v4, v16, 0x12

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v1, v4

    shl-int/lit8 v4, v19, 0xc

    const/high16 v5, 0x380000

    and-int/2addr v5, v4

    or-int/2addr v1, v5

    const/high16 v5, 0xe000000

    and-int/2addr v4, v5

    or-int/2addr v1, v4

    move-object/from16 v10, p5

    move-object/from16 v7, p7

    move-object/from16 v16, p12

    move-object v9, v11

    move-object/from16 v19, v12

    move-object/from16 v14, v18

    move-object/from16 v5, v20

    move-object/from16 v13, v21

    move/from16 v6, v28

    move-object/from16 v4, v30

    move-object/from16 v8, v32

    move-object/from16 v11, p6

    move-object/from16 v12, p8

    move/from16 v20, v0

    move/from16 v21, v1

    move-object v1, v2

    move-object/from16 v18, v15

    move-object/from16 v15, v17

    move-object/from16 v2, v25

    move-object/from16 v0, v27

    move-object/from16 v17, v3

    move-object/from16 v3, p0

    invoke-static/range {v0 .. v21}, Lcom/vuitton/android/presentation/screen/spotlight/components/SpotlightScreenKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_34

    :cond_53
    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_34
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_54

    move-object v1, v0

    new-instance v0, Lru;

    move-object/from16 v2, p1

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

    move/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v33, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v17}, Lru;-><init>(Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    move-object/from16 v1, v33

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_54
    return-void
.end method
