.class public abstract Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 47

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    const v0, 0x6011ccc3

    move-object/from16 v3, p7

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    iget-object v0, v12, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p8, v3

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_1

    :cond_1
    const/16 v5, 0x10

    :goto_1
    or-int/2addr v3, v5

    move-object/from16 v5, p2

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x100

    goto :goto_2

    :cond_2
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v3, v7

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x800

    goto :goto_3

    :cond_3
    const/16 v7, 0x400

    :goto_3
    or-int/2addr v3, v7

    move-object/from16 v7, p4

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x4000

    goto :goto_4

    :cond_4
    const/16 v9, 0x2000

    :goto_4
    or-int/2addr v3, v9

    move-object/from16 v9, p5

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/high16 v10, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v10, 0x10000

    :goto_5
    or-int/2addr v3, v10

    move-object/from16 v10, p6

    invoke-virtual {v12, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/high16 v11, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v11, 0x80000

    :goto_6
    or-int/2addr v3, v11

    const v11, 0x92493

    and-int/2addr v11, v3

    const v13, 0x92492

    const/4 v15, 0x0

    if-eq v11, v13, :cond_7

    const/4 v11, 0x1

    goto :goto_7

    :cond_7
    move v11, v15

    :goto_7
    and-int/lit8 v13, v3, 0x1

    invoke-virtual {v12, v13, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_1e

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v13

    iget v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v20, 0x0

    const/16 v21, 0x8

    sget-object v16, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    move/from16 v18, v6

    move/from16 v17, v11

    move/from16 v19, v13

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v6, v11}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v13

    iget-object v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVShape;->b:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v6, v13}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v13

    iget-object v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v13, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    sget-object v13, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v6, v8, v9, v13}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v9, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v8, v9, v12, v15}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v14

    move-object/from16 v18, v8

    iget-wide v7, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v12, v6}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v19, v9

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v28, 0x0

    if-eqz v0, :cond_1d

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_8

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_8

    :cond_8
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_8
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v14, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v8, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v7, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v7}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    move-object/from16 v29, v0

    const-string v0, "AppointmentDetailsCard"

    invoke-static {v12, v6, v10, v0, v11}, Ln00;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v11, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    invoke-static {v6, v4, v5, v13}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v11, 0x30

    invoke-static {v6, v5, v12, v11}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v5

    move/from16 v30, v3

    iget-wide v2, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v3

    invoke-static {v12, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-eqz v29, :cond_1c

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v6, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v6, :cond_9

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_9
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_9
    invoke-static {v12, v5, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12, v3, v14}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2, v12, v8, v12, v7}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v12, v4, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v2, 0x7f140f3a

    invoke-static {v12, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v6, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v6, v11}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const-string v11, "osa_appointmentDetailsTitle_text"

    invoke-static {v6, v11}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v11, v13, :cond_a

    new-instance v11, Lfj0;

    move-object/from16 v23, v2

    const/16 v2, 0xb

    invoke-direct {v11, v2}, Lfj0;-><init>(I)V

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_a

    :cond_a
    move-object/from16 v23, v2

    :goto_a
    check-cast v11, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-static {v6, v2, v11}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/16 v26, 0x0

    const v27, 0x1fff8

    move-object v11, v9

    move-object/from16 v20, v10

    const-wide/16 v9, 0x0

    move-object/from16 v22, v11

    const/4 v11, 0x0

    move-object/from16 v24, v12

    move-object/from16 v25, v13

    const-wide/16 v12, 0x0

    move-object/from16 v31, v14

    const/4 v14, 0x0

    move-object/from16 v32, v15

    const/4 v15, 0x0

    const/16 v33, 0x800

    const/16 v34, 0x1

    const-wide/16 v16, 0x0

    move-object/from16 v35, v18

    const/16 v18, 0x0

    move-object/from16 v36, v19

    const/16 v19, 0x0

    move-object/from16 v37, v20

    const/16 v20, 0x0

    const/high16 v38, 0x3f800000    # 1.0f

    const/16 v21, 0x0

    move-object/from16 v39, v22

    const/16 v22, 0x0

    move-object/from16 v40, v25

    const/16 v25, 0x0

    move v1, v2

    move-object/from16 v44, v7

    move-object/from16 v43, v8

    move-object/from16 v42, v31

    move-object/from16 v41, v32

    move/from16 v2, v34

    move-object/from16 v45, v37

    move-object/from16 v46, v40

    move-wide v7, v3

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v12, v24

    invoke-static {v12, v2, v0}, Lo60;->f(Landroidx/compose/runtime/GapComposer;ZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v5

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v3, v4, v12, v1}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v3

    iget-wide v6, v12, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v12, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v29, :cond_1b

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v7, v12, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v7, :cond_b

    move-object/from16 v11, v39

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    :goto_b
    move-object/from16 v7, v41

    goto :goto_c

    :cond_b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->o()V

    goto :goto_b

    :goto_c
    invoke-static {v12, v3, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v3, v42

    invoke-static {v12, v6, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v3, v43

    move-object/from16 v6, v44

    invoke-static {v4, v12, v3, v12, v6}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v3, v45

    invoke-static {v12, v5, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v3, 0x7f140f42

    invoke-static {v12, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    const-string v4, "osa_appointmentDetailsDescription_text"

    invoke-static {v0, v4}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const/16 v26, 0x0

    const v27, 0x1fff8

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v24, v12

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    move-object/from16 v23, v3

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v12, v24

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v5, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const-string v5, "osa_appointmentDetailsLocation_textfield"

    invoke-static {v3, v5}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const v3, 0x7f140f41

    invoke-static {v12, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v7, v46

    if-ne v5, v7, :cond_c

    new-instance v5, Lfj0;

    const/16 v8, 0xc

    invoke-direct {v5, v8}, Lfj0;-><init>(I)V

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v1, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move-object/from16 v5, p0

    iget-object v8, v5, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->v:Ljava/lang/String;

    iget-boolean v9, v5, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->w:Z

    if-eqz v8, :cond_d

    if-nez v9, :cond_d

    const v8, 0x7a681fa7

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v17, v28

    goto :goto_d

    :cond_d
    const v8, 0x7a68e4cb

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->m:I

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v17, v8

    :goto_d
    iget-object v8, v5, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->v:Ljava/lang/String;

    const-string v22, ""

    if-nez v8, :cond_f

    iget-object v11, v5, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->e:Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    if-eqz v11, :cond_e

    iget-object v11, v11, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;->b:Ljava/lang/String;

    move-object/from16 v28, v11

    :cond_e
    if-nez v28, :cond_10

    move-object/from16 v28, v22

    goto :goto_e

    :cond_f
    move-object/from16 v28, v8

    :cond_10
    :goto_e
    if-eqz v8, :cond_12

    if-eqz v9, :cond_11

    goto :goto_f

    :cond_11
    move v9, v1

    goto :goto_10

    :cond_12
    :goto_f
    move v9, v2

    :goto_10
    shr-int/lit8 v8, v30, 0x3

    and-int/lit8 v20, v8, 0x70

    const/16 v21, 0x27c8

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object/from16 v24, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p2

    move-object v2, v7

    move-object/from16 v18, v24

    move-object v7, v3

    move-object v3, v5

    move-object/from16 v5, v28

    invoke-static/range {v5 .. v21}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVReadOnlyTextFieldKt;->a(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Ljava/lang/Integer;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v12, v18

    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->f:Ljava/util/List;

    check-cast v5, Ljava/util/Collection;

    invoke-static {v5}, Lcom/vuitton/foundation/model/domain/extensions/CollectionExtKt;->a(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_19

    const v5, 0x7a6f87bd

    invoke-static {v12, v5, v0}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v6

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v8, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v10, 0x0

    const/16 v11, 0xd

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const-string v5, "osa_appointmentDate_textfield"

    invoke-static {v4, v5}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const v4, 0x7f140f2f

    invoke-static {v12, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v2, :cond_13

    new-instance v0, Lfj0;

    const/16 v5, 0xd

    invoke-direct {v0, v5}, Lfj0;-><init>(I)V

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v1, v0}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v12}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->I0:I

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->j:Ljava/lang/String;

    if-nez v4, :cond_14

    move-object/from16 v5, v22

    goto :goto_11

    :cond_14
    move-object v5, v4

    :goto_11
    and-int/lit8 v4, v30, 0x70

    const/16 v8, 0x20

    if-ne v4, v8, :cond_15

    const/4 v14, 0x1

    goto :goto_12

    :cond_15
    move v14, v1

    :goto_12
    move/from16 v4, v30

    and-int/lit16 v8, v4, 0x1c00

    const/16 v9, 0x800

    if-ne v8, v9, :cond_16

    const/4 v8, 0x1

    goto :goto_13

    :cond_16
    move v8, v1

    :goto_13
    or-int/2addr v8, v14

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_18

    if-ne v9, v2, :cond_17

    goto :goto_14

    :cond_17
    move-object/from16 v8, p1

    move/from16 v30, v4

    move-object/from16 v4, p3

    goto :goto_15

    :cond_18
    :goto_14
    new-instance v9, Lil;

    const/16 v2, 0x8

    move-object/from16 v8, p1

    move/from16 v30, v4

    move-object/from16 v4, p3

    invoke-direct {v9, v8, v4, v2}, Lil;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_15
    move-object/from16 v16, v9

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v20, 0x0

    const/16 v21, 0x27d8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v24, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object/from16 v18, v24

    invoke-static/range {v5 .. v21}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVReadOnlyTextFieldKt;->a(Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLjava/lang/String;ZLjava/lang/String;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function0;Ljava/lang/Integer;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v12, v18

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_16
    const/4 v2, 0x1

    goto :goto_17

    :cond_19
    move-object/from16 v4, p3

    const v0, 0x7a7b5393

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_16

    :goto_17
    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const v0, -0x33c17c1d    # -4.9942412E7f

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->h:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;

    iget-object v6, v3, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->k:Ljava/lang/String;

    iget-object v7, v3, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->l:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    iget-object v8, v3, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->m:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    const v2, 0x3fe000

    and-int v13, v30, v2

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v5 .. v13}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormScreenKt;->d(Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_18

    :cond_1a
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_19

    :cond_1b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v28

    :cond_1c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v28

    :cond_1d
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v28

    :cond_1e
    move-object v3, v1

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_19
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1f

    new-instance v0, Lo;

    move-object/from16 v2, p1

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p8

    move-object v1, v3

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v8}, Lo;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1f
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const v0, -0x47bbb0a

    move-object/from16 v5, p4

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x4

    const/4 v14, 0x2

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v14

    :goto_0
    or-int v0, p5, v0

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x20

    goto :goto_1

    :cond_1
    const/16 v6, 0x10

    :goto_1
    or-int/2addr v0, v6

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x100

    goto :goto_2

    :cond_2
    const/16 v6, 0x80

    :goto_2
    or-int/2addr v0, v6

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x800

    goto :goto_3

    :cond_3
    const/16 v6, 0x400

    :goto_3
    or-int/2addr v0, v6

    and-int/lit16 v6, v0, 0x493

    const/16 v7, 0x492

    const/4 v15, 0x0

    const/16 v16, 0x1

    if-eq v6, v7, :cond_4

    move/from16 v6, v16

    goto :goto_4

    :cond_4
    move v6, v15

    :goto_4
    and-int/lit8 v0, v0, 0x1

    invoke-virtual {v11, v0, v6}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->g:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    const/16 v7, 0x12

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v8, :cond_5

    new-instance v6, Lx20;

    invoke-direct {v6, v7}, Lx20;-><init>(I)V

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v6}, Landroidx/compose/animation/EnterExitTransitionKt;->r(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;

    move-result-object v6

    sget-object v9, Landroidx/compose/animation/core/EasingKt;->c:Landroidx/compose/animation/core/CubicBezierEasing;

    const/16 v10, 0x96

    invoke-static {v10, v15, v9, v14}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v12

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v8, :cond_6

    new-instance v13, Lx20;

    invoke-direct {v13, v7}, Lx20;-><init>(I)V

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v12}, Landroidx/compose/animation/EnterExitTransitionKt;->u(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/ExitTransition;

    move-result-object v12

    new-instance v13, Lni0;

    invoke-direct {v13, v1, v3, v5}, Lni0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v5, -0x12e76ae2

    invoke-static {v5, v13, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    move-object v13, v8

    move-object v8, v12

    const v12, 0x30180

    move-object/from16 v17, v13

    const/16 v13, 0x12

    move/from16 v18, v7

    move-object v7, v6

    const/4 v6, 0x0

    move-object/from16 v19, v9

    const/4 v9, 0x0

    move-object v10, v5

    move-object/from16 v15, v17

    move/from16 v14, v18

    move v5, v0

    move-object/from16 v0, v19

    invoke-static/range {v5 .. v13}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    iget-boolean v5, v2, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->e:Z

    if-eqz v5, :cond_7

    iget-boolean v5, v1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->q:Z

    if-eqz v5, :cond_7

    move/from16 v5, v16

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v15, :cond_8

    new-instance v6, Lx20;

    invoke-direct {v6, v14}, Lx20;-><init>(I)V

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v6}, Landroidx/compose/animation/EnterExitTransitionKt;->r(Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;

    move-result-object v7

    const/16 v6, 0x96

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v6, v9, v0, v8}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v15, :cond_9

    new-instance v6, Lx20;

    invoke-direct {v6, v14}, Lx20;-><init>(I)V

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->u(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)Landroidx/compose/animation/ExitTransition;

    move-result-object v8

    new-instance v0, Lg1;

    const/16 v6, 0x1d

    invoke-direct {v0, v2, v1, v4, v6}, Lg1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const v6, -0x12bef79

    invoke-static {v6, v0, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    const v12, 0x30180

    const/16 v13, 0x12

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v13}, Landroidx/compose/animation/AnimatedVisibilityKt;->e(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    goto :goto_6

    :cond_a
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_b

    new-instance v0, Luv;

    const/16 v6, 0x16

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Luv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/Function;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public static final c(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;III)V
    .locals 43

    move-object/from16 v1, p0

    move-object/from16 v15, p1

    move-object/from16 v11, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v6, p8

    move/from16 v9, p23

    move/from16 v10, p24

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

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

    const v0, 0x600c6e27

    move-object/from16 v2, p22

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    and-int/lit8 v0, v9, 0x6

    if-nez v0, :cond_1

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v9

    goto :goto_1

    :cond_1
    move v0, v9

    :goto_1
    and-int/lit8 v4, v9, 0x30

    if-nez v4, :cond_4

    and-int/lit8 v4, v9, 0x40

    if-nez v4, :cond_2

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_2

    :cond_2
    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    :goto_2
    if-eqz v4, :cond_3

    const/16 v4, 0x20

    goto :goto_3

    :cond_3
    const/16 v4, 0x10

    :goto_3
    or-int/2addr v0, v4

    :cond_4
    and-int/lit16 v4, v9, 0x180

    const/16 v16, 0x100

    if-nez v4, :cond_6

    move-object/from16 v4, p2

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    move/from16 v17, v16

    goto :goto_4

    :cond_5
    const/16 v17, 0x80

    :goto_4
    or-int v0, v0, v17

    goto :goto_5

    :cond_6
    move-object/from16 v4, p2

    :goto_5
    and-int/lit16 v2, v9, 0xc00

    const/16 v17, 0x400

    if-nez v2, :cond_8

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x800

    goto :goto_6

    :cond_7
    move/from16 v2, v17

    :goto_6
    or-int/2addr v0, v2

    :cond_8
    and-int/lit16 v2, v9, 0x6000

    const/16 v19, 0x2000

    const/16 v20, 0x4000

    if-nez v2, :cond_a

    move-object/from16 v2, p4

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    move/from16 v21, v20

    goto :goto_7

    :cond_9
    move/from16 v21, v19

    :goto_7
    or-int v0, v0, v21

    goto :goto_8

    :cond_a
    move-object/from16 v2, p4

    :goto_8
    const/high16 v21, 0x30000

    and-int v22, v9, v21

    const/high16 v23, 0x10000

    const/high16 v24, 0x20000

    move-object/from16 v13, p5

    if-nez v22, :cond_c

    invoke-virtual {v12, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    move/from16 v25, v24

    goto :goto_9

    :cond_b
    move/from16 v25, v23

    :goto_9
    or-int v0, v0, v25

    :cond_c
    const/high16 v25, 0x180000

    and-int v26, v9, v25

    const/high16 v27, 0x80000

    const/high16 v28, 0x100000

    if-nez v26, :cond_e

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_d

    move/from16 v26, v28

    goto :goto_a

    :cond_d
    move/from16 v26, v27

    :goto_a
    or-int v0, v0, v26

    :cond_e
    const/high16 v26, 0xc00000

    and-int v29, v9, v26

    const/high16 v30, 0x400000

    const/high16 v31, 0x800000

    if-nez v29, :cond_10

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    move/from16 v29, v31

    goto :goto_b

    :cond_f
    move/from16 v29, v30

    :goto_b
    or-int v0, v0, v29

    :cond_10
    const/high16 v29, 0x6000000

    and-int v32, v9, v29

    const/high16 v33, 0x2000000

    if-nez v32, :cond_12

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_11

    const/high16 v32, 0x4000000

    goto :goto_c

    :cond_11
    move/from16 v32, v33

    :goto_c
    or-int v0, v0, v32

    :cond_12
    const/high16 v32, 0x30000000

    and-int v34, v9, v32

    const/high16 v35, 0x10000000

    const/high16 v36, 0x20000000

    move-object/from16 v14, p9

    if-nez v34, :cond_14

    invoke-virtual {v12, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_13

    move/from16 v37, v36

    goto :goto_d

    :cond_13
    move/from16 v37, v35

    :goto_d
    or-int v0, v0, v37

    :cond_14
    and-int/lit8 v37, v10, 0x6

    move-object/from16 v5, p10

    if-nez v37, :cond_16

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_15

    const/16 v38, 0x4

    goto :goto_e

    :cond_15
    const/16 v38, 0x2

    :goto_e
    or-int v38, v10, v38

    goto :goto_f

    :cond_16
    move/from16 v38, v10

    :goto_f
    and-int/lit8 v39, v10, 0x30

    move-object/from16 v3, p11

    if-nez v39, :cond_18

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_17

    const/16 v40, 0x20

    goto :goto_10

    :cond_17
    const/16 v40, 0x10

    :goto_10
    or-int v38, v38, v40

    :cond_18
    and-int/lit16 v2, v10, 0x180

    if-nez v2, :cond_1a

    move-object/from16 v2, p12

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_19

    goto :goto_11

    :cond_19
    const/16 v16, 0x80

    :goto_11
    or-int v38, v38, v16

    goto :goto_12

    :cond_1a
    move-object/from16 v2, p12

    :goto_12
    and-int/lit16 v2, v10, 0xc00

    if-nez v2, :cond_1c

    move-object/from16 v2, p13

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1b

    const/16 v17, 0x800

    :cond_1b
    or-int v38, v38, v17

    goto :goto_13

    :cond_1c
    move-object/from16 v2, p13

    :goto_13
    and-int/lit16 v2, v10, 0x6000

    if-nez v2, :cond_1e

    move-object/from16 v2, p14

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1d

    move/from16 v19, v20

    :cond_1d
    or-int v38, v38, v19

    goto :goto_14

    :cond_1e
    move-object/from16 v2, p14

    :goto_14
    and-int v16, v10, v21

    move-object/from16 v9, p15

    if-nez v16, :cond_20

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1f

    move/from16 v23, v24

    :cond_1f
    or-int v38, v38, v23

    :cond_20
    and-int v16, v10, v25

    move-object/from16 v2, p16

    if-nez v16, :cond_22

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_21

    move/from16 v27, v28

    :cond_21
    or-int v38, v38, v27

    :cond_22
    and-int v16, v10, v26

    move-object/from16 v9, p17

    if-nez v16, :cond_24

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_23

    move/from16 v30, v31

    :cond_23
    or-int v38, v38, v30

    :cond_24
    and-int v16, v10, v29

    move-object/from16 v9, p18

    if-nez v16, :cond_26

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_25

    const/high16 v33, 0x4000000

    :cond_25
    or-int v38, v38, v33

    :cond_26
    and-int v16, v10, v32

    move-object/from16 v9, p19

    if-nez v16, :cond_28

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_27

    move/from16 v35, v36

    :cond_27
    or-int v38, v38, v35

    :cond_28
    and-int/lit8 v16, p25, 0x6

    move-object/from16 v9, p20

    if-nez v16, :cond_2a

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_29

    const/16 v18, 0x4

    goto :goto_15

    :cond_29
    const/16 v18, 0x2

    :goto_15
    or-int v16, p25, v18

    goto :goto_16

    :cond_2a
    move/from16 v16, p25

    :goto_16
    and-int/lit8 v17, p25, 0x30

    move-object/from16 v9, p21

    if-nez v17, :cond_2c

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2b

    const/16 v22, 0x20

    goto :goto_17

    :cond_2b
    const/16 v22, 0x10

    :goto_17
    or-int v16, v16, v22

    :cond_2c
    const v17, 0x12492493

    and-int v2, v0, v17

    const v9, 0x12492492

    if-ne v2, v9, :cond_2e

    and-int v2, v38, v17

    if-ne v2, v9, :cond_2e

    and-int/lit8 v2, v16, 0x13

    const/16 v9, 0x12

    if-eq v2, v9, :cond_2d

    goto :goto_18

    :cond_2d
    const/4 v2, 0x0

    goto :goto_19

    :cond_2e
    :goto_18
    const/4 v2, 0x1

    :goto_19
    and-int/lit8 v9, v0, 0x1

    invoke-virtual {v12, v9, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_36

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean v2, v7, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->b:Z

    if-nez v2, :cond_2f

    iget-boolean v2, v1, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;->c:Z

    if-eqz v2, :cond_30

    :cond_2f
    iget-boolean v2, v7, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->f:Z

    if-eqz v2, :cond_30

    const/4 v2, 0x1

    goto :goto_1a

    :cond_30
    const/4 v2, 0x0

    :goto_1a
    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    and-int/lit16 v10, v0, 0x1c00

    move/from16 v17, v0

    const/16 v0, 0x800

    if-ne v10, v0, :cond_31

    const/4 v0, 0x1

    goto :goto_1b

    :cond_31
    const/4 v0, 0x0

    :goto_1b
    or-int/2addr v0, v9

    const/high16 v9, 0xe000000

    and-int v9, v17, v9

    const/high16 v10, 0x4000000

    if-ne v9, v10, :cond_32

    const/4 v9, 0x1

    goto :goto_1c

    :cond_32
    const/4 v9, 0x0

    :goto_1c
    or-int/2addr v0, v9

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v0, :cond_33

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v0, :cond_34

    :cond_33
    new-instance v9, Lof0;

    const/16 v0, 0xf

    invoke-direct {v9, v1, v11, v6, v0}, Lof0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_34
    check-cast v9, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x1

    const/4 v10, 0x0

    invoke-static {v10, v9, v12, v10, v0}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    new-instance v9, Lkw;

    const/16 v0, 0x1a

    invoke-direct {v9, v6, v0}, Lkw;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v0, 0x6ff82aeb

    invoke-static {v0, v9, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v22

    new-instance v0, Lod;

    move v3, v2

    move-object v2, v1

    move v1, v3

    move-object/from16 v5, p16

    move-object v3, v7

    move-object v4, v14

    const/16 v16, 0x1

    invoke-direct/range {v0 .. v5}, Lod;-><init>(ZLcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const v2, 0x7d7472ec

    invoke-static {v2, v0, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v23

    new-instance v0, Lae0;

    const/16 v9, 0x12

    invoke-direct {v0, v8, v9}, Lae0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v2, -0x750f4513

    invoke-static {v2, v0, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v24

    new-instance v0, Ltj0;

    move-object/from16 v3, p0

    move-object/from16 v16, p2

    move-object/from16 v18, p4

    move-object/from16 v4, p6

    move-object/from16 v19, p13

    move-object/from16 v9, p14

    move-object/from16 v6, p15

    move-object/from16 v7, p16

    move-object/from16 v5, p17

    move-object/from16 v10, p18

    move-object/from16 v21, p19

    move-object/from16 v20, p20

    move-object/from16 v14, p21

    move-object v2, v8

    move-object/from16 v41, v12

    move-object/from16 v17, v13

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v21}, Ltj0;-><init>(ZLandroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    move-object v1, v0

    move-object v0, v4

    const v2, 0x527cc7b6

    move-object/from16 v13, v41

    invoke-static {v2, v1, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v12

    const v14, 0x30000db0

    const/16 v15, 0x1f1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    invoke-static/range {v1 .. v15}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;->a:Z

    if-eqz v1, :cond_35

    const v1, 0x46e327f9

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v1, 0x1

    const/4 v10, 0x0

    invoke-static {v10, v13, v10, v1}, Lcom/vuitton/android/designkit/components/components/LVLoadingOverlayKt;->a(ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1d

    :cond_35
    const/4 v10, 0x0

    const v1, 0x46e3a79b

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1d

    :cond_36
    move-object v0, v7

    move-object v13, v12

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1d
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_37

    new-instance v0, Luj0;

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

    move/from16 v23, p23

    move/from16 v24, p24

    move/from16 v25, p25

    move-object/from16 v42, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v25}, Luj0;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/models/OsaLocationFormViewState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormBottomSheetScreen;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;III)V

    move-object v1, v0

    move-object/from16 v0, v42

    iput-object v1, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_37
    return-void
.end method

.method public static final d(Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    const v0, 0x12f42cb5

    move-object/from16 v5, p7

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    iget-object v0, v11, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    or-int v5, p8, v5

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x20

    goto :goto_1

    :cond_1
    const/16 v9, 0x10

    :goto_1
    or-int/2addr v5, v9

    if-nez p2, :cond_2

    const/4 v9, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    :goto_2
    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x100

    goto :goto_3

    :cond_3
    const/16 v9, 0x80

    :goto_3
    or-int/2addr v5, v9

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x800

    goto :goto_4

    :cond_4
    const/16 v9, 0x400

    :goto_4
    or-int/2addr v5, v9

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0x4000

    goto :goto_5

    :cond_5
    const/16 v9, 0x2000

    :goto_5
    or-int/2addr v5, v9

    move-object/from16 v9, p5

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/high16 v13, 0x20000

    goto :goto_6

    :cond_6
    const/high16 v13, 0x10000

    :goto_6
    or-int/2addr v5, v13

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/high16 v13, 0x100000

    goto :goto_7

    :cond_7
    const/high16 v13, 0x80000

    :goto_7
    or-int/2addr v5, v13

    const v13, 0x92493

    and-int/2addr v13, v5

    const v10, 0x92492

    const/4 v6, 0x0

    if-eq v13, v10, :cond_8

    const/4 v10, 0x1

    goto :goto_8

    :cond_8
    move v10, v6

    :goto_8
    and-int/lit8 v13, v5, 0x1

    invoke-virtual {v11, v13, v10}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_1d

    sget-object v10, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v10, "StoreAppointmentItem"

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v10, v13}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v12

    move-object/from16 v17, v10

    sget-object v10, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v18, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v10, v14, v11, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v13

    iget-wide v6, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v11, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v20, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v20, v10

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v35, 0x0

    if-eqz v0, :cond_1c

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_9

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_9
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_9
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v13, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v7, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v6}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v22, v10

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v12, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    move-object/from16 v23, v0

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v0

    iget v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    move-object/from16 v24, v10

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    move-object/from16 v28, v11

    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    invoke-static {v11, v12, v9, v0, v10}, Landroidx/compose/foundation/layout/PaddingKt;->l(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-static/range {v28 .. v28}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v11, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    move-object v0, v14

    const/4 v14, 0x0

    move-object v10, v15

    const/4 v15, 0x2

    move-object/from16 v25, v10

    const/4 v10, 0x0

    move-object v4, v0

    move/from16 p7, v5

    move-object v3, v13

    move-object/from16 v1, v17

    move-object/from16 v0, v20

    move-object/from16 v5, v22

    move-object/from16 v8, v24

    move-object/from16 v2, v25

    move-object/from16 v13, v28

    invoke-static/range {v9 .. v15}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    move-object v11, v13

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v10, v12, :cond_a

    new-instance v10, Lfj0;

    const/16 v13, 0xe

    invoke-direct {v10, v13}, Lfj0;-><init>(I)V

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/4 v13, 0x1

    invoke-static {v9, v13, v10}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v13, 0x0

    const/4 v14, 0x2

    invoke-static {v9, v10, v13, v14}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v0, v4, v11, v10}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v0

    iget-wide v14, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v11, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    if-eqz v23, :cond_1b

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v14, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v14, :cond_b

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    :cond_b
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_a
    invoke-static {v11, v0, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v10, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4, v11, v7, v11, v6}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v11, v9, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;->k:Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;

    if-nez v4, :cond_c

    const v2, 0x1b74a8f8

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v10, 0x0

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v2, v12

    move v3, v13

    goto/16 :goto_c

    :cond_c
    const v9, 0x1b74a8f9

    invoke-static {v11, v9, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v14

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/16 v19, 0x7

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v18, v9

    invoke-static/range {v14 .. v19}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v14, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    const/16 v15, 0x30

    invoke-static {v14, v10, v11, v15}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v10

    iget-wide v14, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v14, v15}, Ljava/lang/Long;->hashCode(J)I

    move-result v14

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v15

    invoke-static {v11, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    if-eqz v23, :cond_1a

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v13, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_d

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_b

    :cond_d
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_b
    invoke-static {v11, v10, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v15, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v11, v7, v11, v6}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v11, v9, v8, v1}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v2

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->m:F

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->c:I

    const/4 v10, 0x0

    invoke-static {v3, v11, v10}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v9

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v5, v3, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->v:J

    const/16 v15, 0x38

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/4 v10, 0x0

    move-object v14, v11

    move-object v11, v2

    move-object v2, v12

    move-wide v12, v5

    invoke-static/range {v9 .. v16}, Landroidx/compose/material3/IconKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    move-object/from16 v28, v14

    iget-object v5, v4, Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;->b:Ljava/lang/String;

    sget-object v6, Landroidx/compose/ui/text/intl/Locale;->b:Landroidx/compose/ui/text/intl/Locale$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/compose/ui/text/intl/Locale$Companion;->a()Landroidx/compose/ui/text/intl/Locale;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/compose/ui/text/StringKt;->a(Ljava/lang/String;Landroidx/compose/ui/text/intl/Locale;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v10, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static/range {v28 .. v28}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v11, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/4 v14, 0x0

    const/16 v15, 0xe

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static/range {v28 .. v28}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v11, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->v:J

    invoke-static/range {v28 .. v28}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->p:Landroidx/compose/ui/text/TextStyle;

    const/16 v30, 0x0

    const v31, 0x1fff8

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    move-object/from16 v27, v5

    invoke-static/range {v9 .. v31}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v11, v28

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v10, 0x0

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_c
    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;->c:Ljava/lang/String;

    const-string v5, "osa_appointmentStoreName_text"

    invoke-static {v1, v5}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->f:Landroidx/compose/ui/text/TextStyle;

    const/16 v30, 0x0

    const v31, 0x1fff8

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    move-object/from16 v27, v7

    move-object/from16 v28, v11

    move-wide v11, v5

    invoke-static/range {v9 .. v31}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v11, v28

    if-eqz v4, :cond_e

    iget-object v5, v4, Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;->c:Ljava/lang/String;

    move-object v9, v5

    goto :goto_d

    :cond_e
    move-object/from16 v9, v35

    :goto_d
    if-nez v9, :cond_f

    const v5, 0x1b8978da

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v10, 0x0

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :cond_f
    const v5, 0x1b8978db

    invoke-static {v11, v5, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v12

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v14, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    const/16 v16, 0x0

    const/16 v17, 0xd

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->g:Landroidx/compose/ui/text/TextStyle;

    const/16 v30, 0x0

    const v31, 0x1fff8

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    move-object/from16 v27, v7

    move-object/from16 v28, v11

    move-wide v11, v5

    invoke-static/range {v9 .. v31}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v11, v28

    const/4 v10, 0x0

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_e
    const v5, 0x7f140f83

    invoke-static {v11, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;->d:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;->e:Ljava/lang/String;

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v14, 0x2

    invoke-static {v6, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v12, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v12, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v14, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v16, 0x0

    const/16 v17, 0xd

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    const-string v6, "osa_appointmentStoreAddress_text"

    invoke-static {v5, v6}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    const/16 v30, 0x0

    const v31, 0x1fff8

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    move-object/from16 v27, v7

    move-object/from16 v28, v11

    move-wide v11, v5

    invoke-static/range {v9 .. v31}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v11, v28

    new-instance v5, Lw20;

    const/16 v6, 0x1a

    invoke-direct {v5, v0, v6}, Lw20;-><init>(Ljava/lang/Object;I)V

    const v6, 0xc933b6b

    invoke-static {v6, v5, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v5, v11, v6}, Lcom/vuitton/android/designkit/components/LeftToRightLayoutKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    if-eqz v4, :cond_14

    const v5, -0x3e5eff24

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v5, -0x3bd1801f

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v4, v4, Lcom/vuitton/android/presentation/model/storelocator/MegatrioUiModel;->d:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/model/common/CtaUiModel;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v1, v6}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v9, 0x2

    invoke-static {v7, v8, v3, v9}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v14, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v16, 0x0

    const/16 v17, 0xd

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v7

    iget-object v13, v7, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    iget-object v7, v5, Lcom/vuitton/android/presentation/model/common/CtaUiModel;->b:Ljava/lang/String;

    const/high16 v8, 0x380000

    and-int v8, p7, v8

    const/high16 v10, 0x100000

    if-ne v8, v10, :cond_10

    const/4 v8, 0x1

    goto :goto_10

    :cond_10
    const/4 v8, 0x0

    :goto_10
    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v8, v14

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v8, :cond_12

    if-ne v14, v2, :cond_11

    goto :goto_11

    :cond_11
    move-object/from16 v15, p6

    goto :goto_12

    :cond_12
    :goto_11
    new-instance v14, Lrh0;

    const/16 v8, 0xb

    move-object/from16 v15, p6

    invoke-direct {v14, v15, v5, v8}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_12
    move-object/from16 v17, v14

    check-cast v17, Lkotlin/jvm/functions/Function0;

    move/from16 v21, v10

    const/16 v10, 0x1f8

    move/from16 v32, v9

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v7

    invoke-static/range {v9 .. v20}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    goto :goto_f

    :cond_13
    const/4 v5, 0x0

    invoke-static {v11, v5, v1}, Lo60;->f(Landroidx/compose/runtime/GapComposer;ZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v1, v2, v11, v5}, Lcj;->x(Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;FLandroidx/compose/runtime/GapComposer;Z)V

    move-object/from16 v8, p4

    const/4 v7, 0x1

    goto/16 :goto_18

    :cond_14
    const/4 v5, 0x0

    const v3, -0x3e53ef00

    invoke-static {v11, v3, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v12

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v14, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v16, 0x0

    const/16 v17, 0xd

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v3

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;->h:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    const/16 v33, 0x1

    xor-int/lit8 v10, v4, 0x1

    new-instance v4, Lrj0;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    invoke-direct {v4, v6, v0, v7, v8}, Lrj0;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Lkotlin/jvm/functions/Function2;)V

    const v9, -0x719bfc59

    invoke-static {v9, v4, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v15

    const/16 v18, 0x1c

    sget-object v9, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const v17, 0x180006

    move-object/from16 v16, v11

    move-object v11, v3

    invoke-static/range {v9 .. v18}, Landroidx/compose/animation/AnimatedVisibilityKt;->c(Landroidx/compose/foundation/layout/ColumnScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v11, v16

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/16 v22, 0x0

    const/16 v23, 0xd

    const/16 v19, 0x0

    const/16 v21, 0x0

    move/from16 v20, v1

    move-object/from16 v18, v3

    invoke-static/range {v18 .. v23}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;->i:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/16 v33, 0x1

    xor-int/lit8 v10, v3, 0x1

    new-instance v3, Lrj0;

    invoke-direct {v3, v0, v6, v7, v8}, Lrj0;-><init>(Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Lkotlin/jvm/functions/Function2;)V

    const v4, -0x2e504422

    invoke-static {v4, v3, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v15

    const/16 v18, 0x1c

    move-object v11, v1

    invoke-static/range {v9 .. v18}, Landroidx/compose/animation/AnimatedVisibilityKt;->c(Landroidx/compose/foundation/layout/ColumnScope;ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v11, v16

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v1}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v12

    move/from16 v1, p7

    and-int/lit16 v3, v1, 0x380

    const/16 v4, 0x100

    if-ne v3, v4, :cond_15

    move/from16 v13, v33

    goto :goto_13

    :cond_15
    move v13, v5

    :goto_13
    and-int/lit8 v3, v1, 0x70

    const/16 v4, 0x20

    if-ne v3, v4, :cond_16

    move/from16 v3, v33

    goto :goto_14

    :cond_16
    move v3, v5

    :goto_14
    or-int/2addr v3, v13

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    move-object/from16 v4, p3

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v3, v9

    const/high16 v9, 0x70000

    and-int/2addr v1, v9

    const/high16 v9, 0x20000

    if-ne v1, v9, :cond_17

    move/from16 v13, v33

    goto :goto_15

    :cond_17
    move v13, v5

    :goto_15
    or-int v1, v3, v13

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_19

    if-ne v3, v2, :cond_18

    goto :goto_16

    :cond_18
    move/from16 v34, v5

    move/from16 v7, v33

    goto :goto_17

    :cond_19
    :goto_16
    new-instance v0, Ld1;

    const/16 v6, 0xd

    move-object/from16 v3, p0

    move-object/from16 v2, p1

    move/from16 v34, v5

    move-object v1, v7

    move/from16 v7, v33

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Ld1;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v3, v0

    :goto_17
    move-object/from16 v17, v3

    check-cast v17, Lkotlin/jvm/functions/Function1;

    const/16 v19, 0x0

    const/16 v20, 0x1ef

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v28, v11

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v18, v28

    move/from16 v5, v34

    invoke-static/range {v9 .. v20}, Landroidx/compose/foundation/lazy/LazyDslKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/FlingBehavior;ZLandroidx/compose/foundation/OverscrollEffect;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v11, v18

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_18
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_19

    :cond_1a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v35

    :cond_1b
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v35

    :cond_1c
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v35

    :cond_1d
    move-object v8, v7

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_19
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_1e

    new-instance v0, Lo;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v5, v8

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lo;-><init>(Lcom/vuitton/android/presentation/screen/osa/models/OsaFormItemUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1e
    return-void
.end method
