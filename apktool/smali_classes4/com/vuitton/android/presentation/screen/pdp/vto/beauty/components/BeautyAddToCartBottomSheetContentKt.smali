.class public abstract Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyAddToCartBottomSheetContentKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const-string v3, "BeautyAddToCartItem"

    if-eqz v0, :cond_0

    invoke-static {v0, v3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v4, 0x1ed8044

    move-object/from16 v5, p2

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v4

    iget-object v5, v4, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    and-int/lit8 v6, v2, 0x6

    if-nez v6, :cond_2

    invoke-virtual {v4, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v2

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    and-int/lit8 v8, v2, 0x30

    if-nez v8, :cond_4

    invoke-virtual {v4, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x20

    goto :goto_2

    :cond_3
    const/16 v8, 0x10

    :goto_2
    or-int/2addr v6, v8

    :cond_4
    and-int/lit8 v8, v6, 0x13

    const/16 v9, 0x12

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v8, v9, :cond_5

    move v8, v10

    goto :goto_3

    :cond_5
    move v8, v11

    :goto_3
    and-int/2addr v6, v10

    invoke-virtual {v4, v6, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v6}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v6

    sget-object v8, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v6, v8, v4, v11}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v6

    iget-wide v8, v4, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v4, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v12

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/4 v14, 0x0

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_6

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_4
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v6, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v9, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v8, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v4, v8}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v4, v12, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->c:Ljava/lang/String;

    invoke-static {v11, v4, v12}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyAddToCartBottomSheetContentKt;->f(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)V

    new-instance v12, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v12, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->l:Landroidx/compose/ui/BiasAlignment$Vertical;

    sget-object v10, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    invoke-virtual {v10, v12, v3}, Landroidx/compose/foundation/layout/RowScopeInstance;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v12, v3}, Landroidx/compose/foundation/layout/Arrangement;->g(FLandroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v3

    sget-object v12, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v3, v12, v4, v11}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v3

    iget-wide v11, v4, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v11, v12}, Ljava/lang/Long;->hashCode(J)I

    move-result v11

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v12

    invoke-static {v4, v10}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    if-eqz v5, :cond_9

    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v5, v4, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v5, :cond_7

    invoke-virtual {v4, v13}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_5
    invoke-static {v4, v3, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v4, v12, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v11, v4, v9, v4, v8}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v4, v10, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v26, 0x0

    const v27, 0x1fffa

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const-wide/16 v16, 0x0

    move/from16 v19, v18

    const/16 v18, 0x0

    move/from16 v20, v19

    const/16 v19, 0x0

    move/from16 v21, v20

    const/16 v20, 0x0

    move/from16 v22, v21

    const/16 v21, 0x0

    move/from16 v23, v22

    const/16 v22, 0x0

    const/16 v25, 0x0

    move/from16 v24, v23

    move-object/from16 v23, v3

    move/from16 v3, v24

    move-object/from16 v24, v4

    const/4 v4, 0x1

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v5, v24

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->d:Ljava/lang/String;

    if-eqz v6, :cond_8

    const v6, 0x420ea58e

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object/from16 v24, v5

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->d:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v26, 0x0

    const v27, 0x1fffa

    move-object/from16 v23, v6

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

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

    invoke-static/range {v5 .. v27}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v5, v24

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_6

    :cond_8
    const v6, 0x4211d218

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v24, v5

    :goto_6
    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->e:Ljava/lang/String;

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static/range {v24 .. v24}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v7, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v26, 0x0

    const v27, 0x1fffa

    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

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

    move-object/from16 v5, v24

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_9
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v14

    :cond_a
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v14

    :cond_b
    move-object v5, v4

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_7
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v3

    if-eqz v3, :cond_c

    new-instance v4, Lg2;

    const/4 v5, 0x4

    invoke-direct {v4, v0, v1, v2, v5}, Lg2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_c
    return-void
.end method

