.class public abstract Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
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
.method public static final a(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v8, p0

    move/from16 v12, p2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7bacf740

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, v12

    and-int/lit8 v3, v0, 0x3

    const/4 v13, 0x1

    const/4 v4, 0x0

    if-eq v3, v1, :cond_1

    move v3, v13

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    and-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v5, "ConfirmLayout"

    invoke-direct {v3, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    sget-object v9, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v3, v6, v7, v9}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v7, 0x0

    invoke-static {v3, v6, v7, v1}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v6, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v3, v6, v2, v4}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v3

    iget-wide v6, v2, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v2, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v9, v2, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v9, :cond_3

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v9, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v9, :cond_2

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_2
    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v3, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v6, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v1

    iget-object v4, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    const v1, 0x7f140894

    invoke-static {v2, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v5, v1}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v14

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v19, 0x5

    const/4 v15, 0x0

    const/16 v17, 0x0

    move/from16 v16, v1

    move/from16 v18, v3

    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const-string v3, "careservicesFormRecap_confirm_button"

    invoke-static {v1, v3}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    shl-int/lit8 v0, v0, 0x1b

    const/high16 v1, 0x70000000

    and-int/2addr v0, v1

    const/16 v1, 0x1f8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_3

    :cond_3
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_4
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_3
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lo0;

    const/16 v2, 0x1a

    invoke-direct {v1, v12, v2, v8}, Lo0;-><init>(IILkotlin/jvm/functions/Function0;)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_5
    return-void
.end method

