.class public abstract Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/TableSizeColumnKt;
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
.method public static final a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;ZLjava/lang/Integer;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    if-eqz v0, :cond_0

    const-string v1, "TableSizeColumn"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x2f15e3f8

    move-object/from16 v2, p6

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    and-int/lit8 v0, p7, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int v0, p7, v0

    goto :goto_1

    :cond_2
    move/from16 v0, p7

    :goto_1
    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x100

    goto :goto_2

    :cond_3
    const/16 v2, 0x80

    :goto_2
    or-int/2addr v0, v2

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x800

    goto :goto_3

    :cond_4
    const/16 v2, 0x400

    :goto_3
    or-int/2addr v0, v2

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x4000

    goto :goto_4

    :cond_5
    const/16 v2, 0x2000

    :goto_4
    or-int/2addr v0, v2

    const/high16 v2, 0x30000

    and-int v2, p7, v2

    const/high16 v14, 0x20000

    if-nez v2, :cond_7

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v14

    goto :goto_5

    :cond_6
    const/high16 v2, 0x10000

    :goto_5
    or-int/2addr v0, v2

    :cond_7
    const v2, 0x12493

    and-int/2addr v2, v0

    const v7, 0x12492

    const/4 v8, 0x0

    if-eq v2, v7, :cond_8

    const/4 v2, 0x1

    goto :goto_6

    :cond_8
    move v2, v8

    :goto_6
    and-int/lit8 v7, v0, 0x1

    invoke-virtual {v11, v7, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v2, v7, v11, v8}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v2

    iget-wide v9, v11, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v11, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v13, v11, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    const/16 v16, 0x0

    if-eqz v13, :cond_14

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v13, v11, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_9

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_7

    :cond_9
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_7
    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v2, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v9, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v2, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v10, v2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v2, 0x17bcff11

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object v2, v5

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v7, v8

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v17, v7, 0x1

    if-ltz v7, :cond_12

    check-cast v9, Ljava/lang/String;

    if-nez v3, :cond_c

    if-nez v4, :cond_a

    goto :goto_9

    :cond_a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v7, v10, :cond_b

    goto :goto_a

    :cond_b
    :goto_9
    move v10, v8

    move-object v8, v9

    move v9, v10

    goto :goto_b

    :cond_c
    :goto_a
    move v10, v8

    move-object v8, v9

    const/4 v9, 0x1

    :goto_b
    move v12, v10

    if-nez v7, :cond_d

    const/4 v10, 0x1

    :cond_d
    const/high16 v13, 0x70000

    and-int/2addr v13, v0

    if-ne v13, v14, :cond_e

    const/4 v13, 0x1

    goto :goto_c

    :cond_e
    move v13, v12

    :goto_c
    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v18

    or-int v13, v13, v18

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v13, :cond_f

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v12, v13, :cond_10

    :cond_f
    new-instance v12, Lis;

    const/16 v13, 0xc

    invoke-direct {v12, v7, v13, v6}, Lis;-><init>(IILkotlin/jvm/functions/Function1;)V

    invoke-virtual {v11, v12}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v12, Lkotlin/jvm/functions/Function0;

    const/4 v13, 0x6

    move-object/from16 p0, v12

    move-object v12, v11

    move-object/from16 v11, p0

    move v14, v7

    const/16 p0, 0x1

    const/4 v15, 0x0

    move-object/from16 v7, p1

    invoke-static/range {v7 .. v13}, Lcom/vuitton/android/presentation/screen/pdp/components/sizeguide/TableSizeCellKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v11, v12

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v14, v7, :cond_11

    const v7, -0x5b05d47b

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v7

    iget v8, v7, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->c:F

    invoke-static {v11}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v7, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->p:J

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v7, 0x0

    invoke-static/range {v7 .. v13}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_d

    :cond_11
    const v7, -0x5b02c3ea

    invoke-virtual {v11, v7}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_d
    move v8, v15

    move/from16 v7, v17

    const/high16 v14, 0x20000

    goto/16 :goto_8

    :cond_12
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v16

    :cond_13
    move v15, v8

    const/16 p0, 0x1

    invoke-virtual {v11, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move/from16 v0, p0

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_e

    :cond_14
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v16

    :cond_15
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_e
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_16

    new-instance v0, Lp1;

    const/16 v8, 0x12

    move-object/from16 v2, p1

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lp1;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Lkotlin/Function;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method
