.class public abstract Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentWidgetKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentWidgetKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u00a8\u0006\u0003\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "",
        "hasEntranceAnimated",
        "isFirstSwipe",
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
.method public static final a(Ljava/util/List;ZZJLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 34

    move-object/from16 v1, p0

    move/from16 v8, p2

    const v0, 0x50e5cbf

    move-object/from16 v2, p8

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v15

    iget-object v9, v15, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p9, v0

    move/from16 v2, p1

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    invoke-virtual {v15, v8}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x100

    goto :goto_2

    :cond_2
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v0, v3

    move-wide/from16 v4, p3

    invoke-virtual {v15, v4, v5}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x800

    goto :goto_3

    :cond_3
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v0, v3

    if-nez p5, :cond_4

    const/4 v3, -0x1

    goto :goto_4

    :cond_4
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    :goto_4
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x4000

    goto :goto_5

    :cond_5
    const/16 v3, 0x2000

    :goto_5
    or-int/2addr v0, v3

    move-object/from16 v7, p6

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/high16 v3, 0x20000

    goto :goto_6

    :cond_6
    const/high16 v3, 0x10000

    :goto_6
    or-int/2addr v0, v3

    move-object/from16 v11, p7

    invoke-virtual {v15, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v3, 0x100000

    goto :goto_7

    :cond_7
    const/high16 v3, 0x80000

    :goto_7
    or-int v27, v0, v3

    const v0, 0x92493

    and-int v0, v27, v0

    const v3, 0x92492

    const/4 v14, 0x0

    if-eq v0, v3, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :cond_8
    move v0, v14

    :goto_8
    and-int/lit8 v3, v27, 0x1

    invoke-virtual {v15, v3, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_9

    if-ne v3, v6, :cond_a

    :cond_9
    new-instance v3, Ldb;

    const/4 v0, 0x5

    invoke-direct {v3, v1, v0}, Ldb;-><init>(Ljava/util/List;I)V

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v3, Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x3

    invoke-static {v14, v3, v15, v14, v0}, Landroidx/compose/foundation/pager/PagerStateKt;->b(ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;

    move-result-object v0

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->o:Landroidx/compose/ui/BiasAlignment$Horizontal;

    new-instance v12, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v13, "HotContentCarousel"

    invoke-direct {v12, v13}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v14, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    const/16 v10, 0x30

    invoke-static {v14, v3, v15, v10}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v3

    move-object v10, v0

    iget-wide v0, v15, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    invoke-static {v15, v12}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v28, 0x0

    if-eqz v9, :cond_17

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    move/from16 v19, v0

    iget-boolean v0, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v0, :cond_b

    invoke-virtual {v15, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_9

    :cond_b
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_9
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v3, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v19, v10

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v1, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v15, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v20, v10

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v12, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object v12, v0

    new-instance v0, Lu10;

    move-object/from16 v30, v1

    move-object/from16 v29, v3

    move-object/from16 v31, v6

    move-object/from16 v1, p0

    move-object/from16 v3, p5

    move-wide v5, v4

    move v4, v2

    move-object/from16 v2, v19

    invoke-direct/range {v0 .. v7}, Lu10;-><init>(Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZJLkotlin/jvm/functions/Function1;)V

    const v1, -0x2e2c7351

    invoke-static {v1, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v3

    iget v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/PaddingKt;->c(FI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v3

    new-instance v5, Lv10;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lv10;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    const v0, 0x56af8328

    invoke-static {v0, v5, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v22

    const/16 v25, 0x6000

    const/16 v26, 0x3fca

    move-object v0, v10

    const/4 v10, 0x0

    move-object v5, v12

    const/4 v12, 0x0

    move-object v7, v13

    const/4 v13, 0x1

    move-object/from16 v23, v15

    const/4 v15, 0x0

    const/16 v17, 0x1

    const/16 v16, 0x0

    move/from16 v18, v17

    const/16 v17, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v21, v19

    const/16 v19, 0x0

    move-object/from16 v24, v20

    const/16 v20, 0x0

    move/from16 v32, v21

    const/16 v21, 0x0

    move-object/from16 v33, v24

    const/16 v24, 0x6000

    move-object v4, v14

    move v14, v1

    move-object v1, v9

    move-object v9, v2

    move-object v2, v4

    move-object v4, v0

    move-object v11, v3

    move v0, v6

    move-object/from16 v3, v33

    const/high16 v6, 0x100000

    invoke-static/range {v9 .. v26}, Landroidx/compose/foundation/pager/PagerKt;->a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/TargetedFlingBehavior;ZZLandroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/foundation/gestures/snapping/SnapPosition;Landroidx/compose/foundation/OverscrollEffect;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    move-object v10, v9

    move-object/from16 v15, v23

    new-instance v9, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v9, v7}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    const/16 v20, 0x0

    const/16 v21, 0xd

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v9

    move/from16 v18, v11

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v11, v0}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v11

    iget-wide v12, v15, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v15, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    if-eqz v1, :cond_16

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v1, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v1, :cond_c

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_a

    :cond_c
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_a
    invoke-static {v15, v11, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v1, v29

    invoke-static {v15, v13, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v1, v30

    invoke-static {v12, v15, v3, v15, v1}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v15, v9, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v1, v7}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroidx/compose/ui/Alignment$Companion;->f:Landroidx/compose/ui/BiasAlignment;

    sget-object v9, Landroidx/compose/foundation/layout/BoxScopeInstance;->a:Landroidx/compose/foundation/layout/BoxScopeInstance;

    invoke-virtual {v9, v1, v2}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    shr-int/lit8 v2, v27, 0x6

    and-int/lit16 v2, v2, 0x380

    move-object v3, v7

    const/16 v7, 0x8

    const/4 v4, 0x0

    move v5, v6

    move v6, v2

    move-object v2, v10

    move v10, v5

    move-object v11, v3

    move-object v5, v15

    move-object/from16 v3, p5

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVCapsulePageControlKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLandroidx/compose/runtime/Composer;II)V

    if-eqz v8, :cond_f

    const v1, 0x7372dd17

    invoke-static {v15, v1, v11}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->j:Landroidx/compose/ui/BiasAlignment;

    invoke-virtual {v9, v1, v3}, Landroidx/compose/foundation/layout/BoxScopeInstance;->g(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    const/16 v20, 0x0

    const/16 v21, 0xb

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, v1

    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v1, Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentWidgetKt$WhenMappings;->a:[I

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_e

    const/4 v4, 0x2

    if-ne v1, v4, :cond_d

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    :goto_b
    move-object v11, v1

    goto :goto_c

    :cond_d
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_e
    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->INVERT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    goto :goto_b

    :goto_c
    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->b:Landroidx/compose/foundation/layout/Arrangement$End$1;

    sget-object v13, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v16, 0x6c00

    const/16 v17, 0x20

    const/4 v14, 0x0

    move v6, v10

    move-object v10, v2

    invoke-static/range {v9 .. v17}, Lcom/vuitton/android/presentation/compose/components/AccessibilityPagerButtonsKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;FLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_d
    const/4 v3, 0x1

    goto :goto_e

    :cond_f
    move v6, v10

    const v1, 0x737cd5bf

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_d

    :goto_e
    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v4, v31

    if-ne v1, v4, :cond_10

    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_11

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_15

    const v7, 0x62892bb0

    invoke-virtual {v15, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v2}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    const/high16 v10, 0x380000

    and-int v10, v27, v10

    if-ne v10, v6, :cond_12

    move v13, v3

    goto :goto_f

    :cond_12
    move v13, v0

    :goto_f
    or-int v3, v9, v13

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_13

    if-ne v6, v4, :cond_14

    :cond_13
    move v3, v1

    new-instance v1, Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentWidgetKt$HotContentCarousel$2$1;

    const/4 v6, 0x0

    move-object/from16 v4, p7

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentWidgetKt$HotContentCarousel$2$1;-><init>(Landroidx/compose/foundation/pager/PagerState;ILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v6, v1

    :cond_14
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v15, v7, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :cond_15
    const v1, 0x628c43c3

    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :cond_16
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v28

    :cond_17
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v28

    :cond_18
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_10
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v10

    if-eqz v10, :cond_19

    new-instance v0, Lw10;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p9

    move v3, v8

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lw10;-><init>(Ljava/util/List;ZZJLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v10, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_19
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZJLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p6

    if-eqz v0, :cond_0

    const-string v1, "HotContentCarouselItemDispatcher"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v8, v0

    const v0, -0x1e900efe

    move-object/from16 v1, p7

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    or-int v0, p8, v0

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x20

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x100

    goto :goto_2

    :cond_3
    const/16 v3, 0x80

    :goto_2
    or-int/2addr v0, v3

    move/from16 v11, p3

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x800

    goto :goto_3

    :cond_4
    const/16 v3, 0x400

    :goto_3
    or-int/2addr v0, v3

    move-wide/from16 v5, p4

    invoke-virtual {v12, v5, v6}, Landroidx/compose/runtime/GapComposer;->e(J)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x4000

    goto :goto_4

    :cond_5
    const/16 v3, 0x2000

    :goto_4
    or-int/2addr v0, v3

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v9, 0x20000

    if-eqz v3, :cond_6

    move v3, v9

    goto :goto_5

    :cond_6
    const/high16 v3, 0x10000

    :goto_5
    or-int/2addr v0, v3

    const v3, 0x12493

    and-int/2addr v3, v0

    const v10, 0x12492

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eq v3, v10, :cond_7

    move v3, v14

    goto :goto_6

    :cond_7
    move v3, v13

    :goto_6
    and-int/lit8 v10, v0, 0x1

    invoke-virtual {v12, v10, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_17

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    instance-of v3, v2, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/high16 v15, 0x70000

    if-eqz v3, :cond_c

    const v1, 0x4537e052

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v1, v2

    check-cast v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;

    and-int v3, v0, v15

    if-ne v3, v9, :cond_8

    move v3, v14

    goto :goto_7

    :cond_8
    move v3, v13

    :goto_7
    and-int/lit8 v9, v0, 0x70

    if-eq v9, v4, :cond_9

    move v4, v13

    goto :goto_8

    :cond_9
    move v4, v14

    :goto_8
    or-int/2addr v3, v4

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_a

    if-ne v4, v10, :cond_b

    :cond_a
    new-instance v4, Lq10;

    invoke-direct {v4, v7, v2, v14}, Lq10;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;I)V

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object v14, v4

    check-cast v14, Lkotlin/jvm/functions/Function0;

    const v3, 0xfffe

    and-int v16, v0, v3

    move-object/from16 v10, p2

    move-object v9, v1

    move-object v15, v12

    move v3, v13

    move-wide v12, v5

    invoke-static/range {v8 .. v16}, Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentOrderItemKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v12, v15

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_b

    :cond_c
    move v3, v13

    instance-of v5, v2, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$StoreAppointment;

    if-eqz v5, :cond_11

    const v5, 0x453808d5

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v5, v2

    check-cast v5, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$StoreAppointment;

    and-int v6, v0, v15

    if-ne v6, v9, :cond_d

    move v13, v14

    goto :goto_9

    :cond_d
    move v13, v3

    :goto_9
    and-int/lit8 v6, v0, 0x70

    if-eq v6, v4, :cond_e

    move v14, v3

    :cond_e
    or-int v4, v13, v14

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v4, :cond_f

    if-ne v6, v10, :cond_10

    :cond_f
    new-instance v6, Lq10;

    invoke-direct {v6, v7, v2, v1}, Lq10;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;I)V

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object v11, v6

    check-cast v11, Lkotlin/jvm/functions/Function0;

    and-int/lit16 v13, v0, 0x3fe

    move-object/from16 v10, p2

    move-object v9, v5

    invoke-static/range {v8 .. v13}, Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentStoreAppointmentItemKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$StoreAppointment;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_11
    instance-of v1, v2, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$CareService;

    if-eqz v1, :cond_16

    const v1, 0x45382570

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v1, v2

    check-cast v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$CareService;

    and-int v5, v0, v15

    if-ne v5, v9, :cond_12

    move v13, v14

    goto :goto_a

    :cond_12
    move v13, v3

    :goto_a
    and-int/lit8 v5, v0, 0x70

    if-eq v5, v4, :cond_13

    move v14, v3

    :cond_13
    or-int v4, v13, v14

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_14

    if-ne v5, v10, :cond_15

    :cond_14
    new-instance v5, Lq10;

    invoke-direct {v5, v7, v2, v3}, Lq10;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;I)V

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    move-object v11, v5

    check-cast v11, Lkotlin/jvm/functions/Function0;

    and-int/lit16 v13, v0, 0x3fe

    move-object/from16 v10, p2

    move-object v9, v1

    invoke-static/range {v8 .. v13}, Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentCareServiceItemKt;->d(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$CareService;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_b

    :cond_16
    const v0, 0x4537db5a

    invoke-static {v12, v0, v3}, Ld21;->u(Landroidx/compose/runtime/GapComposer;IZ)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_17
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_b
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_18

    new-instance v0, Lr10;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object v1, v8

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lr10;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZJLkotlin/jvm/functions/Function1;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_18
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Ljava/util/List;ZZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v3, p2

    move/from16 v9, p9

    const-string v1, "HotContentWidget"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, -0x2e9c04c8

    move-object/from16 v4, p8

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    or-int/lit8 v4, v9, 0x6

    and-int/lit8 v5, v9, 0x30

    move-object/from16 v7, p1

    if-nez v5, :cond_2

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_0

    :cond_1
    const/16 v5, 0x10

    :goto_0
    or-int/2addr v4, v5

    :cond_2
    and-int/lit16 v5, v9, 0x180

    const/16 v6, 0x100

    if-nez v5, :cond_4

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_1

    :cond_3
    const/16 v5, 0x80

    :goto_1
    or-int/2addr v4, v5

    :cond_4
    and-int/lit16 v5, v9, 0xc00

    if-nez v5, :cond_6

    move/from16 v5, p3

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x800

    goto :goto_2

    :cond_5
    const/16 v8, 0x400

    :goto_2
    or-int/2addr v4, v8

    goto :goto_3

    :cond_6
    move/from16 v5, p3

    :goto_3
    and-int/lit16 v8, v9, 0x6000

    move/from16 v13, p4

    if-nez v8, :cond_8

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x4000

    goto :goto_4

    :cond_7
    const/16 v8, 0x2000

    :goto_4
    or-int/2addr v4, v8

    :cond_8
    and-int/lit8 v8, p10, 0x20

    const/high16 v10, 0x30000

    if-eqz v8, :cond_9

    :goto_5
    or-int/2addr v4, v10

    goto :goto_7

    :cond_9
    and-int/2addr v10, v9

    if-nez v10, :cond_c

    if-nez p5, :cond_a

    const/4 v10, -0x1

    goto :goto_6

    :cond_a
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    :goto_6
    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v10

    if-eqz v10, :cond_b

    const/high16 v10, 0x20000

    goto :goto_5

    :cond_b
    const/high16 v10, 0x10000

    goto :goto_5

    :cond_c
    :goto_7
    const/high16 v10, 0x180000

    and-int/2addr v10, v9

    move-object/from16 v12, p6

    if-nez v10, :cond_e

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/high16 v10, 0x100000

    goto :goto_8

    :cond_d
    const/high16 v10, 0x80000

    :goto_8
    or-int/2addr v4, v10

    :cond_e
    const/high16 v10, 0xc00000

    and-int/2addr v10, v9

    move-object/from16 v14, p7

    if-nez v10, :cond_10

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    const/high16 v10, 0x800000

    goto :goto_9

    :cond_f
    const/high16 v10, 0x400000

    :goto_9
    or-int/2addr v4, v10

    :cond_10
    const v10, 0x492493

    and-int/2addr v10, v4

    const v11, 0x492492

    const/4 v15, 0x0

    if-eq v10, v11, :cond_11

    const/4 v10, 0x1

    goto :goto_a

    :cond_11
    move v10, v15

    :goto_a
    and-int/lit8 v11, v4, 0x1

    invoke-virtual {v2, v11, v10}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v10

    if-eqz v10, :cond_1b

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    if-eqz v8, :cond_12

    sget-object v1, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v8, v1

    goto :goto_b

    :cond_12
    move-object/from16 v8, p5

    :goto_b
    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-array v1, v15, [Ljava/lang/Object;

    and-int/lit16 v10, v4, 0x380

    if-ne v10, v6, :cond_13

    const/4 v6, 0x1

    goto :goto_c

    :cond_13
    move v6, v15

    :goto_c
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v6, :cond_14

    if-ne v10, v11, :cond_15

    :cond_14
    new-instance v10, Lp10;

    invoke-direct {v10, v3, v15}, Lp10;-><init>(ZI)V

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v10, v2, v15}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->d([Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v11, :cond_16

    new-instance v6, Landroidx/compose/animation/core/MutableTransitionState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v10}, Landroidx/compose/animation/core/MutableTransitionState;-><init>(Ljava/lang/Object;)V

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v10}, Landroidx/compose/animation/core/MutableTransitionState;->g(Ljava/lang/Boolean;)V

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v6, Landroidx/compose/animation/core/MutableTransitionState;

    invoke-virtual {v6}, Landroidx/compose/animation/core/MutableTransitionState;->f()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v15, v6, Landroidx/compose/animation/core/MutableTransitionState;->b:Landroidx/compose/runtime/MutableState;

    check-cast v15, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v15}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v17

    or-int v16, v16, v17

    move-object/from16 p8, v0

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v16, :cond_17

    if-ne v0, v11, :cond_18

    :cond_17
    new-instance v0, Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentWidgetKt$HotContentWidget$1$1;

    invoke-direct {v0, v6, v1, v3}, Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentWidgetKt$HotContentWidget$1$1;-><init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_18
    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v15, v0, v2}, Landroidx/compose/runtime/EffectsKt;->g(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    const-wide/16 v0, 0x0

    :goto_d
    move-wide v10, v0

    goto :goto_e

    :cond_19
    const-wide/16 v0, 0x514

    goto :goto_d

    :goto_e
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v15

    if-eqz v15, :cond_1c

    new-instance v0, Ls10;

    const/4 v11, 0x0

    move/from16 v3, p2

    move-object/from16 v1, p8

    move/from16 v10, p10

    move v4, v5

    move-object v2, v7

    move-object v6, v8

    move-object v7, v12

    move v5, v13

    move-object v8, v14

    invoke-direct/range {v0 .. v11}, Ls10;-><init>(Landroidx/compose/ui/Modifier;Ljava/util/List;ZZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;III)V

    iput-object v0, v15, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    return-void

    :cond_1a
    move-object/from16 v1, p8

    const/16 v0, 0x3e8

    const/4 v5, 0x6

    const/4 v7, 0x0

    invoke-static {v0, v7, v3, v5}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v5

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/16 v9, 0xc

    invoke-static {v5, v7, v3, v9}, Landroidx/compose/animation/EnterExitTransitionKt;->d(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;Lkotlin/jvm/functions/Function1;I)Landroidx/compose/animation/EnterTransition;

    move-result-object v5

    const/16 v7, 0x12c

    const/4 v9, 0x4

    invoke-static {v7, v0, v3, v9}, Landroidx/compose/animation/core/AnimationSpecKt;->c(IILandroidx/compose/animation/core/Easing;I)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v7, 0x2

    invoke-static {v0, v3, v7}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/compose/animation/EnterTransition;->b(Landroidx/compose/animation/EnterTransition;)Landroidx/compose/animation/EnterTransition;

    move-result-object v5

    move-object v3, v6

    new-instance v6, Lt10;

    move-object/from16 v7, p1

    move/from16 v9, p3

    move/from16 v13, p4

    move-object/from16 v12, p6

    move-object/from16 v14, p7

    invoke-direct/range {v6 .. v14}, Lt10;-><init>(Ljava/util/List;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZJLkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;)V

    move-object v0, v8

    const v7, 0x6e93ef60

    invoke-static {v7, v6, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    shl-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0x70

    const v6, 0x30180

    or-int v10, v6, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v1

    move-object v9, v2

    invoke-static/range {v3 .. v10}, Landroidx/compose/animation/AnimatedVisibilityKt;->b(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    move-object v6, v0

    goto :goto_f

    :cond_1b
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v6, p5

    move-object v1, v0

    :goto_f
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_1c

    new-instance v0, Ls10;

    const/4 v11, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Ls10;-><init>(Landroidx/compose/ui/Modifier;Ljava/util/List;ZZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;III)V

    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1c
    return-void
.end method
