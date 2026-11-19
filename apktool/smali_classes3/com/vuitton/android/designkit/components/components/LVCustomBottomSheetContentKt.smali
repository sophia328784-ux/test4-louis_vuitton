.class public abstract Lcom/vuitton/android/designkit/components/components/LVCustomBottomSheetContentKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "components"
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
.method public static final a(Landroidx/compose/ui/Modifier;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
    .locals 40

    move-object/from16 v0, p0

    move/from16 v12, p12

    move/from16 v14, p14

    const-string v1, "LVCustomBottomSheetContent"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, 0x26503d89

    move-object/from16 v3, p11

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, v14, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v6, v12, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v6, v12, 0x6

    if-nez v6, :cond_3

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v12

    goto :goto_1

    :cond_3
    move v6, v12

    :goto_1
    or-int/lit8 v7, v6, 0x30

    and-int/lit8 v8, v14, 0x4

    if-eqz v8, :cond_5

    or-int/lit16 v7, v6, 0x1b0

    :cond_4
    move-object/from16 v6, p2

    goto :goto_3

    :cond_5
    and-int/lit16 v6, v12, 0x180

    if-nez v6, :cond_4

    move-object/from16 v6, p2

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x100

    goto :goto_2

    :cond_6
    const/16 v9, 0x80

    :goto_2
    or-int/2addr v7, v9

    :goto_3
    and-int/lit8 v9, v14, 0x8

    if-eqz v9, :cond_8

    or-int/lit16 v7, v7, 0xc00

    :cond_7
    move-object/from16 v10, p3

    goto :goto_5

    :cond_8
    and-int/lit16 v10, v12, 0xc00

    if-nez v10, :cond_7

    move-object/from16 v10, p3

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/16 v11, 0x800

    goto :goto_4

    :cond_9
    const/16 v11, 0x400

    :goto_4
    or-int/2addr v7, v11

    :goto_5
    and-int/lit8 v11, v14, 0x10

    if-eqz v11, :cond_b

    or-int/lit16 v7, v7, 0x6000

    :cond_a
    move-object/from16 v13, p4

    goto :goto_7

    :cond_b
    and-int/lit16 v13, v12, 0x6000

    if-nez v13, :cond_a

    move-object/from16 v13, p4

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    const/16 v15, 0x4000

    goto :goto_6

    :cond_c
    const/16 v15, 0x2000

    :goto_6
    or-int/2addr v7, v15

    :goto_7
    and-int/lit8 v15, v14, 0x20

    const/high16 v16, 0x30000

    if-eqz v15, :cond_d

    or-int v7, v7, v16

    move-object/from16 v4, p5

    goto :goto_9

    :cond_d
    and-int v16, v12, v16

    move-object/from16 v4, p5

    if-nez v16, :cond_f

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    const/high16 v16, 0x20000

    goto :goto_8

    :cond_e
    const/high16 v16, 0x10000

    :goto_8
    or-int v7, v7, v16

    :cond_f
    :goto_9
    const/high16 v16, 0x180000

    and-int v16, v12, v16

    if-nez v16, :cond_11

    and-int/lit8 v16, v14, 0x40

    move-object/from16 v5, p6

    if-nez v16, :cond_10

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x100000

    goto :goto_a

    :cond_10
    const/high16 v16, 0x80000

    :goto_a
    or-int v7, v7, v16

    goto :goto_b

    :cond_11
    move-object/from16 v5, p6

    :goto_b
    move-object/from16 v16, v0

    and-int/lit16 v0, v14, 0x80

    const/high16 v17, 0xc00000

    if-eqz v0, :cond_13

    or-int v7, v7, v17

    :cond_12
    move/from16 v17, v0

    move/from16 v0, p7

    goto :goto_d

    :cond_13
    and-int v17, v12, v17

    if-nez v17, :cond_12

    move/from16 v17, v0

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v18

    if-eqz v18, :cond_14

    const/high16 v18, 0x800000

    goto :goto_c

    :cond_14
    const/high16 v18, 0x400000

    :goto_c
    or-int v7, v7, v18

    :goto_d
    const/high16 v18, 0x6000000

    or-int v18, v7, v18

    and-int/lit16 v0, v14, 0x200

    if-eqz v0, :cond_16

    const/high16 v18, 0x36000000

    or-int v18, v7, v18

    :cond_15
    move-object/from16 v7, p8

    goto :goto_f

    :cond_16
    const/high16 v7, 0x30000000

    and-int/2addr v7, v12

    if-nez v7, :cond_15

    move-object/from16 v7, p8

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    const/high16 v19, 0x20000000

    goto :goto_e

    :cond_17
    const/high16 v19, 0x10000000

    :goto_e
    or-int v18, v18, v19

    :goto_f
    move/from16 v19, v0

    and-int/lit16 v0, v14, 0x400

    const/16 v38, 0x36

    if-eqz v0, :cond_18

    move/from16 v20, v0

    move/from16 v21, v38

    move-object/from16 v0, p9

    goto :goto_11

    :cond_18
    and-int/lit8 v20, p13, 0x6

    if-nez v20, :cond_1a

    move/from16 v20, v0

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_19

    const/16 v21, 0x4

    goto :goto_10

    :cond_19
    const/16 v21, 0x2

    :goto_10
    or-int v21, p13, v21

    goto :goto_11

    :cond_1a
    move/from16 v20, v0

    move-object/from16 v0, p9

    move/from16 v21, p13

    :goto_11
    const v22, 0x12492493

    and-int v0, v18, v22

    move/from16 p0, v3

    const v3, 0x12492492

    if-ne v0, v3, :cond_1c

    and-int/lit8 v0, v21, 0x13

    const/16 v3, 0x12

    if-eq v0, v3, :cond_1b

    goto :goto_12

    :cond_1b
    const/4 v0, 0x0

    goto :goto_13

    :cond_1c
    :goto_12
    const/4 v0, 0x1

    :goto_13
    and-int/lit8 v3, v18, 0x1

    invoke-virtual {v2, v3, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, v12, 0x1

    const v21, -0x380001

    if-eqz v0, :cond_1f

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_15

    :cond_1d
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit8 v0, v14, 0x40

    if-eqz v0, :cond_1e

    and-int v18, v18, v21

    :cond_1e
    move/from16 v0, p1

    move-object/from16 v8, p5

    move/from16 v9, p7

    move-object/from16 v11, p9

    move-object v15, v6

    move-object/from16 v6, v16

    :goto_14
    move/from16 v39, v18

    goto :goto_1a

    :cond_1f
    :goto_15
    if-eqz p0, :cond_20

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_16

    :cond_20
    move-object/from16 v0, v16

    :goto_16
    if-eqz v8, :cond_21

    const/4 v6, 0x0

    :cond_21
    if-eqz v9, :cond_22

    const/4 v10, 0x0

    :cond_22
    if-eqz v11, :cond_23

    const/4 v13, 0x0

    :cond_23
    if-eqz v15, :cond_24

    const/4 v8, 0x0

    goto :goto_17

    :cond_24
    move-object/from16 v8, p5

    :goto_17
    and-int/lit8 v9, v14, 0x40

    if-eqz v9, :cond_25

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->n:Landroidx/compose/ui/text/TextStyle;

    and-int v18, v18, v21

    :cond_25
    if-eqz v17, :cond_26

    const/4 v9, 0x0

    goto :goto_18

    :cond_26
    move/from16 v9, p7

    :goto_18
    if-eqz v19, :cond_27

    const/4 v7, 0x0

    :cond_27
    if-eqz v20, :cond_29

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v15, :cond_28

    new-instance v11, Lk40;

    const/16 v15, 0xc

    invoke-direct {v11, v15}, Lk40;-><init>(I)V

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_28
    check-cast v11, Lkotlin/jvm/functions/Function0;

    goto :goto_19

    :cond_29
    move-object/from16 v11, p9

    :goto_19
    const v15, 0x3f666666    # 0.9f

    move-object/from16 v39, v6

    move-object v6, v0

    move v0, v15

    move-object/from16 v15, v39

    goto :goto_14

    :goto_1a
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v16, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v3, v3

    sget-object v16, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    if-eqz v9, :cond_2a

    const v4, -0x6c4cf399

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->a:F

    move/from16 p1, v0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1b

    :cond_2a
    move/from16 p1, v0

    const/4 v0, 0x0

    const v4, -0x6c4c1a1d

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1b
    const/4 v0, 0x3

    move/from16 v16, v3

    move/from16 p3, v4

    const/4 v3, 0x0

    invoke-static {v6, v3, v0}, Landroidx/compose/foundation/layout/SizeKt;->v(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;I)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v3, 0x0

    move/from16 p8, v0

    mul-float v0, v16, p1

    move-object/from16 p9, v5

    const/4 v5, 0x1

    invoke-static {v4, v3, v0, v5}, Landroidx/compose/foundation/layout/SizeKt;->h(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v2}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v3

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-static {v0, v3, v5, v4}, Landroidx/compose/foundation/ScrollKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v16, 0x0

    const/16 v17, 0x8

    move/from16 v18, p3

    move-object/from16 p2, v0

    move/from16 p4, v3

    move/from16 p6, v16

    move/from16 p7, v17

    move/from16 p5, v18

    invoke-static/range {p2 .. p7}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v16, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 p2, v4

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v3, v4, v2, v5}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v3

    iget-wide v4, v2, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v2, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 p3, v4

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move-object/from16 p4, v6

    iget-object v6, v2, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v6, :cond_35

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v6, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v6, :cond_2b

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1c

    :cond_2b
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1c
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v5, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v3, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v0, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v0, 0x3141c0cf

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-eqz v15, :cond_30

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_30

    const v0, 0x31430d36

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    if-eqz v13, :cond_2c

    const v3, 0x31459c92

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1d
    move/from16 v20, v3

    goto :goto_1e

    :cond_2c
    const/4 v5, 0x0

    const v3, 0x31471c51

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1d

    :goto_1e
    if-eqz v9, :cond_2d

    const v3, 0x31499011

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_1f
    move/from16 v17, v3

    goto :goto_20

    :cond_2d
    const v3, 0x314b1315

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->a:F

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1f

    :goto_20
    const/16 v19, 0x0

    const/16 v21, 0x4

    sget-object v16, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    move/from16 v18, v0

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v10, :cond_2e

    invoke-static {v1, v10}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-nez v3, :cond_2f

    :cond_2e
    const-string v3, "bottomSheet_title_text"

    invoke-static {v1, v3}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    :cond_2f
    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->f:Landroidx/compose/ui/text/TextStyle;

    shr-int/lit8 v3, v39, 0x6

    and-int/lit8 v35, v3, 0xe

    const/16 v36, 0x0

    const v37, 0x1fffc

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v33, v0

    move-object/from16 v34, v2

    invoke-static/range {v15 .. v37}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object v6, v15

    move-object/from16 v0, v34

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_21

    :cond_30
    move-object v0, v2

    move-object v6, v15

    const/4 v5, 0x0

    const v2, 0x31512d6f

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_21
    if-nez v13, :cond_31

    const v1, 0x3151c46f

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v33, p9

    move-object v15, v13

    goto/16 :goto_24

    :cond_31
    const v2, 0x3151c470

    invoke-static {v0, v2, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v15

    if-eqz v9, :cond_32

    const v2, -0x42d6204d

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_22
    move/from16 v16, v2

    goto :goto_23

    :cond_32
    const v2, -0x42d49d49

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->a:F

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_22

    :goto_23
    const/16 v19, 0x0

    const/16 v20, 0xe

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v2

    if-eqz v8, :cond_33

    invoke-static {v1, v8}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    if-nez v3, :cond_34

    :cond_33
    const-string v3, "bottomSheet_subtitle_text"

    invoke-static {v1, v3}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    :cond_34
    invoke-interface {v2, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    const/high16 v1, 0x1c00000

    shl-int/lit8 v2, v39, 0x3

    and-int v36, v2, v1

    const v37, 0x1fffc

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v35, 0x0

    move-object/from16 v33, p9

    move-object/from16 v34, v0

    move-object v15, v13

    invoke-static/range {v15 .. v37}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_24
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    move-object/from16 v3, p10

    invoke-interface {v3, v2, v0, v1}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v1, p4

    move-object v3, v6

    move-object v6, v8

    move v8, v9

    move-object v4, v10

    move-object v10, v11

    move-object v5, v15

    move-object v9, v7

    move-object/from16 v7, v33

    :goto_25
    move/from16 v2, p1

    goto :goto_26

    :cond_35
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v3, 0x0

    throw v3

    :cond_36
    move-object/from16 v3, p10

    move-object v0, v2

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    move/from16 v8, p7

    move-object v3, v6

    move-object v9, v7

    move-object v4, v10

    move-object/from16 v1, v16

    move-object/from16 v6, p5

    move-object/from16 v10, p9

    move-object v7, v5

    move-object v5, v13

    goto :goto_25

    :goto_26
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_37

    new-instance v0, Ls50;

    move-object/from16 v11, p10

    move/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Ls50;-><init>(Landroidx/compose/ui/Modifier;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;III)V

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_37
    return-void
.end method