.method public static final b(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x157d3171

    move-object/from16 v4, p3

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p4, v0

    invoke-virtual {v6, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x10

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    or-int/2addr v0, v4

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    const/16 v11, 0x100

    if-eqz v4, :cond_2

    move v4, v11

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    and-int/lit16 v4, v0, 0x93

    const/16 v7, 0x92

    const/4 v13, 0x0

    if-eq v4, v7, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    move v4, v13

    :goto_3
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_11

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v14, :cond_7

    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->a:Ljava/lang/String;

    new-instance v15, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v15, v9}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-static {v7, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-static {v8}, Lkotlin/collections/MapsKt;->g(I)I

    move-result v8

    if-ge v8, v5, :cond_5

    goto :goto_5

    :cond_5
    move v5, v8

    :goto_5
    invoke-direct {v4, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_6
    invoke-static {v4}, Lkotlin/collections/MapsKt;->m(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    new-array v5, v13, [Lkotlin/Pair;

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lkotlin/Pair;

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lkotlin/Pair;

    new-instance v5, Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-direct {v5}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;-><init>()V

    invoke-static {v4}, Lkotlin/collections/MapsKt;->q([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v6, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v5

    :cond_7
    move-object v15, v4

    check-cast v15, Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v5, "BeautyMultipleAddToCartBottomSheetContent"

    invoke-direct {v4, v5}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v4, v7}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v7, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v7}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v7, v8, v6, v13}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v7

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-wide v8, v6, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v6, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v10, v6, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v10, :cond_10

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v6, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_8

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_8
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_7
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v7, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v9, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v7, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v7}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v4, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v4, -0x11ff8ccf

    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v4, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;

    invoke-static {v5, v7}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    iget-object v8, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->a:Ljava/lang/String;

    new-instance v9, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v9, v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    and-int/lit16 v9, v0, 0x380

    if-ne v9, v11, :cond_9

    const/4 v9, 0x1

    goto :goto_9

    :cond_9
    move v9, v13

    :goto_9
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v9, v12

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v9, :cond_a

    if-ne v12, v14, :cond_b

    :cond_a
    new-instance v12, Ln0;

    const/4 v9, 0x7

    invoke-direct {v12, v3, v4, v15, v9}, Ln0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v12, Lkotlin/jvm/functions/Function1;

    const/4 v9, 0x6

    move-object/from16 v17, v5

    move-object v5, v4

    move-object v4, v7

    move-object v7, v12

    move-object/from16 v12, v17

    move/from16 v17, v8

    move-object v8, v6

    move/from16 v6, v17

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyAddToCartBottomSheetContentKt;->e(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object v6, v8

    move-object v5, v12

    goto :goto_8

    :cond_c
    move-object v12, v5

    invoke-static {v6, v13, v12, v7}, Lo60;->d(Landroidx/compose/runtime/GapComposer;ZLjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v4

    iget-object v8, v4, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    const v4, 0x7f141037

    invoke-static {v6, v4}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    iget-object v4, v15, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->e:Ljava/util/Collection;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    and-int/lit8 v0, v0, 0x70

    const/16 v5, 0x20

    if-ne v0, v5, :cond_d

    const/4 v13, 0x1

    :cond_d
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v13, :cond_e

    if-ne v0, v14, :cond_f

    :cond_e
    new-instance v0, Ll0;

    const/16 v5, 0x14

    invoke-direct {v0, v2, v15, v5}, Ll0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    move-object v12, v0

    check-cast v12, Lkotlin/jvm/functions/Function0;

    move v14, v4

    const/4 v4, 0x6

    const/16 v5, 0x178

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v0, 0x1

    invoke-static/range {v4 .. v15}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_a

    :cond_10
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_11
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_a
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_12

    new-instance v0, Lu;

    const/16 v5, 0xa

    move/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lu;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;II)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_12
    return-void
.end method

.method public static final c(Ljava/util/List;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 23

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x45febf2f

    move-object/from16 v4, p5

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p6, v0

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int/2addr v0, v4

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    const/16 v11, 0x100

    if-eqz v4, :cond_2

    move v4, v11

    goto :goto_2

    :cond_2
    const/16 v4, 0x80

    :goto_2
    or-int/2addr v0, v4

    move-object/from16 v14, p3

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x800

    goto :goto_3

    :cond_3
    const/16 v4, 0x400

    :goto_3
    or-int/2addr v0, v4

    move-object/from16 v5, p4

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/16 v4, 0x4000

    goto :goto_4

    :cond_4
    const/16 v4, 0x2000

    :goto_4
    or-int/2addr v0, v4

    and-int/lit16 v4, v0, 0x2493

    const/16 v7, 0x2492

    const/4 v12, 0x0

    if-eq v4, v7, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    :cond_5
    move v4, v12

    :goto_5
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v8, v7, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_15

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v7, "BeautyNotifyAddToCartBottomSheetContent"

    invoke-direct {v4, v7}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v13

    iget v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v4, v13}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v13, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v13

    iget v13, v13, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v13}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v13

    sget-object v15, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v13, v15, v8, v12}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v13

    iget-wide v9, v8, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v9

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v10

    invoke-static {v8, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v6, v8, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    const/16 v19, 0x0

    if-eqz v6, :cond_14

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v6, v8, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v6, :cond_6

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_6
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v13, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v10, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v6, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v8, v6}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v4, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v4, 0x7d9e8254

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move v10, v12

    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v21, v10, 0x1

    if-ltz v10, :cond_12

    move-object v15, v4

    check-cast v15, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;

    iget-boolean v4, v15, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->g:Z

    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    const/4 v13, 0x1

    goto :goto_8

    :cond_7
    move v13, v12

    :goto_8
    iget-boolean v4, v15, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;->f:Z

    const/high16 v6, 0x3f800000    # 1.0f

    sget-object v9, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eqz v4, :cond_b

    const v4, -0x5df97a02

    invoke-static {v8, v4, v7, v6}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    and-int/lit16 v13, v0, 0x380

    if-ne v13, v11, :cond_8

    const/4 v13, 0x1

    goto :goto_9

    :cond_8
    move v13, v12

    :goto_9
    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v13, v13, v16

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v13, :cond_9

    if-ne v11, v9, :cond_a

    :cond_9
    new-instance v11, Ll0;

    const/16 v9, 0x15

    invoke-direct {v11, v3, v15, v9}, Ll0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v11, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x6

    invoke-static {v4, v15, v11, v8, v9}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyAddToCartBottomSheetContentKt;->d(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v22, v0

    move v1, v6

    move-object v11, v7

    move v0, v12

    const/4 v12, 0x1

    const/16 v18, 0x4000

    goto/16 :goto_f

    :cond_b
    const v4, -0x5df5d368

    invoke-static {v8, v4, v7, v6}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    if-eqz v13, :cond_c

    const v11, 0x7f1403d6

    goto :goto_a

    :cond_c
    const v11, 0x7f141039

    :goto_a
    invoke-static {v8, v11}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    and-int/lit16 v6, v0, 0x1c00

    move/from16 v22, v0

    const/16 v0, 0x800

    if-ne v6, v0, :cond_d

    const/4 v6, 0x1

    goto :goto_b

    :cond_d
    move v6, v12

    :goto_b
    or-int v6, v16, v6

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v6, v6, v16

    const v16, 0xe000

    and-int v0, v22, v16

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_c

    :cond_e
    move v0, v12

    :goto_c
    or-int/2addr v0, v6

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v0, :cond_f

    if-ne v6, v9, :cond_10

    :cond_f
    move v0, v12

    goto :goto_d

    :cond_10
    move v0, v12

    goto :goto_e

    :goto_d
    new-instance v12, Lnd;

    const/16 v17, 0x0

    move-object/from16 v16, v5

    invoke-direct/range {v12 .. v17}, Lnd;-><init>(ZLkotlin/jvm/functions/Function1;Ljava/lang/Object;Lkotlin/Function;I)V

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v6, v12

    :goto_e
    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x6

    move-object v5, v7

    move-object v7, v6

    move-object v6, v11

    move-object v11, v5

    move/from16 v18, v1

    move-object v5, v15

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyAddToCartBottomSheetContentKt;->g(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_f
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v12

    if-eq v10, v4, :cond_11

    const v4, -0x5dea42aa

    invoke-static {v8, v4, v11, v1}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    const/4 v9, 0x6

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/16 v1, 0x800

    invoke-static/range {v4 .. v10}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :cond_11
    const/16 v1, 0x800

    const v4, -0x5de766a7

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    move-object/from16 v1, p0

    move-object/from16 v14, p3

    move-object/from16 v5, p4

    move v12, v0

    move-object v7, v11

    move/from16 v10, v21

    move/from16 v0, v22

    const/16 v11, 0x100

    goto/16 :goto_7

    :cond_12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v19

    :cond_13
    move v0, v12

    const/4 v12, 0x1

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_11

    :cond_14
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v19

    :cond_15
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_11
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_16

    new-instance v0, Lod;

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, Lod;-><init>(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;II)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method

.method public static final d(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    const-string v1, "BeautyProductAddToCart"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v3, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x66db6e3a

    move-object/from16 v2, p3

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    :goto_0
    or-int v0, p4, v0

    move-object/from16 v13, p2

    invoke-virtual {v7, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_1

    :cond_2
    const/16 v2, 0x80

    :goto_1
    or-int/2addr v0, v2

    and-int/lit16 v2, v0, 0x93

    const/16 v5, 0x92

    const/4 v6, 0x1

    const/4 v8, 0x0

    if-eq v2, v5, :cond_3

    move v2, v6

    goto :goto_2

    :cond_3
    move v2, v8

    :goto_2
    and-int/lit8 v5, v0, 0x1

    invoke-virtual {v7, v5, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v2}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v2

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v2, v5, v7, v8}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v2

    iget-wide v8, v7, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v7, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v11, v7, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v11, :cond_5

    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v11, v7, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_4

    invoke-virtual {v7, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_3
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v2, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v8, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v7, v2, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v7, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v7, v9, v2, v1, v5}, Ln00;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    and-int/lit8 v8, v0, 0x70

    const/4 v9, 0x6

    or-int/2addr v8, v9

    invoke-static {v2, v4, v7, v8}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyAddToCartBottomSheetContentKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;Landroidx/compose/runtime/Composer;I)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v5}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    const v2, 0x7f141037

    invoke-static {v7, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    shl-int/lit8 v0, v0, 0x15

    const/high16 v2, 0x70000000

    and-int/2addr v0, v2

    or-int v5, v9, v0

    move v0, v6

    const/16 v6, 0x1f8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v1

    invoke-static/range {v5 .. v16}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-virtual {v7, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_4

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_6
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_4
    invoke-virtual {v7}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_7

    new-instance v0, Lu;

    const/16 v2, 0xb

    move-object/from16 v5, p2

    move/from16 v1, p4

    invoke-direct/range {v0 .. v5}, Lu;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final e(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 13

    const-string v0, "BeautyProductCheck"

    if-eqz p0, :cond_0

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    move-object v2, p0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, -0x3d0a8c43

    move-object/from16 v1, p4

    invoke-interface {v1, p0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x20

    goto :goto_0

    :cond_1
    const/16 p0, 0x10

    :goto_0
    or-int p0, p5, p0

    invoke-virtual {v9, p2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x100

    goto :goto_1

    :cond_2
    const/16 v1, 0x80

    :goto_1
    or-int/2addr p0, v1

    move-object/from16 v5, p3

    invoke-virtual {v9, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x800

    goto :goto_2

    :cond_3
    const/16 v1, 0x400

    :goto_2
    or-int/2addr p0, v1

    and-int/lit16 v1, p0, 0x493

    const/16 v3, 0x492

    const/4 v6, 0x0

    const/4 v12, 0x1

    if-eq v1, v3, :cond_4

    move v1, v12

    goto :goto_3

    :cond_4
    move v1, v6

    :goto_3
    and-int/lit8 v3, p0, 0x1

    invoke-virtual {v9, v3, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v3, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v1, v3, v9, v6}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v1

    iget-wide v6, v9, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v9, v2}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v10, v9, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v9, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_5

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_4
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v1, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v6, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v9, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v7, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v3, v12}, Lcj;->b(Ljava/lang/String;Landroidx/compose/foundation/layout/RowScopeInstance;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int/lit8 v1, p0, 0x70

    invoke-static {v0, p1, v9, v1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyAddToCartBottomSheetContentKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;Landroidx/compose/runtime/Composer;I)V

    and-int/lit16 v0, p0, 0x380

    const/high16 v1, 0x70000

    shl-int/lit8 p0, p0, 0x6

    and-int/2addr p0, v1

    or-int v10, v0, p0

    const/16 v11, 0x1b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, v5

    move v5, p2

    invoke-static/range {v3 .. v11}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVCheckboxKt;->a(Landroidx/compose/ui/Modifier;ZZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v9, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_5

    :cond_6
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 p0, 0x0

    throw p0

    :cond_7
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_5
    invoke-virtual {v9}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_8

    new-instance v1, Li4;

    const/4 v7, 0x5

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Li4;-><init>(Ljava/lang/Object;Ljava/lang/Object;ZLkotlin/Function;II)V

    iput-object v1, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method

.method public static final f(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)V
    .locals 21

    move/from16 v0, p0

    move-object/from16 v1, p2

    const v2, -0x72d06c78

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int/2addr v2, v0

    and-int/lit8 v4, v2, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v4, v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v6

    :goto_1
    and-int/2addr v2, v5

    invoke-virtual {v13, v2, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v2, Lcom/vuitton/android/presentation/utils/UrlFactory;

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-static {v3}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->f(Landroid/content/Context;)Lje;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/utils/UrlFactory;-><init>(Lkotlin/jvm/functions/Function0;)V

    sget-object v2, Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Transparent;->a:Lcom/vuitton/android/presentation/utils/ImageConfiguration$Background$Transparent;

    const/16 v3, 0x70

    invoke-static {v1, v3, v2}, Lcom/vuitton/android/presentation/utils/UrlFactory;->d(Ljava/lang/String;ILcom/vuitton/android/presentation/utils/ImageConfiguration$Background;)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v3, "BeautyProductImage"

    invoke-direct {v2, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v3, 0x42e00000    # 112.0f

    invoke-static {v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->o(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVShape;->b:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v2, v3}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    const v2, 0x7f080089

    invoke-static {v2, v13, v6}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v15

    sget-object v2, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v17, Landroidx/compose/ui/layout/ContentScale$Companion;->h:Landroidx/compose/ui/layout/ContentScale$Companion$FillBounds$1;

    const/16 v19, 0x0

    const/16 v20, 0x36

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Landroidx/compose/ui/draw/PainterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v2, v5

    sget-object v5, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    const/16 v14, 0x180

    const/16 v15, 0x7f8

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v3 .. v15}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_2

    :cond_2
    move v2, v5

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Lma;

    invoke-direct {v4, v1, v0, v2}, Lma;-><init>(Ljava/lang/String;II)V

    iput-object v4, v3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method

.method public static final g(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    const-string v1, "BeautyProductUnavailable"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v3, -0x10f5aad1

    move-object/from16 v4, p4

    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_0

    :cond_1
    const/16 v3, 0x10

    :goto_0
    or-int v3, p5, v3

    move-object/from16 v14, p2

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_1

    :cond_2
    const/16 v4, 0x80

    :goto_1
    or-int/2addr v3, v4

    move-object/from16 v15, p3

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x800

    goto :goto_2

    :cond_3
    const/16 v4, 0x400

    :goto_2
    or-int/2addr v3, v4

    and-int/lit16 v4, v3, 0x493

    const/16 v5, 0x492

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_4

    move v4, v7

    goto :goto_3

    :cond_4
    move v4, v6

    :goto_3
    and-int/lit8 v5, v3, 0x1

    invoke-virtual {v11, v5, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v4}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v4, v5, v11, v6}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    iget-wide v5, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v11, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v10, v11, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v10, :cond_6

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_5

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_4
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v4, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v6, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v11, v8, v4, v1, v5}, Ln00;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    and-int/lit8 v6, v3, 0x70

    const/16 v16, 0x6

    or-int/lit8 v6, v6, 0x6

    invoke-static {v4, v2, v11, v6}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/BeautyAddToCartBottomSheetContentKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;Landroidx/compose/runtime/Composer;I)V

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v4, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/SizeKt;->d(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const v6, 0x7f140c8d

    invoke-static {v11, v6}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x6

    const/16 v13, 0x3c

    move v8, v5

    move-object v5, v6

    const/4 v6, 0x0

    move v10, v7

    move v9, v8

    const-wide/16 v7, 0x0

    move/from16 v17, v9

    const/4 v9, 0x0

    move/from16 v18, v10

    const/4 v10, 0x0

    move-object/from16 p0, v0

    move/from16 v0, v17

    invoke-static/range {v4 .. v13}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDisclaimerKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;JLjava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    invoke-static {v1, v0}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v0

    iget-object v8, v0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    and-int/lit16 v0, v3, 0x380

    or-int v0, v16, v0

    shl-int/lit8 v1, v3, 0x12

    const/high16 v3, 0x70000000

    and-int/2addr v1, v3

    or-int v4, v0, v1

    const/16 v5, 0x1f8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v12, p3

    move-object v6, v11

    move-object/from16 v11, p2

    invoke-static/range {v4 .. v15}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    move-object v11, v6

    const/4 v10, 0x1

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_5

    :cond_6
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_7
    move-object/from16 p0, v0

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_5
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_8

    new-instance v0, Lz;

    const/16 v6, 0xa

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lz;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method
