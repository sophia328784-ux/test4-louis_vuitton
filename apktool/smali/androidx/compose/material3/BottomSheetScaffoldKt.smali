.class public abstract Landroidx/compose/material3/BottomSheetScaffoldKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/BottomSheetScaffoldKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "material3"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/BottomSheetScaffoldState;FFLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V
    .locals 27

    move-object/from16 v0, p1

    move-wide/from16 v8, p6

    move/from16 v1, p22

    move/from16 v2, p23

    const-string v3, "BottomSheetScaffold-sdMYb0k"

    if-eqz v0, :cond_0

    invoke-static {v0, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v4, 0x36d73cd8

    move-object/from16 v5, p20

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v4

    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_1

    or-int/lit8 v10, p21, 0x30

    :goto_0
    move-object/from16 v11, p2

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/16 v10, 0x20

    goto :goto_1

    :cond_2
    const/16 v10, 0x10

    :goto_1
    or-int v10, p21, v10

    goto :goto_0

    :goto_2
    invoke-virtual {v4, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x100

    goto :goto_3

    :cond_3
    const/16 v12, 0x80

    :goto_3
    or-int/2addr v10, v12

    move/from16 v12, p3

    invoke-virtual {v4, v12}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v15

    const/16 v16, 0x400

    const/16 v17, 0x800

    if-eqz v15, :cond_4

    move/from16 v15, v17

    goto :goto_4

    :cond_4
    move/from16 v15, v16

    :goto_4
    or-int/2addr v10, v15

    or-int/lit16 v10, v10, 0x6000

    and-int/lit8 v15, v2, 0x20

    const/high16 v18, 0x10000

    if-nez v15, :cond_5

    move-object/from16 v15, p5

    invoke-virtual {v4, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    const/high16 v19, 0x20000

    goto :goto_5

    :cond_5
    move-object/from16 v15, p5

    :cond_6
    move/from16 v19, v18

    :goto_5
    or-int v10, v10, v19

    invoke-virtual {v4, v8, v9}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v19

    if-eqz v19, :cond_7

    const/high16 v19, 0x100000

    goto :goto_6

    :cond_7
    const/high16 v19, 0x80000

    :goto_6
    or-int v10, v10, v19

    const/high16 v19, 0x36400000

    or-int v10, v10, v19

    and-int/lit16 v6, v2, 0x800

    if-eqz v6, :cond_8

    or-int/lit8 v7, v1, 0x30

    move v13, v7

    move/from16 v7, p12

    goto :goto_8

    :cond_8
    move/from16 v7, p12

    invoke-virtual {v4, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v19

    if-eqz v19, :cond_9

    const/16 v19, 0x20

    goto :goto_7

    :cond_9
    const/16 v19, 0x10

    :goto_7
    or-int v19, v1, v19

    move/from16 v13, v19

    :goto_8
    and-int/lit16 v14, v2, 0x1000

    if-eqz v14, :cond_b

    or-int/lit16 v13, v13, 0x180

    move-object/from16 v19, v0

    :cond_a
    move-object/from16 v0, p13

    goto :goto_a

    :cond_b
    move-object/from16 v19, v0

    and-int/lit16 v0, v1, 0x180

    if-nez v0, :cond_a

    move-object/from16 v0, p13

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    const/16 v20, 0x100

    goto :goto_9

    :cond_c
    const/16 v20, 0x80

    :goto_9
    or-int v13, v13, v20

    :goto_a
    and-int/lit16 v0, v2, 0x2000

    if-eqz v0, :cond_e

    or-int/lit16 v13, v13, 0xc00

    move/from16 v20, v0

    :cond_d
    move-object/from16 v0, p14

    goto :goto_b

    :cond_e
    move/from16 v20, v0

    and-int/lit16 v0, v1, 0xc00

    if-nez v0, :cond_d

    move-object/from16 v0, p14

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_f

    move/from16 v16, v17

    :cond_f
    or-int v13, v13, v16

    :goto_b
    and-int/lit16 v0, v1, 0x6000

    if-nez v0, :cond_12

    and-int/lit16 v0, v2, 0x4000

    if-nez v0, :cond_10

    move-wide/from16 v0, p15

    invoke-virtual {v4, v0, v1}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v16

    if-eqz v16, :cond_11

    const/16 v16, 0x4000

    goto :goto_c

    :cond_10
    move-wide/from16 v0, p15

    :cond_11
    const/16 v16, 0x2000

    :goto_c
    or-int v13, v13, v16

    goto :goto_d

    :cond_12
    move-wide/from16 v0, p15

    :goto_d
    or-int v13, v13, v18

    const v16, 0x12492493

    and-int v0, v10, v16

    const v1, 0x12492492

    move/from16 p1, v5

    const/4 v5, 0x1

    if-ne v0, v1, :cond_14

    const v0, 0x92493

    and-int/2addr v0, v13

    const v1, 0x92492

    if-eq v0, v1, :cond_13

    goto :goto_e

    :cond_13
    const/4 v0, 0x0

    goto :goto_f

    :cond_14
    :goto_e
    move v0, v5

    :goto_f
    and-int/lit8 v1, v10, 0x1

    invoke-virtual {v4, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, p21, 0x1

    if-eqz v0, :cond_16

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_10

    :cond_15
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v5, p4

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move-object/from16 v2, p13

    move-wide/from16 v0, p15

    move-wide/from16 v13, p17

    move v6, v7

    move-object v7, v15

    move-object/from16 v3, v19

    const/16 p1, 0x0

    move-object/from16 v15, p14

    goto/16 :goto_16

    :cond_16
    :goto_10
    if-eqz p1, :cond_17

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_11

    :cond_17
    move-object/from16 v0, v19

    :goto_11
    sget v3, Landroidx/compose/material3/BottomSheetDefaults;->c:F

    and-int/lit8 v10, v2, 0x20

    if-eqz v10, :cond_18

    sget-object v10, Landroidx/compose/material3/BottomSheetDefaults;->a:Landroidx/compose/material3/BottomSheetDefaults;

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v10, Landroidx/compose/material3/tokens/SheetBottomTokens;->a:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    invoke-static {v10, v4}, Landroidx/compose/material3/ShapesKt;->a(Landroidx/compose/material3/tokens/ShapeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/ui/graphics/Shape;

    move-result-object v10

    goto :goto_12

    :cond_18
    move-object v10, v15

    :goto_12
    invoke-static {v8, v9, v4}, Landroidx/compose/material3/ColorSchemeKt;->b(JLandroidx/compose/runtime/Composer;)J

    move-result-wide v15

    sget-object v13, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    sget v13, Landroidx/compose/material3/BottomSheetDefaults;->b:F

    if-eqz v6, :cond_19

    move v7, v5

    :cond_19
    if-eqz v14, :cond_1a

    const/4 v6, 0x0

    goto :goto_13

    :cond_1a
    move-object/from16 v6, p13

    :goto_13
    if-eqz v20, :cond_1b

    sget-object v14, Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt;->a:Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_14

    :cond_1b
    move-object/from16 v14, p14

    :goto_14
    const/16 p1, 0x0

    and-int/lit16 v1, v2, 0x4000

    if-eqz v1, :cond_1c

    invoke-static {v4}, Landroidx/compose/material3/MaterialTheme;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/ColorScheme;

    move-result-object v1

    move-object/from16 p4, v6

    iget-wide v5, v1, Landroidx/compose/material3/ColorScheme;->p:J

    goto :goto_15

    :cond_1c
    move-object/from16 p4, v6

    move-wide/from16 v5, p15

    :goto_15
    invoke-static {v5, v6, v4}, Landroidx/compose/material3/ColorSchemeKt;->b(JLandroidx/compose/runtime/Composer;)J

    move-result-wide v18

    move v2, v3

    move-object v3, v0

    move-wide v0, v5

    move v5, v2

    move-object/from16 v2, p4

    move v6, v7

    move-object v7, v10

    move v12, v13

    move-wide v10, v15

    move-object v15, v14

    move-wide/from16 v13, v18

    :goto_16
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v16, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    move-object/from16 p4, v2

    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v3, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    move-object/from16 v16, v3

    sget-object v3, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v2, v0, v1, v3}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    move-wide/from16 v18, v0

    const/4 v0, 0x0

    invoke-static {v3, v0}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->G()I

    move-result v1

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {v4, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 p5, v5

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move/from16 p8, v6

    iget-object v6, v4, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v6, :cond_20

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v6, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v6, :cond_1d

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_17

    :cond_1d
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_17
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v0, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v3, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    iget-boolean v3, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v3, :cond_1e

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    :cond_1e
    invoke-static {v1, v4, v1, v0}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_1f
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v2, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/material3/ContentColorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {v13, v14, v0}, La;->d(JLandroidx/compose/runtime/DynamicProvidableCompositionLocal;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    move-object v1, v0

    new-instance v0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;

    move-object/from16 v2, p4

    move/from16 v5, p5

    move/from16 v6, p8

    move-object/from16 v3, p19

    move-object/from16 v25, v1

    move-object/from16 v24, v4

    move-wide/from16 v20, v13

    move-object/from16 v14, p0

    move-object/from16 v1, p2

    move/from16 v4, p3

    move-object/from16 v13, p11

    invoke-direct/range {v0 .. v15}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$1$1;-><init>(Landroidx/compose/material3/BottomSheetScaffoldState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;FFZLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function3;)V

    const v1, 0x3b982e1e

    move-object/from16 v3, v24

    invoke-static {v1, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v1, 0x38

    move-object/from16 v4, v25

    invoke-static {v4, v0, v3, v1}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v14, v2

    move v13, v6

    move-object v6, v7

    move-wide v9, v10

    move v11, v12

    move-object/from16 v2, v16

    move-wide/from16 v16, v18

    move-wide/from16 v18, v20

    goto :goto_18

    :cond_20
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p1

    :cond_21
    move-object v3, v4

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v5, p4

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v14, p13

    move-wide/from16 v16, p15

    move v13, v7

    move-object v6, v15

    move-object/from16 v2, v19

    move-object/from16 v15, p14

    move-wide/from16 v18, p17

    :goto_18
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_22

    move-object v1, v0

    new-instance v0, Lkh;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v7, p6

    move-object/from16 v12, p11

    move-object/from16 v20, p19

    move/from16 v21, p21

    move/from16 v22, p22

    move/from16 v23, p23

    move-object/from16 v26, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v23}, Lkh;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/BottomSheetScaffoldState;FFLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;III)V

    move-object/from16 v1, v26

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_22
    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;Landroidx/compose/runtime/Composer;I)V
    .locals 12

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const v0, -0x4894fcb7

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int v1, p7, v1

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    const/16 v7, 0x4000

    if-eqz v4, :cond_1

    move v4, v7

    goto :goto_1

    :cond_1
    const/16 v4, 0x2000

    :goto_1
    or-int/2addr v1, v4

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    const/high16 v8, 0x20000

    if-eqz v4, :cond_2

    move v4, v8

    goto :goto_2

    :cond_2
    const/high16 v4, 0x10000

    :goto_2
    or-int/2addr v1, v4

    const v4, 0x12493

    and-int/2addr v4, v1

    const v9, 0x12492

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eq v4, v9, :cond_3

    move v4, v11

    goto :goto_3

    :cond_3
    move v4, v10

    :goto_3
    and-int/lit8 v9, v1, 0x1

    invoke-virtual {v0, v9, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-nez p0, :cond_4

    sget-object v4, Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt;->a:Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/material3/ComposableSingletons$BottomSheetScaffoldKt;->c:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    goto :goto_4

    :cond_4
    move-object v4, p0

    :goto_4
    new-array v3, v3, [Lkotlin/jvm/functions/Function2;

    aput-object v4, v3, v10

    aput-object p1, v3, v11

    aput-object p2, v3, v2

    const/4 v2, 0x3

    aput-object p3, v3, v2

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/high16 v3, 0x70000

    and-int/2addr v3, v1

    if-ne v3, v8, :cond_5

    move v3, v11

    goto :goto_5

    :cond_5
    move v3, v10

    :goto_5
    const v4, 0xe000

    and-int/2addr v1, v4

    if-ne v1, v7, :cond_6

    move v1, v11

    goto :goto_6

    :cond_6
    move v1, v10

    :goto_6
    or-int/2addr v1, v3

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_7

    if-ne v3, v4, :cond_8

    :cond_7
    new-instance v3, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;

    invoke-direct {v3, v6, v5}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v3, Landroidx/compose/ui/layout/MultiContentMeasurePolicy;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v7, "BottomSheetScaffoldLayout"

    invoke-direct {v1, v7}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->b(Ljava/util/List;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_9

    if-ne v8, v4, :cond_a

    :cond_9
    new-instance v8, Landroidx/compose/ui/layout/MultiContentMeasurePolicyImpl;

    invoke-direct {v8, v3}, Landroidx/compose/ui/layout/MultiContentMeasurePolicyImpl;-><init>(Landroidx/compose/ui/layout/MultiContentMeasurePolicy;)V

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v8, Landroidx/compose/ui/layout/MeasurePolicy;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->G()I

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v9, v0, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v9, :cond_e

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_b

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_7
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v8, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v4, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    iget-boolean v7, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v7, :cond_c

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    :cond_c
    invoke-static {v3, v0, v3, v4}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_d
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_8

    :cond_e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 p0, 0x0

    throw p0

    :cond_f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_8
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_10

    new-instance v0, Lu1;

    const/4 v8, 0x6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lu1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_10
    return-void
.end method

.method public static final c(Landroidx/compose/material3/SheetState;FFZLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 21

    move-object/from16 v1, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    const v0, -0x7db27d14

    move-object/from16 v2, p12

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    or-int v0, p13, v0

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v0, v3

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x800

    goto :goto_3

    :cond_3
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v0, v3

    move-object/from16 v11, p4

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x4000

    goto :goto_4

    :cond_4
    const/16 v3, 0x2000

    :goto_4
    or-int/2addr v0, v3

    move-wide/from16 v12, p5

    invoke-virtual {v9, v12, v13}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v3

    if-eqz v3, :cond_5

    const/high16 v3, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v3, 0x10000

    :goto_5
    or-int/2addr v0, v3

    move-wide/from16 v14, p7

    invoke-virtual {v9, v14, v15}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v3

    if-eqz v3, :cond_6

    const/high16 v3, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v3, 0x80000

    :goto_6
    or-int/2addr v0, v3

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v3, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v3, 0x400000

    :goto_7
    or-int/2addr v0, v3

    move/from16 v15, p9

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v3

    if-eqz v3, :cond_8

    const/high16 v3, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v3, 0x2000000

    :goto_8
    or-int/2addr v0, v3

    move-object/from16 v3, p10

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/high16 v4, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v4, 0x10000000

    :goto_9
    or-int v16, v0, v4

    move-object/from16 v0, p11

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x4

    goto :goto_a

    :cond_a
    move v4, v2

    :goto_a
    const v5, 0x12492493

    and-int v5, v16, v5

    const v14, 0x12492492

    if-ne v5, v14, :cond_c

    and-int/lit8 v4, v4, 0x3

    if-eq v4, v2, :cond_b

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    :cond_c
    :goto_b
    const/4 v2, 0x1

    :goto_c
    and-int/lit8 v4, v16, 0x1

    invoke-virtual {v9, v4, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->DefaultSpatial:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v2, v9}, Landroidx/compose/material3/MotionSchemeKt;->a(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v4

    invoke-static {v2, v9}, Landroidx/compose/material3/MotionSchemeKt;->a(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v2

    sget-object v5, Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;->FastEffects:Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;

    invoke-static {v5, v9}, Landroidx/compose/material3/MotionSchemeKt;->a(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;

    move-result-object v5

    and-int/lit8 v14, v16, 0xe

    const/4 v10, 0x4

    if-ne v14, v10, :cond_d

    const/4 v10, 0x1

    goto :goto_d

    :cond_d
    const/4 v10, 0x0

    :goto_d
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    or-int v10, v10, v20

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    or-int v10, v10, v20

    invoke-virtual {v9, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    or-int v10, v10, v20

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v5

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v10, :cond_f

    if-ne v0, v5, :cond_e

    goto :goto_e

    :cond_e
    move-object v10, v5

    goto :goto_f

    :cond_f
    :goto_e
    new-instance v0, Leh;

    move-object v10, v5

    const/4 v5, 0x0

    move-object/from16 v3, v20

    invoke-direct/range {v0 .. v5}, Leh;-><init>(Landroidx/compose/material3/SheetState;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/FiniteAnimationSpec;I)V

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_f
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v9}, Landroidx/compose/runtime/EffectsKt;->i(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_10

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->b:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v0, v9}, Landroidx/compose/runtime/EffectsKt;->j(Lkotlin/coroutines/EmptyCoroutineContext;Landroidx/compose/runtime/Composer;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object v4, v0

    check-cast v4, Lkotlinx/coroutines/CoroutineScope;

    sget-object v0, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/unit/Density;

    invoke-interface {v2, v6}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result v2

    const-string v3, "StandardBottomSheet-w7I5h1o"

    if-eqz v8, :cond_13

    const v5, 0x7a2839e2

    invoke-static {v9, v5, v3}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v5

    iget-object v11, v1, Landroidx/compose/material3/SheetState;->e:Landroidx/compose/material3/internal/AnchoredDraggableState;

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    move/from16 v20, v11

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v20, :cond_12

    if-ne v11, v10, :cond_11

    goto :goto_10

    :cond_11
    const/4 v12, 0x0

    goto :goto_11

    :cond_12
    :goto_10
    new-instance v11, Landroidx/compose/material3/a;

    const/4 v12, 0x0

    invoke-direct {v11, v4, v1, v12}, Landroidx/compose/material3/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    sget v13, Landroidx/compose/material3/SheetDefaultsKt;->a:F

    new-instance v13, Landroidx/compose/material3/SheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1;

    invoke-direct {v13, v1, v11, v0}, Landroidx/compose/material3/SheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/gestures/Orientation;)V

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v11, v13

    :goto_11
    check-cast v11, Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    const/4 v13, 0x0

    invoke-static {v5, v11, v13}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :cond_13
    const/4 v12, 0x0

    const v5, 0x7a2e4196

    invoke-static {v9, v5, v12, v3}, Ln00;->j(Landroidx/compose/runtime/GapComposer;IZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v5

    :goto_12
    new-instance v11, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v11, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v12, 0x1

    invoke-static {v11, v3, v7, v12}, Landroidx/compose/foundation/layout/SizeKt;->u(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v3, v11}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3, v6}, Landroidx/compose/foundation/layout/SizeKt;->j(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface {v3, v5}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object v5, v1, Landroidx/compose/material3/SheetState;->e:Landroidx/compose/material3/internal/AnchoredDraggableState;

    const/4 v11, 0x4

    if-ne v14, v11, :cond_14

    goto :goto_13

    :cond_14
    const/4 v12, 0x0

    :goto_13
    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->c(F)Z

    move-result v11

    or-int/2addr v11, v12

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v11, :cond_15

    if-ne v12, v10, :cond_16

    :cond_15
    new-instance v12, Lfh;

    invoke-direct {v12, v1, v2}, Lfh;-><init>(Landroidx/compose/material3/SheetState;F)V

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v3, v5, v0, v12}, Landroidx/compose/material3/internal/AnchoredDraggableKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v3, v1, Landroidx/compose/material3/SheetState;->e:Landroidx/compose/material3/internal/AnchoredDraggableState;

    invoke-static {v2, v3, v0, v8}, Landroidx/compose/material3/internal/AnchoredDraggableKt;->c(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/internal/AnchoredDraggableState;Landroidx/compose/foundation/gestures/Orientation;Z)Landroidx/compose/ui/Modifier;

    move-result-object v0

    new-instance v2, Lih;

    const/4 v12, 0x0

    invoke-direct {v2, v1, v12}, Lih;-><init>(Landroidx/compose/material3/SheetState;I)V

    invoke-static {v0, v2}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    new-instance v0, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3;

    move-object/from16 v2, p10

    move-object/from16 v3, p11

    move v5, v8

    invoke-direct/range {v0 .. v5}, Landroidx/compose/material3/BottomSheetScaffoldKt$StandardBottomSheet$3;-><init>(Landroidx/compose/material3/SheetState;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlinx/coroutines/CoroutineScope;Z)V

    const v1, 0x59e70371

    invoke-static {v1, v0, v9}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    shr-int/lit8 v1, v16, 0x9

    and-int/lit8 v2, v1, 0x70

    const/high16 v3, 0xc00000

    or-int/2addr v2, v3

    and-int/lit16 v3, v1, 0x380

    or-int/2addr v2, v3

    and-int/lit16 v3, v1, 0x1c00

    or-int/2addr v2, v3

    const v3, 0xe000

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    const/high16 v3, 0x70000

    and-int/2addr v1, v3

    or-int v18, v2, v1

    const/16 v19, 0x40

    move-wide/from16 v12, p7

    move-object/from16 v16, v0

    move-object/from16 v17, v9

    move-object v8, v10

    const/4 v14, 0x0

    move-object/from16 v9, p4

    move-wide/from16 v10, p5

    invoke-static/range {v8 .. v19}, Landroidx/compose/material3/SurfaceKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJFFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    goto :goto_14

    :cond_17
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_14
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v14

    if-eqz v14, :cond_18

    new-instance v0, Lgh;

    move-object/from16 v1, p0

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p13

    move v2, v6

    move v3, v7

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v13}, Lgh;-><init>(Landroidx/compose/material3/SheetState;FFZLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, v14, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method

.method public static final d(Landroidx/compose/material3/SheetState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/BottomSheetScaffoldState;
    .locals 3

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    const/4 p2, 0x7

    const/4 v0, 0x0

    invoke-static {v0, p1, p0, p2}, Landroidx/compose/material3/BottomSheetScaffoldKt;->e(Landroidx/compose/material3/SheetValue;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object p0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p2, v0, :cond_1

    new-instance p2, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {p2}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast p2, Landroidx/compose/material3/SnackbarHostState;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_2

    if-ne v2, v0, :cond_3

    :cond_2
    new-instance v2, Landroidx/compose/material3/BottomSheetScaffoldState;

    invoke-direct {v2, p0, p2}, Landroidx/compose/material3/BottomSheetScaffoldState;-><init>(Landroidx/compose/material3/SheetState;Landroidx/compose/material3/SnackbarHostState;)V

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v2, Landroidx/compose/material3/BottomSheetScaffoldState;

    return-object v2
.end method

.method public static final e(Landroidx/compose/material3/SheetValue;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;
    .locals 7

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p0, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    :cond_0
    move-object v2, p0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p0

    sget-object p3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p0, p3, :cond_1

    new-instance p0, Ljh;

    const/4 p3, 0x0

    invoke-direct {p0, p3}, Ljh;-><init>(I)V

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object v1, p0

    check-cast v1, Lkotlin/jvm/functions/Function1;

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    and-int/lit8 p0, p2, 0x70

    shl-int/lit8 p3, p2, 0x6

    and-int/lit16 p3, p3, 0x380

    or-int/2addr p0, p3

    shl-int/lit8 p2, p2, 0x3

    and-int/lit16 p2, p2, 0x1c00

    or-int v5, p0, p2

    const/16 v6, 0x31

    const/4 v0, 0x0

    const/4 v3, 0x1

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/SheetDefaultsKt;->b(ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/SheetValue;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object p0

    return-object p0
.end method
