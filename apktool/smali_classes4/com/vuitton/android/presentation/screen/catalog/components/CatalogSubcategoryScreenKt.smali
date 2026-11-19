.class public abstract Lcom/vuitton/android/presentation/screen/catalog/components/CatalogSubcategoryScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u00a8\u0006\t\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000c\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0006\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0008\u001a\u00020\u00078\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/unit/Dp;",
        "height",
        "bottomSheetMaxHeight",
        "bottomSheetInitialHeight",
        "Landroidx/compose/material3/SheetValue;",
        "currentBottomSheetState",
        "contentListHeight",
        "",
        "isSwipeEnabled",
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
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v5, p4

    move/from16 v10, p10

    const-string v1, "CatalogSubcategoryScreen"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x796e7621

    move-object/from16 v3, p9

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    or-int/lit8 v3, v10, 0x6

    move-object/from16 v13, p1

    invoke-virtual {v2, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_0

    :cond_1
    const/16 v4, 0x10

    :goto_0
    or-int/2addr v3, v4

    move-object/from16 v12, p2

    invoke-virtual {v2, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x100

    goto :goto_1

    :cond_2
    const/16 v4, 0x80

    :goto_1
    or-int/2addr v3, v4

    and-int/lit16 v4, v10, 0xc00

    if-nez v4, :cond_4

    move-object/from16 v4, p3

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x800

    goto :goto_2

    :cond_3
    const/16 v7, 0x400

    :goto_2
    or-int/2addr v3, v7

    goto :goto_3

    :cond_4
    move-object/from16 v4, p3

    :goto_3
    and-int/lit16 v7, v10, 0x6000

    if-nez v7, :cond_6

    invoke-virtual {v2, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x4000

    goto :goto_4

    :cond_5
    const/16 v7, 0x2000

    :goto_4
    or-int/2addr v3, v7

    :cond_6
    const/high16 v7, 0x30000

    and-int/2addr v7, v10

    if-nez v7, :cond_8

    move-object/from16 v7, p5

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/high16 v8, 0x20000

    goto :goto_5

    :cond_7
    const/high16 v8, 0x10000

    :goto_5
    or-int/2addr v3, v8

    goto :goto_6

    :cond_8
    move-object/from16 v7, p5

    :goto_6
    const/high16 v8, 0x180000

    and-int/2addr v8, v10

    if-nez v8, :cond_a

    move-object/from16 v8, p6

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/high16 v9, 0x100000

    goto :goto_7

    :cond_9
    const/high16 v9, 0x80000

    :goto_7
    or-int/2addr v3, v9

    goto :goto_8

    :cond_a
    move-object/from16 v8, p6

    :goto_8
    const/high16 v9, 0xc00000

    and-int/2addr v9, v10

    if-nez v9, :cond_c

    move-object/from16 v9, p7

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/high16 v11, 0x800000

    goto :goto_9

    :cond_b
    const/high16 v11, 0x400000

    :goto_9
    or-int/2addr v3, v11

    goto :goto_a

    :cond_c
    move-object/from16 v9, p7

    :goto_a
    const/high16 v11, 0x6000000

    and-int/2addr v11, v10

    if-nez v11, :cond_e

    move-object/from16 v11, p8

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    const/high16 v14, 0x4000000

    goto :goto_b

    :cond_d
    const/high16 v14, 0x2000000

    :goto_b
    or-int/2addr v3, v14

    goto :goto_c

    :cond_e
    move-object/from16 v11, p8

    :goto_c
    const v14, 0x2492493

    and-int/2addr v14, v3

    const v15, 0x2492492

    if-eq v14, v15, :cond_f

    const/4 v14, 0x1

    goto :goto_d

    :cond_f
    const/4 v14, 0x0

    :goto_d
    and-int/lit8 v15, v3, 0x1

    invoke-virtual {v2, v15, v14}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v14

    if-eqz v14, :cond_1a

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, v14, :cond_10

    new-instance v1, Landroidx/compose/ui/unit/Dp;

    const/4 v15, 0x0

    invoke-direct {v1, v15}, Landroidx/compose/ui/unit/Dp;-><init>(F)V

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v1, Landroidx/compose/runtime/MutableState;

    invoke-static {v2}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v15

    invoke-static {v15, v2}, Landroidx/compose/foundation/layout/WindowInsetsKt;->e(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object v15

    invoke-interface {v15}, Landroidx/compose/foundation/layout/PaddingValues;->d()F

    move-result v15

    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/unit/Density;

    move/from16 v17, v3

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_11

    new-instance v3, Lfw0;

    invoke-direct {v3, v15, v1}, Lfw0;-><init>(FLandroidx/compose/runtime/MutableState;)V

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v3, Landroidx/compose/runtime/State;

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v14, :cond_12

    new-instance v15, Ld0;

    move-object/from16 v18, v3

    const/16 v3, 0x10

    invoke-direct {v15, v3, v1}, Ld0;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-static {v15}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_e

    :cond_12
    move-object/from16 v18, v3

    :goto_e
    check-cast v15, Landroidx/compose/runtime/State;

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_13

    sget-object v3, Landroidx/compose/material3/SheetValue;->PartiallyExpanded:Landroidx/compose/material3/SheetValue;

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/material3/SheetValue;

    const/16 v4, 0x180

    const/4 v7, 0x2

    invoke-static {v3, v2, v4, v7}, Landroidx/compose/material3/BottomSheetScaffoldKt;->e(Landroidx/compose/material3/SheetValue;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;

    move-result-object v3

    invoke-static {v3, v2, v7}, Landroidx/compose/material3/BottomSheetScaffoldKt;->d(Landroidx/compose/material3/SheetState;Landroidx/compose/runtime/Composer;I)Landroidx/compose/material3/BottomSheetScaffoldState;

    move-result-object v3

    const/4 v4, 0x7

    const/4 v7, 0x0

    move-object/from16 v19, v3

    const/4 v3, 0x0

    invoke-static {v3, v4, v2, v7}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v20

    invoke-static {v3, v4, v2, v7}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v4

    move-object/from16 v21, v7

    const/4 v7, 0x3

    invoke-static {v3, v2, v7}, Landroidx/compose/foundation/lazy/LazyListStateKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/lazy/LazyListState;

    move-result-object v7

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v14, :cond_14

    new-instance v3, Ltf;

    move-object/from16 v22, v4

    const/16 v4, 0xf

    invoke-direct {v3, v6, v7, v4}, Ltf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    goto :goto_f

    :cond_14
    move-object/from16 v22, v4

    :goto_f
    check-cast v3, Landroidx/compose/runtime/State;

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v14, :cond_15

    new-instance v4, Ltf;

    const/16 v8, 0x10

    invoke-direct {v4, v3, v15, v8}, Ltf;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v4}, Landroidx/compose/runtime/SnapshotStateKt;->e(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v4, Landroidx/compose/runtime/State;

    shr-int/lit8 v3, v17, 0x9

    and-int/lit8 v3, v3, 0x70

    invoke-static {v7, v5, v2, v3}, Lcom/vuitton/android/presentation/compose/components/ScrollProgressTrackerKt;->c(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v3, Landroidx/compose/foundation/layout/SizeKt;->c:Landroidx/compose/foundation/layout/FillElement;

    invoke-interface {v0, v3}, Landroidx/compose/ui/Modifier;->o(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-virtual {v2, v6}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    move-object/from16 p0, v0

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v8, :cond_16

    if-ne v0, v14, :cond_17

    :cond_16
    new-instance v0, Lj1;

    const/4 v8, 0x1

    invoke-direct {v0, v6, v1, v8}, Lj1;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v3, v0}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v1

    move-object v6, v4

    iget-wide v3, v2, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v2, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v14, v2, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v14, :cond_19

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v14, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v14, :cond_18

    invoke-virtual {v2, v8}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_18
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_10
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v1, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v4, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v1}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVShape;->d:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->a:F

    invoke-static {v4}, Landroidx/compose/foundation/shape/CornerSizeKt;->b(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v27

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->a:F

    invoke-static {v4}, Landroidx/compose/foundation/shape/CornerSizeKt;->b(F)Landroidx/compose/foundation/shape/CornerSize;

    move-result-object v28

    const/16 v29, 0x3

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v24, v3

    invoke-static/range {v24 .. v29}, Landroidx/compose/foundation/shape/CornerBasedShape;->c(Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;I)Landroidx/compose/foundation/shape/CornerBasedShape;

    move-result-object v3

    check-cast v3, Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-interface {v15}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/unit/Dp;

    iget v4, v4, Landroidx/compose/ui/unit/Dp;->b:F

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    add-float/2addr v4, v6

    new-instance v11, Lp0;

    move-object/from16 v12, v18

    const/16 v18, 0x7

    move-object/from16 v14, p2

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    move-object v15, v13

    move-object v13, v7

    invoke-direct/range {v11 .. v18}, Lp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;I)V

    const v6, -0x535ce54a

    invoke-static {v6, v11, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v6

    new-instance v11, Lw0;

    move-object/from16 v13, p1

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v18, p8

    move-object/from16 v16, v9

    move-object/from16 v15, v20

    move-object/from16 v17, v22

    invoke-direct/range {v11 .. v18}, Lw0;-><init>(Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;)V

    const v7, 0x28672d0c

    invoke-static {v7, v11, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v30

    const v33, 0x180006

    const v34, 0xf392

    const/4 v12, 0x0

    const/4 v15, 0x0

    move-object/from16 v13, v19

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const/16 v32, 0x6

    move-wide/from16 v17, v0

    move-object/from16 v31, v2

    move-object/from16 v16, v3

    move v14, v4

    move-object v11, v6

    invoke-static/range {v11 .. v34}, Landroidx/compose/material3/BottomSheetScaffoldKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/BottomSheetScaffoldState;FFLandroidx/compose/ui/graphics/Shape;JJFLkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v1, v31

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v0, p0

    goto :goto_11

    :cond_19
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v21

    :cond_1a
    move-object v1, v2

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_11
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v11

    if-eqz v11, :cond_1b

    move-object v1, v0

    new-instance v0, Lk4;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lk4;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v11, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_1b
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    if-eqz v0, :cond_0

    const-string v1, "CatalogSubcategoryTransparentTopBar"

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v8, v0

    const v0, -0xdbf6031

    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    or-int v0, p7, v0

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x20

    goto :goto_1

    :cond_2
    const/16 v7, 0x10

    :goto_1
    or-int/2addr v0, v7

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x100

    goto :goto_2

    :cond_3
    const/16 v7, 0x80

    :goto_2
    or-int/2addr v0, v7

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x800

    goto :goto_3

    :cond_4
    const/16 v7, 0x400

    :goto_3
    or-int/2addr v0, v7

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x4000

    goto :goto_4

    :cond_5
    const/16 v7, 0x2000

    :goto_4
    or-int/2addr v0, v7

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/high16 v7, 0x20000

    goto :goto_5

    :cond_6
    const/high16 v7, 0x10000

    :goto_5
    or-int/2addr v0, v7

    const v7, 0x12493

    and-int/2addr v7, v0

    const v9, 0x12492

    if-eq v7, v9, :cond_7

    const/4 v7, 0x1

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    :goto_6
    and-int/lit8 v9, v0, 0x1

    invoke-virtual {v13, v9, v7}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v7, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v7

    sget v9, Landroidx/compose/material3/TopAppBarDefaults;->a:F

    sget-object v9, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v9, Landroidx/compose/ui/graphics/Color;->h:J

    const-wide/16 v11, 0x0

    const/16 v14, 0x3e

    invoke-static/range {v9 .. v14}, Landroidx/compose/material3/TopAppBarDefaults;->d(JJLandroidx/compose/runtime/Composer;I)Landroidx/compose/material3/TopAppBarColors;

    move-result-object v9

    new-instance v10, Lma;

    invoke-direct {v10, v2, v1}, Lma;-><init>(Ljava/lang/String;I)V

    const v1, -0x2c37a275

    invoke-static {v1, v10, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    new-instance v10, Lo0;

    const/16 v11, 0x13

    invoke-direct {v10, v4, v11}, Lo0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v11, 0x69eb9c49

    invoke-static {v11, v10, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v10

    new-instance v11, Lg1;

    const/16 v12, 0xa

    invoke-direct {v11, v12, v3, v6, v5}, Lg1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)V

    const v12, 0x6828b700

    invoke-static {v12, v11, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    shl-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int/lit16 v15, v0, 0xd86

    const/16 v16, 0x90

    move-object v14, v13

    move-object v13, v9

    move-object v9, v10

    move-object v10, v11

    const/4 v11, 0x0

    move-object v12, v7

    move-object v7, v1

    invoke-static/range {v7 .. v16}, Landroidx/compose/material3/AppBarKt;->c(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/runtime/Composer;II)V

    move-object v13, v14

    goto :goto_7

    :cond_8
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_7
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_9

    new-instance v0, Lu1;

    move-object v1, v8

    const/16 v8, 0x9

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lu1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method
