.class public abstract Lcom/vuitton/android/presentation/screen/pdp/components/findinstore/FindInStoreComponentKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/pdp/components/findinstore/FindInStoreComponentKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "displayStoreWithAvailabilityOnly",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/FindInStoreViewState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;ZLkotlin/Pair;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v15, p15

    move-object/from16 v1, p16

    move/from16 v3, p19

    move/from16 v4, p20

    const-string v5, "FindInStoreComponent-F3VNa6g"

    if-eqz v0, :cond_0

    invoke-static {v0, v5}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/pdp/models/FindInStoreViewState;->e:Ljava/util/List;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v9, -0x3d94a835

    move-object/from16 v12, p18

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    and-int/lit8 v12, v3, 0x6

    if-nez v12, :cond_2

    invoke-virtual {v9, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x4

    goto :goto_0

    :cond_1
    const/4 v12, 0x2

    :goto_0
    or-int/2addr v12, v3

    goto :goto_1

    :cond_2
    move v12, v3

    :goto_1
    and-int/lit8 v16, v3, 0x30

    const/16 v17, 0x10

    const/16 v18, 0x20

    if-nez v16, :cond_4

    invoke-virtual {v9, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    move/from16 v16, v18

    goto :goto_2

    :cond_3
    move/from16 v16, v17

    :goto_2
    or-int v12, v12, v16

    :cond_4
    and-int/lit16 v13, v3, 0x180

    const/16 v16, 0x80

    const/16 v19, 0x100

    if-nez v13, :cond_6

    move-object/from16 v13, p2

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    move/from16 v20, v19

    goto :goto_3

    :cond_5
    move/from16 v20, v16

    :goto_3
    or-int v12, v12, v20

    goto :goto_4

    :cond_6
    move-object/from16 v13, p2

    :goto_4
    and-int/lit16 v14, v3, 0xc00

    const/16 v20, 0x400

    const/16 v21, 0x800

    if-nez v14, :cond_8

    move-object/from16 v14, p3

    invoke-virtual {v9, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    move/from16 v22, v21

    goto :goto_5

    :cond_7
    move/from16 v22, v20

    :goto_5
    or-int v12, v12, v22

    goto :goto_6

    :cond_8
    move-object/from16 v14, p3

    :goto_6
    move-object/from16 v39, v6

    and-int/lit16 v6, v3, 0x6000

    const/16 v22, 0x2000

    const/16 v23, 0x4000

    if-nez v6, :cond_a

    move-object/from16 v6, p4

    invoke-virtual {v9, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    move/from16 v24, v23

    goto :goto_7

    :cond_9
    move/from16 v24, v22

    :goto_7
    or-int v12, v12, v24

    goto :goto_8

    :cond_a
    move-object/from16 v6, p4

    :goto_8
    const/high16 v24, 0x30000

    and-int v25, v3, v24

    const/high16 v26, 0x10000

    const/high16 v27, 0x20000

    move-object/from16 v3, p5

    if-nez v25, :cond_c

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    move/from16 v25, v27

    goto :goto_9

    :cond_b
    move/from16 v25, v26

    :goto_9
    or-int v12, v12, v25

    :cond_c
    const/high16 v25, 0x180000

    and-int v28, p19, v25

    const/high16 v29, 0x80000

    if-nez v28, :cond_e

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_d

    const/high16 v28, 0x100000

    goto :goto_a

    :cond_d
    move/from16 v28, v29

    :goto_a
    or-int v12, v12, v28

    :cond_e
    const/high16 v28, 0xc00000

    and-int v30, p19, v28

    const/high16 v31, 0x400000

    const/high16 v32, 0x800000

    if-nez v30, :cond_10

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_f

    move/from16 v30, v32

    goto :goto_b

    :cond_f
    move/from16 v30, v31

    :goto_b
    or-int v12, v12, v30

    :cond_10
    const/high16 v30, 0x6000000

    and-int v30, p19, v30

    if-nez v30, :cond_13

    if-nez p8, :cond_11

    const/16 v30, -0x1

    :goto_c
    move/from16 v3, v30

    goto :goto_d

    :cond_11
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v30

    goto :goto_c

    :goto_d
    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v3

    if-eqz v3, :cond_12

    const/high16 v3, 0x4000000

    goto :goto_e

    :cond_12
    const/high16 v3, 0x2000000

    :goto_e
    or-int/2addr v12, v3

    :cond_13
    const/high16 v3, 0x30000000

    and-int v3, p19, v3

    if-nez v3, :cond_15

    invoke-virtual {v9, v10}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_14

    const/high16 v3, 0x20000000

    goto :goto_f

    :cond_14
    const/high16 v3, 0x10000000

    :goto_f
    or-int/2addr v12, v3

    :cond_15
    and-int/lit8 v3, v4, 0x6

    if-nez v3, :cond_17

    invoke-virtual {v9, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x4

    goto :goto_10

    :cond_16
    const/4 v3, 0x2

    :goto_10
    or-int/2addr v3, v4

    goto :goto_11

    :cond_17
    move v3, v4

    :goto_11
    and-int/lit8 v30, v4, 0x30

    move/from16 p0, v3

    move-object/from16 v3, p11

    if-nez v30, :cond_19

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_18

    move/from16 v17, v18

    :cond_18
    or-int v17, p0, v17

    goto :goto_12

    :cond_19
    move/from16 v17, p0

    :goto_12
    and-int/lit16 v3, v4, 0x180

    if-nez v3, :cond_1b

    move-object/from16 v3, p12

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    move/from16 v16, v19

    :cond_1a
    or-int v17, v17, v16

    goto :goto_13

    :cond_1b
    move-object/from16 v3, p12

    :goto_13
    and-int/lit16 v3, v4, 0xc00

    if-nez v3, :cond_1d

    move-object/from16 v3, p13

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1c

    move/from16 v20, v21

    :cond_1c
    or-int v17, v17, v20

    goto :goto_14

    :cond_1d
    move-object/from16 v3, p13

    :goto_14
    and-int/lit16 v3, v4, 0x6000

    if-nez v3, :cond_1f

    move-object/from16 v3, p14

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1e

    move/from16 v22, v23

    :cond_1e
    or-int v17, v17, v22

    goto :goto_15

    :cond_1f
    move-object/from16 v3, p14

    :goto_15
    and-int v16, v4, v24

    if-nez v16, :cond_21

    invoke-virtual {v9, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_20

    move/from16 v26, v27

    :cond_20
    or-int v17, v17, v26

    :cond_21
    and-int v16, v4, v25

    if-nez v16, :cond_23

    invoke-virtual {v9, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_22

    const/high16 v29, 0x100000

    :cond_22
    or-int v17, v17, v29

    :cond_23
    and-int v16, v4, v28

    move-object/from16 v3, p17

    if-nez v16, :cond_25

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_24

    move/from16 v31, v32

    :cond_24
    or-int v17, v17, v31

    :cond_25
    move/from16 v40, v17

    const v16, 0x12492493

    and-int v3, v12, v16

    const v4, 0x12492492

    if-ne v3, v4, :cond_27

    const v3, 0x492493

    and-int v3, v40, v3

    const v4, 0x492492

    if-eq v3, v4, :cond_26

    goto :goto_16

    :cond_26
    const/4 v3, 0x0

    goto :goto_17

    :cond_27
    :goto_16
    const/4 v3, 0x1

    :goto_17
    and-int/lit8 v4, v12, 0x1

    invoke-virtual {v9, v4, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_3f

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v4, :cond_28

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_28
    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v7, 0x0

    const/4 v10, 0x2

    invoke-static {v0, v6, v7, v10}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v6}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v9}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v10

    const/16 v7, 0xe

    move-object/from16 v42, v0

    const/4 v0, 0x0

    invoke-static {v6, v10, v0, v7}, Landroidx/compose/foundation/ScrollKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v10, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v7, v10, v9, v0}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v7

    iget-wide v13, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v13, v14}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v9, v6}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v14, v9, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    const/16 v43, 0x0

    if-eqz v14, :cond_3e

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v14, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v14, :cond_29

    invoke-virtual {v9, v13}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_18

    :cond_29
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_18
    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v7, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v10, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v0, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v0}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v6, v0, v5}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v16

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    const/16 v21, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v0

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v17

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->f:Landroidx/compose/ui/text/TextStyle;

    const v10, 0x7f140586

    invoke-static {v9, v10}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v16

    const/16 v37, 0x0

    const v38, 0x1fff8

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    move-object/from16 v34, v0

    move-wide/from16 v18, v6

    move-object/from16 v35, v9

    invoke-static/range {v16 .. v38}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v16, v35

    const/high16 v0, 0x3f800000    # 1.0f

    move-object/from16 v22, v16

    invoke-static {v5, v0}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    shr-int/lit8 v6, v12, 0xc

    and-int/lit8 v6, v6, 0x70

    or-int/lit8 v6, v6, 0x6

    shr-int/lit8 v7, v12, 0x12

    and-int/lit16 v9, v7, 0x380

    or-int/2addr v6, v9

    shl-int/lit8 v9, v12, 0x3

    const v10, 0xe000

    and-int/2addr v9, v10

    or-int/2addr v6, v9

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v17, p5

    move-object/from16 v18, p8

    move-object/from16 v21, v22

    move/from16 v22, v6

    invoke-static/range {v16 .. v22}, Lcom/vuitton/android/presentation/screen/pdp/components/PdpReferencesRowKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v6, v21

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    invoke-static {v9, v10}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-static {v6, v9}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const v9, 0x51a25a0d

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    if-eqz p6, :cond_2c

    if-eqz v11, :cond_2c

    iget-object v9, v11, Lkotlin/Pair;->c:Ljava/lang/Object;

    iget-object v10, v11, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v10, Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;

    sget-object v13, Lcom/vuitton/android/presentation/screen/pdp/components/findinstore/FindInStoreComponentKt$WhenMappings;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v13, v10

    const v14, 0x7f141045

    const/4 v13, 0x1

    const/high16 v16, 0x70000

    if-eq v10, v13, :cond_2b

    const/4 v13, 0x2

    if-eq v10, v13, :cond_2a

    const v9, -0x4c3c74fc

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_19

    :cond_2a
    const v10, -0x4c43ec92

    invoke-static {v6, v10, v5}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v17

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    const/16 v22, 0x7

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, v10

    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v6, v14}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v20, v9

    check-cast v20, Ljava/util/List;

    and-int/lit16 v9, v12, 0x380

    or-int/lit16 v9, v9, 0xc00

    shr-int/lit8 v12, v40, 0x6

    and-int v12, v12, v16

    or-int v23, v9, v12

    const/16 v24, 0x0

    const/16 v19, 0x0

    move-object/from16 v18, p2

    move-object/from16 v21, p17

    move-object/from16 v22, v6

    move-object/from16 v16, v10

    invoke-static/range {v16 .. v24}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_19

    :cond_2b
    const v10, -0x4c4c1d11

    invoke-static {v6, v10, v5}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v17

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    const/16 v22, 0x7

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, v10

    invoke-static/range {v17 .. v22}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v6, v14}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v20, v9

    check-cast v20, Ljava/util/List;

    and-int/lit16 v9, v12, 0x380

    or-int/lit16 v9, v9, 0xc00

    shr-int/lit8 v12, v40, 0x6

    and-int v12, v12, v16

    or-int v23, v9, v12

    const/16 v24, 0x0

    const/16 v19, 0x1

    move-object/from16 v18, p2

    move-object/from16 v21, p17

    move-object/from16 v22, v6

    move-object/from16 v16, v10

    invoke-static/range {v16 .. v24}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpVariationTextListKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_19

    :cond_2c
    const/4 v9, 0x0

    :goto_19
    invoke-static {v6, v9, v5, v0}, Lo60;->d(Landroidx/compose/runtime/GapComposer;ZLjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    const/16 v21, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v9

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v17

    const v9, 0x51a31498

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2d

    const v9, 0x7f1403d0

    invoke-static {v6, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v21, v9

    :goto_1a
    const/4 v9, 0x0

    goto :goto_1b

    :cond_2d
    move-object/from16 v21, p4

    goto :goto_1a

    :goto_1b
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->m:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    and-int/lit8 v31, v40, 0x70

    const/16 v32, 0x27dc

    const-string v16, ""

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v30, 0x6

    move-object/from16 v27, p11

    move-object/from16 v29, v6

    invoke-static/range {v16 .. v32}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVReadOnlyTextFieldKt;->a(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Ljava/lang/Integer;Landroidx/compose/runtime/Composer;III)V

    if-eqz p9, :cond_2e

    const v9, -0x1d3cb26b

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v9

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    invoke-static {v5, v0}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    const/16 v21, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v10

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v19

    const v10, 0x7f140b73

    invoke-static {v6, v10}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v23

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->L0:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    shl-int/lit8 v10, v40, 0x15

    const/high16 v12, 0x70000000

    and-int v16, v10, v12

    const/16 v17, 0x1f0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v24, p12

    move-object/from16 v18, v6

    move-object/from16 v20, v9

    invoke-static/range {v16 .. v27}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1c

    :cond_2e
    const/4 v9, 0x0

    const v10, -0x1d3617f3

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1c
    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->i:F

    const/16 v21, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v9

    move/from16 v20, v10

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v16

    const v9, 0x7f140b68

    invoke-static {v6, v9}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v17

    const/16 v24, 0x0

    const/16 v25, 0x3c

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v23, v6

    invoke-static/range {v16 .. v25}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDisclaimerKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;JLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    iget-boolean v9, v2, Lcom/vuitton/android/presentation/screen/pdp/models/FindInStoreViewState;->b:Z

    if-eqz v9, :cond_2f

    const v0, -0x1d3288b8

    invoke-static {v6, v0, v5}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v16

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->h:F

    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v18, v0

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v16

    const/16 v20, 0x0

    const/16 v21, 0x6

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v6

    invoke-static/range {v16 .. v21}, Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/components/components/LVFlowerLoaderStyle;ZLandroidx/compose/runtime/Composer;II)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1d
    move-object v4, v15

    :goto_1e
    const/4 v13, 0x1

    goto/16 :goto_26

    :cond_2f
    iget-boolean v9, v2, Lcom/vuitton/android/presentation/screen/pdp/models/FindInStoreViewState;->c:Z

    if-eqz v9, :cond_30

    const v3, -0x1d2f75bb

    invoke-static {v6, v3, v5, v0}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->i:F

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v21, 0x5

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v18, v0

    move/from16 v20, v3

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit8 v3, v7, 0x70

    shr-int/lit8 v4, v40, 0x9

    and-int/lit16 v4, v4, 0x380

    or-int/2addr v3, v4

    invoke-static {v0, v8, v15, v6, v3}, Lcom/vuitton/android/presentation/screen/pdp/components/findinstore/FindInStoreNoResultKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1d

    :cond_30
    move-object/from16 v9, v39

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3c

    const v9, -0x1d26f98d

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object/from16 v9, v39

    check-cast v9, Ljava/lang/Iterable;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_31
    :goto_1f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_33

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_32

    iget-boolean v13, v13, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->g:Z

    goto :goto_20

    :cond_32
    const/4 v13, 0x1

    :goto_20
    if-eqz v13, :cond_31

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_33
    move-object/from16 v9, v39

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_37

    const v9, -0x1d22a39b

    invoke-static {v6, v9, v5}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v16

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    const/16 v21, 0x7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v20, v9

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/high16 v13, 0x380000

    and-int v13, v40, v13

    const/high16 v14, 0x100000

    if-ne v13, v14, :cond_34

    const/4 v13, 0x1

    goto :goto_21

    :cond_34
    const/4 v13, 0x0

    :goto_21
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_35

    if-ne v14, v4, :cond_36

    :cond_35
    new-instance v14, Lx3;

    const/16 v4, 0x8

    invoke-direct {v14, v1, v3, v4}, Lx3;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_36
    check-cast v14, Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    invoke-static {v9, v12, v14, v6, v3}, Lcom/vuitton/android/presentation/screen/pdp/components/findinstore/FindInStoreHeaderKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_22

    :cond_37
    const/4 v3, 0x0

    const v4, -0x1d1b7bb3

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_22
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3b

    const v0, -0x1d1a61ea

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v7, v3, 0x1

    if-ltz v3, :cond_39

    move-object v12, v4

    check-cast v12, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    shr-int/lit8 v4, v40, 0x9

    and-int/lit8 v4, v4, 0x70

    shr-int/lit8 v9, v40, 0x3

    and-int/lit16 v9, v9, 0x380

    or-int/2addr v4, v9

    shr-int/lit8 v9, v40, 0x6

    and-int/lit16 v9, v9, 0x1c00

    or-int v17, v4, v9

    move-object/from16 v14, p13

    move-object/from16 v13, p14

    move-object/from16 v16, v6

    invoke-static/range {v12 .. v17}, Lcom/vuitton/android/presentation/screen/pdp/components/findinstore/FindInStoreRowKt;->b(Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v4, v15

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v13, 0x1

    sub-int/2addr v9, v13

    if-ge v3, v9, :cond_38

    const v3, -0x789d5f96

    invoke-static {v6, v3, v5}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v3

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v12, 0x0

    invoke-static {v3, v12, v9, v13}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v9

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v14, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v9

    iget v13, v9, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->c:F

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v6

    move/from16 v41, v12

    move-object v12, v3

    invoke-static/range {v12 .. v18}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_24

    :cond_38
    const/4 v9, 0x0

    const/16 v41, 0x0

    const v3, -0x78976952

    invoke-static {v6, v3, v5}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v3

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v3, v12}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_24
    move-object v15, v4

    move v3, v7

    goto :goto_23

    :cond_39
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v43

    :cond_3a
    move-object v4, v15

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_25

    :cond_3b
    move-object v4, v15

    const v3, -0x1d0a449d

    invoke-static {v6, v3, v5, v0}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v17, 0x7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v0

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit8 v3, v7, 0x70

    shr-int/lit8 v5, v40, 0x9

    and-int/lit16 v5, v5, 0x380

    or-int/2addr v3, v5

    invoke-static {v0, v8, v4, v6, v3}, Lcom/vuitton/android/presentation/screen/pdp/components/findinstore/FindInStoreNoResultKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_25
    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_1e

    :cond_3c
    move-object v4, v15

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3d

    const v3, -0x1d032095

    invoke-static {v6, v3, v5, v0}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v17, 0x7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v16, v0

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit8 v3, v7, 0x70

    shr-int/lit8 v5, v40, 0x9

    and-int/lit16 v5, v5, 0x380

    or-int/2addr v3, v5

    invoke-static {v0, v8, v4, v6, v3}, Lcom/vuitton/android/presentation/screen/pdp/components/findinstore/FindInStoreNoResultKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_1e

    :cond_3d
    const/4 v9, 0x0

    const v0, -0x1cfd7793

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v9}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_1e

    :goto_26
    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_27

    :cond_3e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v43

    :cond_3f
    move-object/from16 v42, v0

    move-object v6, v9

    move-object v4, v15

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_27
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_40

    move-object v3, v0

    new-instance v0, Lvy;

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v18, p17

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v17, v1

    move-object/from16 v44, v3

    move-object/from16 v16, v4

    move-object/from16 v1, v42

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v20}, Lvy;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/models/FindInStoreViewState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;ZLkotlin/Pair;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V

    move-object/from16 v3, v44

    iput-object v0, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_40
    return-void
.end method
