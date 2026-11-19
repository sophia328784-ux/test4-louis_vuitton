.class public abstract Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel3ScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState;",
        "storeModeCatalog",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, -0x5d4f5937

    move-object/from16 v8, p7

    invoke-static {v6, v7, v8, v0}, La;->c(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/GapComposer;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p8, v0

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/16 v9, 0x20

    goto :goto_1

    :cond_1
    const/16 v9, 0x10

    :goto_1
    or-int/2addr v0, v9

    invoke-virtual {v12, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x100

    goto :goto_2

    :cond_2
    const/16 v9, 0x80

    :goto_2
    or-int/2addr v0, v9

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x800

    goto :goto_3

    :cond_3
    const/16 v9, 0x400

    :goto_3
    or-int/2addr v0, v9

    invoke-virtual {v12, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x4000

    goto :goto_4

    :cond_4
    const/16 v9, 0x2000

    :goto_4
    or-int/2addr v0, v9

    invoke-virtual {v12, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/high16 v9, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v9, 0x10000

    :goto_5
    or-int/2addr v0, v9

    invoke-virtual {v12, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    const/high16 v10, 0x100000

    if-eqz v9, :cond_6

    move v9, v10

    goto :goto_6

    :cond_6
    const/high16 v9, 0x80000

    :goto_6
    or-int/2addr v0, v9

    const v9, 0x92493

    and-int/2addr v9, v0

    const v11, 0x92492

    const/4 v15, 0x0

    const/4 v13, 0x1

    if-eq v9, v11, :cond_7

    move v9, v13

    goto :goto_7

    :cond_7
    move v9, v15

    :goto_7
    and-int/lit8 v11, v0, 0x1

    invoke-virtual {v12, v11, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_16

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->d8()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v9

    invoke-static {v9, v12}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v9

    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState;

    instance-of v14, v11, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$StoreModeCatalogUIModel;

    if-eqz v14, :cond_8

    check-cast v11, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$StoreModeCatalogUIModel;

    goto :goto_8

    :cond_8
    const/4 v11, 0x0

    :goto_8
    if-eqz v11, :cond_d

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$StoreModeCatalogUIModel;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;

    if-eqz v11, :cond_d

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;->b:Ljava/util/List;

    if-eqz v11, :cond_d

    check-cast v11, Ljava/lang/Iterable;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v8, v14

    check-cast v8, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL1UiModel;

    iget-object v8, v8, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL1UiModel;->a:Ljava/lang/String;

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_9

    :cond_a
    const/4 v14, 0x0

    :goto_9
    check-cast v14, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL1UiModel;

    if-eqz v14, :cond_d

    iget-object v8, v14, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL1UiModel;->c:Ljava/util/List;

    if-eqz v8, :cond_d

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL2UiModel;

    iget-object v14, v14, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL2UiModel;->a:Ljava/lang/String;

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    goto :goto_a

    :cond_c
    const/4 v11, 0x0

    :goto_a
    check-cast v11, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL2UiModel;

    move-object v8, v11

    goto :goto_b

    :cond_d
    const/4 v8, 0x0

    :goto_b
    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState;

    instance-of v9, v9, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$Loading;

    const/high16 v11, 0x380000

    and-int/2addr v11, v0

    if-ne v11, v10, :cond_e

    move v10, v13

    goto :goto_c

    :cond_e
    move v10, v15

    :goto_c
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v10, :cond_f

    if-ne v11, v14, :cond_10

    :cond_f
    new-instance v11, Lsq0;

    const/16 v10, 0x18

    invoke-direct {v11, v7, v10}, Lsq0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v12, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v11, Lkotlin/jvm/functions/Function0;

    invoke-static {v15, v11, v12, v15, v13}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    if-eqz v9, :cond_11

    const v0, -0x46dd92a9

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v13, 0x0

    const/4 v14, 0x7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v14}, Lcom/vuitton/android/presentation/compose/components/ProgressViewKt;->a(Landroidx/compose/ui/Modifier;JZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v12, v15}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_e

    :cond_11
    if-eqz v8, :cond_15

    const v9, 0x6b2d0918

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v9, Les0;

    const/16 v10, 0xb

    invoke-direct {v9, v8, v6, v10}, Les0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v10, -0x6552a452

    invoke-static {v10, v9, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v9

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v18

    new-instance v10, Lni0;

    const/16 v11, 0x1d

    invoke-direct {v10, v8, v5, v11}, Lni0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v11, -0x4659e707

    invoke-static {v11, v10, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v19

    const v21, 0x30000030

    const/16 v22, 0xfd

    move-object v11, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v17, v11

    const/4 v11, 0x0

    move-object/from16 v20, v12

    const/4 v12, 0x0

    move/from16 v23, v13

    const/4 v13, 0x0

    move-object/from16 v24, v14

    move/from16 v25, v15

    const-wide/16 v14, 0x0

    move-object/from16 v26, v17

    const/16 v27, 0x0

    const-wide/16 v16, 0x0

    move/from16 v28, v0

    move-object/from16 v3, v24

    move-object/from16 v0, v26

    const/4 v4, 0x4

    invoke-static/range {v8 .. v22}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v12, v20

    sget-object v8, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v9, v28, 0xe

    if-eq v9, v4, :cond_12

    const/4 v15, 0x0

    goto :goto_d

    :cond_12
    move/from16 v15, v23

    :goto_d
    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v15

    invoke-virtual {v12, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v4, v9

    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v4, :cond_13

    if-ne v9, v3, :cond_14

    :cond_13
    new-instance v9, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel3ScreenKt$StoreModeLevel3Screen$4$1;

    const/4 v3, 0x0

    invoke-direct {v9, v1, v0, v2, v3}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel3ScreenKt$StoreModeLevel3Screen$4$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL2UiModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v12, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_14
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v12, v8, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :cond_15
    move v0, v15

    const/4 v3, 0x0

    const v4, -0x46dc7da0

    invoke-virtual {v12, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v12, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const-string v0, "Catalog Store mode"

    const-string v4, "No catalog to display"

    sget-object v8, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    invoke-virtual {v8, v0, v4, v3}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_f

    :cond_16
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_f
    invoke-virtual {v12}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v9

    if-eqz v9, :cond_17

    new-instance v0, Lo;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lo;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v9, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_17
    return-void
.end method