.method public static final b(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
    .locals 45

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v1, p7

    move/from16 v9, p26

    move/from16 v10, p27

    move/from16 v11, p28

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    const v3, -0x3e5423dd

    move-object/from16 v4, p25

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    and-int/lit8 v3, v9, 0x6

    move-object/from16 v13, p0

    if-nez v3, :cond_1

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v9

    goto :goto_1

    :cond_1
    move v3, v9

    :goto_1
    and-int/lit8 v8, v9, 0x30

    if-nez v8, :cond_3

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_2

    :cond_2
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v3, v8

    :cond_3
    and-int/lit16 v8, v9, 0x180

    const/16 v16, 0x80

    const/16 v17, 0x100

    if-nez v8, :cond_5

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move/from16 v8, v17

    goto :goto_3

    :cond_4
    move/from16 v8, v16

    :goto_3
    or-int/2addr v3, v8

    :cond_5
    and-int/lit16 v8, v9, 0xc00

    const/16 v18, 0x400

    const/16 v19, 0x800

    if-nez v8, :cond_7

    move-object/from16 v8, p3

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    move/from16 v20, v19

    goto :goto_4

    :cond_6
    move/from16 v20, v18

    :goto_4
    or-int v3, v3, v20

    goto :goto_5

    :cond_7
    move-object/from16 v8, p3

    :goto_5
    and-int/lit16 v4, v9, 0x6000

    const/16 v20, 0x2000

    const/16 v21, 0x4000

    if-nez v4, :cond_a

    const v4, 0x8000

    and-int/2addr v4, v9

    if-nez v4, :cond_8

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_6

    :cond_8
    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    :goto_6
    if-eqz v4, :cond_9

    move/from16 v4, v21

    goto :goto_7

    :cond_9
    move/from16 v4, v20

    :goto_7
    or-int/2addr v3, v4

    :cond_a
    const/high16 v4, 0x30000

    and-int v22, v9, v4

    const/high16 v23, 0x10000

    const/high16 v24, 0x20000

    if-nez v22, :cond_d

    const/high16 v22, 0x40000

    and-int v22, v9, v22

    if-nez v22, :cond_b

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v22

    goto :goto_8

    :cond_b
    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    :goto_8
    if-eqz v22, :cond_c

    move/from16 v22, v24

    goto :goto_9

    :cond_c
    move/from16 v22, v23

    :goto_9
    or-int v3, v3, v22

    :cond_d
    const/high16 v22, 0x180000

    and-int v25, v9, v22

    const/high16 v26, 0x80000

    const/high16 v27, 0x100000

    if-nez v25, :cond_f

    move/from16 v25, v4

    move-object/from16 v4, p6

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e

    move/from16 v28, v27

    goto :goto_a

    :cond_e
    move/from16 v28, v26

    :goto_a
    or-int v3, v3, v28

    goto :goto_b

    :cond_f
    move/from16 v25, v4

    move-object/from16 v4, p6

    :goto_b
    const/high16 v28, 0xc00000

    and-int v29, v9, v28

    const/high16 v30, 0x400000

    const/high16 v31, 0x800000

    if-nez v29, :cond_11

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_10

    move/from16 v29, v31

    goto :goto_c

    :cond_10
    move/from16 v29, v30

    :goto_c
    or-int v3, v3, v29

    :cond_11
    const/high16 v29, 0x6000000

    and-int v32, v9, v29

    const/high16 v33, 0x2000000

    const/high16 v34, 0x4000000

    move-object/from16 v14, p8

    if-nez v32, :cond_13

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_12

    move/from16 v35, v34

    goto :goto_d

    :cond_12
    move/from16 v35, v33

    :goto_d
    or-int v3, v3, v35

    :cond_13
    const/high16 v35, 0x30000000

    and-int v36, v9, v35

    const/high16 v37, 0x10000000

    const/high16 v38, 0x20000000

    move-object/from16 v15, p9

    if-nez v36, :cond_15

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_14

    move/from16 v39, v38

    goto :goto_e

    :cond_14
    move/from16 v39, v37

    :goto_e
    or-int v3, v3, v39

    :cond_15
    and-int/lit8 v39, v10, 0x6

    move-object/from16 v4, p10

    if-nez v39, :cond_17

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_16

    const/16 v39, 0x4

    goto :goto_f

    :cond_16
    const/16 v39, 0x2

    :goto_f
    or-int v39, v10, v39

    goto :goto_10

    :cond_17
    move/from16 v39, v10

    :goto_10
    and-int/lit8 v40, v10, 0x30

    move-object/from16 v4, p11

    if-nez v40, :cond_19

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_18

    const/16 v40, 0x20

    goto :goto_11

    :cond_18
    const/16 v40, 0x10

    :goto_11
    or-int v39, v39, v40

    :cond_19
    and-int/lit16 v7, v10, 0x180

    if-nez v7, :cond_1b

    move-object/from16 v7, p12

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1a

    move/from16 v41, v17

    goto :goto_12

    :cond_1a
    move/from16 v41, v16

    :goto_12
    or-int v39, v39, v41

    goto :goto_13

    :cond_1b
    move-object/from16 v7, p12

    :goto_13
    move/from16 v41, v3

    and-int/lit16 v3, v10, 0xc00

    if-nez v3, :cond_1d

    move-object/from16 v3, p13

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_1c

    move/from16 v42, v19

    goto :goto_14

    :cond_1c
    move/from16 v42, v18

    :goto_14
    or-int v39, v39, v42

    goto :goto_15

    :cond_1d
    move-object/from16 v3, p13

    :goto_15
    and-int/lit16 v3, v10, 0x6000

    if-nez v3, :cond_1f

    move-object/from16 v3, p14

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_1e

    move/from16 v42, v21

    goto :goto_16

    :cond_1e
    move/from16 v42, v20

    :goto_16
    or-int v39, v39, v42

    goto :goto_17

    :cond_1f
    move-object/from16 v3, p14

    :goto_17
    and-int v25, v10, v25

    move-object/from16 v4, p15

    if-nez v25, :cond_21

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_20

    move/from16 v23, v24

    :cond_20
    or-int v39, v39, v23

    :cond_21
    and-int v22, v10, v22

    move-object/from16 v4, p16

    if-nez v22, :cond_23

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_22

    move/from16 v26, v27

    :cond_22
    or-int v39, v39, v26

    :cond_23
    and-int v22, v10, v28

    move-object/from16 v4, p17

    if-nez v22, :cond_25

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_24

    move/from16 v30, v31

    :cond_24
    or-int v39, v39, v30

    :cond_25
    and-int v22, v10, v29

    move-object/from16 v4, p18

    if-nez v22, :cond_27

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_26

    move/from16 v33, v34

    :cond_26
    or-int v39, v39, v33

    :cond_27
    and-int v22, v10, v35

    move-object/from16 v4, p19

    if-nez v22, :cond_29

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_28

    move/from16 v37, v38

    :cond_28
    or-int v39, v39, v37

    :cond_29
    and-int/lit8 v22, v11, 0x6

    move-object/from16 v4, p20

    if-nez v22, :cond_2b

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2a

    const/16 v40, 0x4

    goto :goto_18

    :cond_2a
    const/16 v40, 0x2

    :goto_18
    or-int v22, v11, v40

    goto :goto_19

    :cond_2b
    move/from16 v22, v11

    :goto_19
    and-int/lit8 v23, v11, 0x30

    move-object/from16 v4, p21

    if-nez v23, :cond_2d

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2c

    const/16 v36, 0x20

    goto :goto_1a

    :cond_2c
    const/16 v36, 0x10

    :goto_1a
    or-int v22, v22, v36

    :cond_2d
    and-int/lit16 v3, v11, 0x180

    if-nez v3, :cond_2f

    move-object/from16 v3, p22

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2e

    move/from16 v16, v17

    :cond_2e
    or-int v22, v22, v16

    goto :goto_1b

    :cond_2f
    move-object/from16 v3, p22

    :goto_1b
    and-int/lit16 v3, v11, 0xc00

    if-nez v3, :cond_31

    move-object/from16 v3, p23

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_30

    move/from16 v18, v19

    :cond_30
    or-int v22, v22, v18

    goto :goto_1c

    :cond_31
    move-object/from16 v3, p23

    :goto_1c
    and-int/lit16 v3, v11, 0x6000

    if-nez v3, :cond_33

    move-object/from16 v3, p24

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_32

    move/from16 v20, v21

    :cond_32
    or-int v22, v22, v20

    :goto_1d
    move/from16 v3, v22

    goto :goto_1e

    :cond_33
    move-object/from16 v3, p24

    goto :goto_1d

    :goto_1e
    const v16, 0x12492493

    and-int v4, v41, v16

    const v5, 0x12492492

    const/16 v17, 0x1

    if-ne v4, v5, :cond_35

    and-int v4, v39, v16

    if-ne v4, v5, :cond_35

    and-int/lit16 v3, v3, 0x2493

    const/16 v4, 0x2492

    if-eq v3, v4, :cond_34

    goto :goto_1f

    :cond_34
    const/4 v3, 0x0

    goto :goto_20

    :cond_35
    :goto_1f
    move/from16 v3, v17

    :goto_20
    and-int/lit8 v4, v41, 0x1

    invoke-virtual {v12, v4, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_36

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static {v5, v4, v12, v3}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v16

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v21

    new-instance v3, Lv8;

    const/4 v4, 0x2

    move-object/from16 v7, p6

    move-object/from16 v8, p23

    move-object v5, v6

    move-object/from16 v6, p4

    invoke-direct/range {v3 .. v8}, Lv8;-><init>(ILcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    const v4, 0x50fe7edf

    invoke-static {v4, v3, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v22

    new-instance v3, Lrs;

    const/4 v4, 0x5

    invoke-direct {v3, v2, v1, v4}, Lrs;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v4, 0x3fb14be

    invoke-static {v4, v3, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v23

    new-instance v3, Lg0;

    const/16 v4, 0x14

    invoke-direct {v3, v0, v4}, Lg0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v4, -0x49085563

    invoke-static {v4, v3, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v24

    new-instance v0, Lvu;

    move-object/from16 v3, p3

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p13

    move-object/from16 v10, p14

    move-object/from16 v11, p15

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v17, p24

    move-object/from16 v43, v12

    move-object v1, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v14, v16

    move-object/from16 v12, p16

    move-object/from16 v13, p20

    move-object/from16 v15, p21

    move-object/from16 v16, p22

    invoke-direct/range {v0 .. v20}, Lvu;-><init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const v1, 0x57d952b4

    move-object/from16 v2, v43

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v15

    const v17, 0x30000db0

    const/16 v18, 0xf1

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v16, v2

    move-object/from16 v14, v21

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    invoke-static/range {v4 .. v18}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v43, v16

    goto :goto_21

    :cond_36
    move-object/from16 v43, v12

    invoke-virtual/range {v43 .. v43}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_21
    invoke-virtual/range {v43 .. v43}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_37

    move-object v1, v0

    new-instance v0, Lwu;

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

    move/from16 v26, p26

    move/from16 v27, p27

    move/from16 v28, p28

    move-object/from16 v44, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v28}, Lwu;-><init>(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;III)V

    move-object/from16 v1, v44

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_37
    return-void
.end method
