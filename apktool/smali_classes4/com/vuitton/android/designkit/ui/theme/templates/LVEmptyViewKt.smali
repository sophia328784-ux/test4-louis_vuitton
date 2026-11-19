.class public abstract Lcom/vuitton/android/designkit/ui/theme/templates/LVEmptyViewKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "system"
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
.method public static final a(Landroidx/compose/runtime/Composer;I)V
    .locals 11

    const v0, 0x21e84d21

    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    and-int/lit8 v2, p1, 0x1

    invoke-virtual {v8, v2, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v2, "Background"

    invoke-direct {v1, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const v1, 0x7f080082

    invoke-static {v1, v8, p0}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v1

    sget-object p0, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    const/16 v9, 0x6038

    const/16 v10, 0x68

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v10}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v1, Ln50;

    invoke-direct {v1, p1, v0}, Ln50;-><init>(II)V

    iput-object v1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2
    return-void
.end method

.method public static final b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;)V
    .locals 28

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "CentralTitle"

    if-eqz v2, :cond_0

    invoke-static {v2, v4}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    :cond_0
    const v5, 0x7e3bee41

    move-object/from16 v6, p2

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x4

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    or-int/2addr v5, v1

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x20

    goto :goto_1

    :cond_2
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v5, v6

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x100

    goto :goto_2

    :cond_3
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v5, v6

    and-int/lit16 v6, v5, 0x93

    const/16 v7, 0x92

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eq v6, v7, :cond_4

    move v6, v14

    goto :goto_3

    :cond_4
    move v6, v15

    :goto_3
    and-int/lit8 v7, v5, 0x1

    invoke-virtual {v11, v7, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v6, v7, v11, v15}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v6

    iget-wide v7, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v11, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v12, v11, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v12, :cond_9

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v12, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v12, :cond_5

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_4
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v6, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v6}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v9, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const-string v6, "emptystate_stateImage_image"

    invoke-static {v4, v6}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget v7, Lcom/vuitton/android/designkit/ui/theme/IconSize;->e:F

    invoke-static {v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    sget-object v8, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    invoke-virtual {v8, v6, v7}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    shr-int/lit8 v5, v5, 0x3

    and-int/lit8 v5, v5, 0xe

    invoke-static {v0, v11, v5}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v6

    const/16 v12, 0x38

    const/16 v13, 0x8

    const/4 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v6 .. v13}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    if-nez v3, :cond_6

    const v4, -0x623ea883

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v27, v2

    move-object v2, v3

    move v0, v14

    goto/16 :goto_5

    :cond_6
    const v5, -0x623ea882

    invoke-static {v11, v5, v4}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v4

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_7

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v5, :cond_8

    :cond_7
    new-instance v6, Llt;

    const/16 v5, 0xc

    invoke-direct {v6, v3, v5}, Llt;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v15, v6}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const-string v5, "emptystate_stateMessage_text"

    invoke-static {v4, v5}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    sget-object v4, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v17, 0x0

    const/high16 v18, 0x41c00000    # 24.0f

    const/16 v19, 0x0

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    sget-object v8, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v8, Landroidx/compose/ui/text/style/TextAlign;->e:I

    new-instance v12, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v12, v8}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v23, 0x0

    const v24, 0x1fbf8

    move-object v3, v4

    move-object/from16 v20, v5

    move-wide v4, v6

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v21, v11

    const/4 v11, 0x0

    move/from16 v16, v14

    const-wide/16 v13, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move/from16 v18, v16

    const/16 v16, 0x0

    move/from16 v19, v17

    const/16 v17, 0x0

    move/from16 v22, v18

    const/16 v18, 0x0

    move/from16 v25, v19

    const/16 v19, 0x0

    move/from16 v26, v22

    const/16 v22, 0x0

    move-object/from16 v27, v2

    move/from16 v0, v25

    move-object/from16 v2, p4

    invoke-static/range {v2 .. v24}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v11, v21

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_6

    :cond_9
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_a
    move-object/from16 v27, v2

    move-object v2, v3

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v3, Lye;

    move/from16 v4, p0

    move-object/from16 v5, v27

    invoke-direct {v3, v5, v4, v2, v1}, Lye;-><init>(Landroidx/compose/ui/Modifier;ILjava/lang/String;I)V

    iput-object v3, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-string v5, "FooterDescription"

    if-eqz v0, :cond_0

    invoke-static {v0, v5}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v6, -0x58c2d6be

    move-object/from16 v7, p6

    invoke-interface {v7, v6}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    :goto_0
    or-int v7, p7, v7

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x20

    goto :goto_1

    :cond_2
    const/16 v8, 0x10

    :goto_1
    or-int/2addr v7, v8

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x100

    goto :goto_2

    :cond_3
    const/16 v8, 0x80

    :goto_2
    or-int/2addr v7, v8

    move-object/from16 v8, p3

    invoke-virtual {v6, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x800

    goto :goto_3

    :cond_4
    const/16 v9, 0x400

    :goto_3
    or-int/2addr v7, v9

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x4000

    goto :goto_4

    :cond_5
    const/16 v9, 0x2000

    :goto_4
    or-int/2addr v7, v9

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/high16 v9, 0x20000

    goto :goto_5

    :cond_6
    const/high16 v9, 0x10000

    :goto_5
    or-int v23, v7, v9

    const v7, 0x12493

    and-int v7, v23, v7

    const v9, 0x12492

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v7, v9, :cond_7

    move v7, v10

    goto :goto_6

    :cond_7
    move v7, v11

    :goto_6
    and-int/lit8 v9, v23, 0x1

    invoke-virtual {v6, v9, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_f

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v9, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v7, v9, v6, v11}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v7

    iget-wide v12, v6, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v6, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v15, v6, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v15, :cond_e

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v6, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_8

    invoke-virtual {v6, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_8
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_7
    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v7, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v12, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v7, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v7}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v13, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-nez v2, :cond_9

    const v7, 0x283ac269

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v24, v0

    move-object/from16 v27, v5

    move v13, v11

    goto/16 :goto_8

    :cond_9
    const v7, 0x283ac26a

    invoke-virtual {v6, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v7, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v7, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v9, "emptystate_stateDescrption_text"

    invoke-static {v7, v9}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v7, v9}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v9

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v12

    iget-object v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    sget-object v14, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v14, Landroidx/compose/ui/text/style/TextAlign;->e:I

    move v15, v10

    new-instance v10, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v10, v14}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v21, 0x0

    const v22, 0x1fbf8

    move-object v14, v5

    const-wide/16 v4, 0x0

    move-object/from16 v19, v6

    const/4 v6, 0x0

    move-object v1, v7

    const-wide/16 v7, 0x0

    move-object/from16 v18, v9

    const/4 v9, 0x0

    move-wide v2, v12

    move v13, v11

    const-wide/16 v11, 0x0

    move/from16 v16, v13

    const/4 v13, 0x0

    move-object/from16 v17, v14

    const/4 v14, 0x0

    move/from16 v20, v15

    const/4 v15, 0x0

    move/from16 v24, v16

    const/16 v16, 0x0

    move-object/from16 v25, v17

    const/16 v17, 0x0

    move/from16 v26, v20

    const/16 v20, 0x0

    move-object/from16 v24, v0

    move-object/from16 v27, v25

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v22}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v6, v19

    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_8
    if-nez p2, :cond_a

    const v0, 0x28418762

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v14, v27

    goto :goto_9

    :cond_a
    const v0, 0x28418763

    const-string v1, "emptystate_link_button"

    move-object/from16 v14, v27

    invoke-static {v6, v0, v14, v1}, Ln00;->d(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v11, 0x0

    const/16 v12, 0xd

    const/4 v8, 0x0

    const/high16 v9, 0x41800000    # 16.0f

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    sget-object v2, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    invoke-virtual {v2, v0, v1}, Landroidx/compose/foundation/layout/ColumnScopeInstance;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz p5, :cond_b

    invoke-interface/range {p5 .. p5}, Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-nez v1, :cond_c

    :cond_b
    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    :cond_c
    invoke-interface {v0, v1}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/high16 v1, 0x70000

    shl-int/lit8 v2, v23, 0x6

    and-int v7, v2, v1

    const/16 v8, 0x1c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p2

    move-object/from16 v5, p3

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_9
    if-eqz p4, :cond_d

    const v0, 0x2849d096

    invoke-static {v6, v0, v14}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v6, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_a
    const/4 v15, 0x1

    goto :goto_b

    :cond_d
    const v0, 0x284b5bd6

    invoke-static {v6, v0, v14}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v0

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v6, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_a

    :goto_b
    invoke-virtual {v6, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_c

    :cond_e
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_f
    move-object/from16 v24, v0

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_c
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_10

    new-instance v0, Lu1;

    const/16 v8, 0xf

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p7

    move-object/from16 v1, v24

    invoke-direct/range {v0 .. v8}, Lu1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_10
    return-void
.end method

.method public static final d(Landroidx/compose/ui/Modifier;ILandroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Landroidx/compose/runtime/Composer;III)V
    .locals 33

    move-object/from16 v0, p0

    move/from16 v13, p13

    move/from16 v15, p15

    if-eqz v0, :cond_0

    const-string v1, "LVEmptyView"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v1, v0

    const v0, -0x2cf578a7

    move-object/from16 v2, p12

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v0

    and-int/lit8 v2, v13, 0x6

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v13

    goto :goto_1

    :cond_2
    move v2, v13

    :goto_1
    and-int/lit8 v5, v13, 0x30

    if-nez v5, :cond_4

    move/from16 v5, p1

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x20

    goto :goto_2

    :cond_3
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v2, v8

    goto :goto_3

    :cond_4
    move/from16 v5, p1

    :goto_3
    and-int/lit8 v8, v15, 0x4

    if-eqz v8, :cond_6

    or-int/lit16 v2, v2, 0x180

    :cond_5
    move-object/from16 v9, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v9, v13, 0x180

    if-nez v9, :cond_5

    move-object/from16 v9, p2

    invoke-virtual {v0, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x100

    goto :goto_4

    :cond_7
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v2, v10

    :goto_5
    and-int/lit16 v10, v13, 0xc00

    if-nez v10, :cond_9

    move-object/from16 v10, p3

    invoke-virtual {v0, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/16 v11, 0x800

    goto :goto_6

    :cond_8
    const/16 v11, 0x400

    :goto_6
    or-int/2addr v2, v11

    goto :goto_7

    :cond_9
    move-object/from16 v10, p3

    :goto_7
    and-int/lit8 v11, v15, 0x10

    if-eqz v11, :cond_b

    or-int/lit16 v2, v2, 0x6000

    :cond_a
    move-object/from16 v12, p4

    goto :goto_9

    :cond_b
    and-int/lit16 v12, v13, 0x6000

    if-nez v12, :cond_a

    move-object/from16 v12, p4

    invoke-virtual {v0, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    const/16 v14, 0x4000

    goto :goto_8

    :cond_c
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v2, v14

    :goto_9
    and-int/lit8 v14, v15, 0x20

    const/high16 v16, 0x30000

    if-eqz v14, :cond_d

    or-int v2, v2, v16

    move-object/from16 v3, p5

    goto :goto_b

    :cond_d
    and-int v16, v13, v16

    move-object/from16 v3, p5

    if-nez v16, :cond_f

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_e

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_e
    const/high16 v16, 0x10000

    :goto_a
    or-int v2, v2, v16

    :cond_f
    :goto_b
    and-int/lit8 v16, v15, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_10

    or-int v2, v2, v17

    move/from16 v4, p6

    goto :goto_d

    :cond_10
    and-int v17, v13, v17

    move/from16 v4, p6

    if-nez v17, :cond_12

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v17

    if-eqz v17, :cond_11

    const/high16 v17, 0x100000

    goto :goto_c

    :cond_11
    const/high16 v17, 0x80000

    :goto_c
    or-int v2, v2, v17

    :cond_12
    :goto_d
    and-int/lit16 v6, v15, 0x80

    const/high16 v18, 0xc00000

    if-eqz v6, :cond_13

    or-int v2, v2, v18

    move-object/from16 v7, p7

    goto :goto_f

    :cond_13
    and-int v18, v13, v18

    move-object/from16 v7, p7

    if-nez v18, :cond_15

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    const/high16 v19, 0x800000

    goto :goto_e

    :cond_14
    const/high16 v19, 0x400000

    :goto_e
    or-int v2, v2, v19

    :cond_15
    :goto_f
    move/from16 v19, v2

    and-int/lit16 v2, v15, 0x100

    const/high16 v20, 0x6000000

    if-eqz v2, :cond_17

    or-int v19, v19, v20

    :cond_16
    move/from16 v20, v2

    move-object/from16 v2, p8

    goto :goto_11

    :cond_17
    and-int v20, v13, v20

    if-nez v20, :cond_16

    move/from16 v20, v2

    move-object/from16 v2, p8

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    const/high16 v21, 0x4000000

    goto :goto_10

    :cond_18
    const/high16 v21, 0x2000000

    :goto_10
    or-int v19, v19, v21

    :goto_11
    and-int/lit16 v2, v15, 0x200

    const/high16 v21, 0x30000000

    if-eqz v2, :cond_1a

    or-int v19, v19, v21

    :cond_19
    move/from16 v21, v2

    move-object/from16 v2, p9

    goto :goto_13

    :cond_1a
    and-int v21, v13, v21

    if-nez v21, :cond_19

    move/from16 v21, v2

    move-object/from16 v2, p9

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    const/high16 v22, 0x20000000

    goto :goto_12

    :cond_1b
    const/high16 v22, 0x10000000

    :goto_12
    or-int v19, v19, v22

    :goto_13
    and-int/lit16 v2, v15, 0x400

    if-eqz v2, :cond_1c

    const/16 v22, 0x6

    move/from16 v23, v22

    move/from16 v22, v2

    move-object/from16 v2, p10

    goto :goto_15

    :cond_1c
    and-int/lit8 v22, p14, 0x6

    if-nez v22, :cond_1e

    move/from16 v22, v2

    move-object/from16 v2, p10

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1d

    const/16 v23, 0x4

    goto :goto_14

    :cond_1d
    const/16 v23, 0x2

    :goto_14
    or-int v23, p14, v23

    goto :goto_15

    :cond_1e
    move/from16 v22, v2

    move-object/from16 v2, p10

    move/from16 v23, p14

    :goto_15
    and-int/lit16 v2, v15, 0x800

    if-eqz v2, :cond_1f

    or-int/lit8 v17, v23, 0x30

    move/from16 v24, v2

    move-object/from16 v2, p11

    goto :goto_17

    :cond_1f
    move/from16 v24, v2

    move-object/from16 v2, p11

    invoke-virtual {v0, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_20

    const/16 v17, 0x20

    goto :goto_16

    :cond_20
    const/16 v17, 0x10

    :goto_16
    or-int v17, v23, v17

    :goto_17
    const v18, 0x12492493

    and-int v2, v19, v18

    const v3, 0x12492492

    const/4 v4, 0x1

    if-ne v2, v3, :cond_22

    and-int/lit8 v2, v17, 0x13

    const/16 v3, 0x12

    if-eq v2, v3, :cond_21

    goto :goto_18

    :cond_21
    const/4 v2, 0x0

    goto :goto_19

    :cond_22
    :goto_18
    move v2, v4

    :goto_19
    and-int/lit8 v3, v19, 0x1

    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_32

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v8, :cond_24

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_23

    invoke-static {v0}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v3

    :cond_23
    check-cast v3, Landroidx/compose/material3/SnackbarHostState;

    goto :goto_1a

    :cond_24
    move-object v3, v9

    :goto_1a
    if-eqz v11, :cond_25

    const/4 v12, 0x0

    :cond_25
    if-eqz v14, :cond_26

    const/4 v9, 0x0

    goto :goto_1b

    :cond_26
    move-object/from16 v9, p5

    :goto_1b
    if-eqz v16, :cond_27

    const/4 v11, 0x0

    goto :goto_1c

    :cond_27
    move/from16 v11, p6

    :goto_1c
    if-eqz v6, :cond_29

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_28

    new-instance v6, Lk40;

    const/16 v7, 0xd

    invoke-direct {v6, v7}, Lk40;-><init>(I)V

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_28
    check-cast v6, Lkotlin/jvm/functions/Function0;

    goto :goto_1d

    :cond_29
    move-object v6, v7

    :goto_1d
    if-eqz v20, :cond_2a

    const/4 v7, 0x0

    goto :goto_1e

    :cond_2a
    move-object/from16 v7, p8

    :goto_1e
    if-eqz v21, :cond_2c

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v2, :cond_2b

    new-instance v14, Lk40;

    const/16 v2, 0xe

    invoke-direct {v14, v2}, Lk40;-><init>(I)V

    invoke-virtual {v0, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2b
    move-object v2, v14

    check-cast v2, Lkotlin/jvm/functions/Function0;

    goto :goto_1f

    :cond_2c
    move-object/from16 v2, p9

    :goto_1f
    if-eqz v22, :cond_2d

    const/4 v14, 0x0

    goto :goto_20

    :cond_2d
    move-object/from16 v14, p10

    :goto_20
    if-eqz v24, :cond_2e

    const/16 v16, 0x0

    goto :goto_21

    :cond_2e
    move-object/from16 v16, p11

    :goto_21
    sget-object v17, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/16 p2, 0x0

    sget-object v8, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v1, v8}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->b:J

    move-object/from16 v31, v1

    sget-object v1, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v8, v4, v5, v1}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v4, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v4

    move-object/from16 p4, v6

    iget-wide v5, v0, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v0, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move/from16 p5, v5

    iget-object v5, v0, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v5, :cond_31

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v5, v0, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v5, :cond_2f

    invoke-virtual {v0, v8}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_22

    :cond_2f
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_22
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcom/vuitton/android/designkit/ui/theme/templates/LVEmptyViewKt;->a(Landroidx/compose/runtime/Composer;I)V

    sget-object v1, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v22, Landroidx/compose/ui/graphics/Color;->h:J

    if-eqz v11, :cond_30

    const v1, 0x4c78a928    # 6.5184928E7f

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroidx/compose/foundation/layout/WindowInsetsKt;->c(FF)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v1

    :goto_23
    move-object/from16 v26, v1

    goto :goto_24

    :cond_30
    const v1, 0x4c7b3b8b    # 6.5859116E7f

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v0}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v1

    sget-object v4, Landroidx/compose/foundation/layout/WindowInsetsHolder;->y:Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion;->c(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/WindowInsetsHolder;

    move-result-object v4

    iget-object v4, v4, Landroidx/compose/foundation/layout/WindowInsetsHolder;->b:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/WindowInsetsKt;->i(Landroidx/compose/foundation/layout/AndroidWindowInsets;Landroidx/compose/foundation/layout/AndroidWindowInsets;)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_23

    :goto_24
    new-instance v1, Lv50;

    invoke-direct {v1, v7, v2, v14}, Lv50;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;)V

    const v4, 0x5004ce2e

    invoke-static {v4, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v18

    new-instance v1, Lg0;

    const/16 v4, 0x1d

    invoke-direct {v1, v3, v4}, Lg0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v4, -0x27540a73

    invoke-static {v4, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v19

    new-instance v1, Lw50;

    move/from16 p5, p1

    move-object/from16 p9, p4

    move-object/from16 p4, v1

    move-object/from16 p10, v7

    move-object/from16 p8, v9

    move-object/from16 p6, v10

    move-object/from16 p7, v12

    move-object/from16 p11, v16

    invoke-direct/range {p4 .. p11}, Lw50;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;)V

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    move-object/from16 v1, p8

    move-object/from16 v6, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    const v9, -0x1e0024dc

    invoke-static {v9, v7, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v27

    const v29, 0x30180d80

    const/16 v30, 0xb3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v24, 0x0

    move-object/from16 v28, v0

    invoke-static/range {v16 .. v30}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v10, v2

    move-object v9, v4

    move-object v12, v5

    move-object v5, v8

    move v7, v11

    move-object v11, v14

    move-object v8, v6

    move-object v6, v1

    goto :goto_25

    :cond_31
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw p2

    :cond_32
    move-object/from16 v31, v1

    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v6, p5

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object v8, v7

    move-object v3, v9

    move-object v5, v12

    move/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v12, p11

    :goto_25
    invoke-virtual {v0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_33

    move-object v1, v0

    new-instance v0, Lx50;

    move/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v14, p14

    move-object/from16 v32, v1

    move-object/from16 v1, v31

    invoke-direct/range {v0 .. v15}, Lx50;-><init>(Landroidx/compose/ui/Modifier;ILandroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;III)V

    move-object/from16 v1, v32

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_33
    return-void
.end method

.method public static final e(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v8, p8

    move/from16 v9, p9

    const-string v1, "LVErrorView"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v2, 0x155e109b

    move-object/from16 v3, p7

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, v9, 0x1

    if-eqz v3, :cond_1

    or-int/lit8 v4, v8, 0x6

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v8, 0x6

    if-nez v4, :cond_3

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v8

    goto :goto_1

    :cond_3
    move v4, v8

    :goto_1
    and-int/lit8 v5, v9, 0x2

    if-eqz v5, :cond_5

    or-int/lit8 v4, v4, 0x30

    :cond_4
    move-object/from16 v7, p1

    goto :goto_3

    :cond_5
    and-int/lit8 v7, v8, 0x30

    if-nez v7, :cond_4

    move-object/from16 v7, p1

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/16 v10, 0x20

    goto :goto_2

    :cond_6
    const/16 v10, 0x10

    :goto_2
    or-int/2addr v4, v10

    :goto_3
    and-int/lit16 v10, v8, 0x180

    move-object/from16 v13, p2

    if-nez v10, :cond_8

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/16 v10, 0x100

    goto :goto_4

    :cond_7
    const/16 v10, 0x80

    :goto_4
    or-int/2addr v4, v10

    :cond_8
    and-int/lit8 v10, v9, 0x8

    if-eqz v10, :cond_a

    or-int/lit16 v4, v4, 0xc00

    :cond_9
    move-object/from16 v11, p3

    goto :goto_6

    :cond_a
    and-int/lit16 v11, v8, 0xc00

    if-nez v11, :cond_9

    move-object/from16 v11, p3

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v12, 0x800

    goto :goto_5

    :cond_b
    const/16 v12, 0x400

    :goto_5
    or-int/2addr v4, v12

    :goto_6
    const v12, 0x1b6000

    or-int/2addr v12, v4

    and-int/lit16 v14, v9, 0x80

    if-eqz v14, :cond_d

    const v12, 0xdb6000

    or-int/2addr v12, v4

    :cond_c
    move-object/from16 v4, p5

    goto :goto_8

    :cond_d
    const/high16 v4, 0xc00000

    and-int/2addr v4, v8

    if-nez v4, :cond_c

    move-object/from16 v4, p5

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    const/high16 v15, 0x800000

    goto :goto_7

    :cond_e
    const/high16 v15, 0x400000

    :goto_7
    or-int/2addr v12, v15

    :goto_8
    and-int/lit16 v15, v9, 0x100

    const/high16 v16, 0x6000000

    if-eqz v15, :cond_f

    or-int v12, v12, v16

    move-object/from16 v6, p6

    goto :goto_a

    :cond_f
    and-int v16, v8, v16

    move-object/from16 v6, p6

    if-nez v16, :cond_11

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_10

    const/high16 v16, 0x4000000

    goto :goto_9

    :cond_10
    const/high16 v16, 0x2000000

    :goto_9
    or-int v12, v12, v16

    :cond_11
    :goto_a
    const v16, 0x2492493

    move-object/from16 v17, v0

    and-int v0, v12, v16

    move/from16 p7, v3

    const v3, 0x2492492

    if-eq v0, v3, :cond_12

    const/4 v0, 0x1

    goto :goto_b

    :cond_12
    const/4 v0, 0x0

    :goto_b
    and-int/lit8 v3, v12, 0x1

    invoke-virtual {v2, v3, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_1b

    if-eqz p7, :cond_13

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_c

    :cond_13
    move-object/from16 v0, v17

    :goto_c
    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v5, :cond_15

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_14

    invoke-static {v2}, Ln00;->b(Landroidx/compose/runtime/GapComposer;)Landroidx/compose/material3/SnackbarHostState;

    move-result-object v3

    :cond_14
    check-cast v3, Landroidx/compose/material3/SnackbarHostState;

    move/from16 v26, v12

    move-object v12, v3

    move/from16 v3, v26

    goto :goto_d

    :cond_15
    move v3, v12

    move-object v12, v7

    :goto_d
    const/4 v5, 0x0

    move v7, v14

    if-eqz v10, :cond_16

    move-object v14, v5

    goto :goto_e

    :cond_16
    move-object v14, v11

    :goto_e
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_17

    new-instance v10, Lk40;

    const/16 v11, 0xf

    invoke-direct {v10, v11}, Lk40;-><init>(I)V

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object/from16 v17, v10

    check-cast v17, Lkotlin/jvm/functions/Function0;

    if-eqz v7, :cond_18

    move-object/from16 v18, v5

    goto :goto_f

    :cond_18
    move-object/from16 v18, v4

    :goto_f
    if-eqz v15, :cond_1a

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_19

    new-instance v4, Lk40;

    const/16 v1, 0x10

    invoke-direct {v4, v1}, Lk40;-><init>(I)V

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object v1, v4

    check-cast v1, Lkotlin/jvm/functions/Function0;

    move-object/from16 v19, v1

    goto :goto_10

    :cond_1a
    move-object/from16 v19, v6

    :goto_10
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v1

    iget v11, v1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->O0:I

    and-int/lit8 v1, v3, 0xe

    shl-int/lit8 v3, v3, 0x3

    and-int/lit16 v4, v3, 0x380

    or-int/2addr v1, v4

    and-int/lit16 v4, v3, 0x1c00

    or-int/2addr v1, v4

    const v4, 0xe000

    and-int/2addr v4, v3

    or-int/2addr v1, v4

    const/high16 v4, 0x70000

    and-int/2addr v4, v3

    or-int/2addr v1, v4

    const/high16 v4, 0x380000

    and-int/2addr v4, v3

    or-int/2addr v1, v4

    const/high16 v4, 0x1c00000

    and-int/2addr v4, v3

    or-int/2addr v1, v4

    const/high16 v4, 0xe000000

    and-int/2addr v4, v3

    or-int/2addr v1, v4

    const/high16 v4, 0x70000000

    and-int/2addr v3, v4

    or-int v23, v1, v3

    const/16 v24, 0x0

    const/16 v25, 0xc00

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v10, v0

    move-object/from16 v22, v2

    invoke-static/range {v10 .. v25}, Lcom/vuitton/android/designkit/ui/theme/templates/LVEmptyViewKt;->d(Landroidx/compose/ui/Modifier;ILandroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Landroidx/compose/runtime/Composer;III)V

    move-object v1, v10

    move-object v2, v12

    move-object v4, v14

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    goto :goto_11

    :cond_1b
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v5, p4

    move-object v2, v7

    move-object/from16 v1, v17

    move-object v7, v6

    move-object v6, v4

    move-object v4, v11

    :goto_11
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_1c

    new-instance v0, Lgf;

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v9}, Lgf;-><init>(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method

.method public static final f(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    const v0, 0x5324dbab

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v13

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    const/16 v1, 0x10

    :goto_1
    or-int/2addr v0, v1

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_2

    :cond_2
    const/16 v1, 0x80

    :goto_2
    or-int/2addr v0, v1

    and-int/lit16 v1, v0, 0x93

    const/16 v3, 0x92

    if-eq v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v3, "StickyButton"

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v4, "emptystate_primaryButton_button"

    invoke-static {v1, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v15, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    sget-object v4, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/16 v19, 0x2

    const/16 v16, 0x0

    const/high16 v18, 0x42200000    # 40.0f

    move/from16 v17, v1

    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-nez v12, :cond_4

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {v12}, Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    :goto_4
    invoke-interface {v1, v4}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    iget-object v4, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    shl-int/lit8 v1, v0, 0x6

    and-int/lit16 v1, v1, 0x380

    shl-int/lit8 v0, v0, 0x18

    const/high16 v5, 0x70000000

    and-int/2addr v0, v5

    or-int/2addr v0, v1

    const/16 v1, 0x1f8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_5
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v1, Lv50;

    invoke-direct {v1, v7, v8, v12, v13}, Lv50;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/AutomationTagsAction;I)V

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method
