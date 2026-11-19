.class public abstract Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel2ScreenKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x20c02d6e

    move-object/from16 v7, p6

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p7, v0

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x20

    goto :goto_1

    :cond_1
    const/16 v8, 0x10

    :goto_1
    or-int/2addr v0, v8

    invoke-virtual {v11, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x100

    goto :goto_2

    :cond_2
    const/16 v8, 0x80

    :goto_2
    or-int/2addr v0, v8

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x800

    goto :goto_3

    :cond_3
    const/16 v8, 0x400

    :goto_3
    or-int/2addr v0, v8

    invoke-virtual {v11, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x4000

    goto :goto_4

    :cond_4
    const/16 v8, 0x2000

    :goto_4
    or-int/2addr v0, v8

    invoke-virtual {v11, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    const/high16 v9, 0x20000

    if-eqz v8, :cond_5

    move v8, v9

    goto :goto_5

    :cond_5
    const/high16 v8, 0x10000

    :goto_5
    or-int/2addr v0, v8

    const v8, 0x12493

    and-int/2addr v8, v0

    const v10, 0x12492

    const/4 v14, 0x0

    const/4 v12, 0x1

    if-eq v8, v10, :cond_6

    move v8, v12

    goto :goto_6

    :cond_6
    move v8, v14

    :goto_6
    and-int/lit8 v10, v0, 0x1

    invoke-virtual {v11, v10, v8}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v8

    if-eqz v8, :cond_13

    sget-object v8, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->d8()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v8

    invoke-static {v8, v11}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v8

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState;

    instance-of v13, v10, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$StoreModeCatalogUIModel;

    const/4 v15, 0x0

    if-eqz v13, :cond_7

    check-cast v10, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$StoreModeCatalogUIModel;

    goto :goto_7

    :cond_7
    move-object v10, v15

    :goto_7
    if-eqz v10, :cond_a

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$StoreModeCatalogUIModel;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;

    if-eqz v10, :cond_a

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCatalogUiModel;->b:Ljava/util/List;

    if-eqz v10, :cond_a

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v7, v13

    check-cast v7, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL1UiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL1UiModel;->a:Ljava/lang/String;

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_8

    :cond_9
    move-object v13, v15

    :goto_8
    check-cast v13, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL1UiModel;

    move-object v7, v13

    goto :goto_9

    :cond_a
    move-object v7, v15

    :goto_9
    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState;

    instance-of v8, v8, Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState$Loading;

    const/high16 v10, 0x70000

    and-int/2addr v10, v0

    if-ne v10, v9, :cond_b

    move v9, v12

    goto :goto_a

    :cond_b
    move v9, v14

    :goto_a
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v9, :cond_c

    if-ne v10, v13, :cond_d

    :cond_c
    new-instance v10, Lsq0;

    const/16 v9, 0x17

    invoke-direct {v10, v6, v9}, Lsq0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v11, v10}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-static {v14, v10, v11, v14, v12}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    if-eqz v8, :cond_e

    const v0, -0xe952304

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v12, 0x0

    const/4 v13, 0x7

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v13}, Lcom/vuitton/android/presentation/compose/components/ProgressViewKt;->a(Landroidx/compose/ui/Modifier;JZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v11, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_c

    :cond_e
    if-eqz v7, :cond_12

    const v8, 0x3bf28e13

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v8, Les0;

    const/16 v9, 0xa

    invoke-direct {v8, v7, v5, v9}, Les0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v9, 0x254f0029

    invoke-static {v9, v8, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v8

    invoke-static {}, Lcom/vuitton/android/presentation/extensions/WindowInsetsExtKt;->a()Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v17

    new-instance v9, Lni0;

    const/16 v10, 0x1c

    invoke-direct {v9, v7, v4, v10}, Lni0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v10, -0x20ce2ec2

    invoke-static {v10, v9, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v18

    const v20, 0x30000030

    const/16 v21, 0xfd

    move-object v9, v7

    const/4 v7, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object/from16 v16, v10

    const/4 v10, 0x0

    move-object/from16 v19, v11

    const/4 v11, 0x0

    move/from16 v22, v12

    const/4 v12, 0x0

    move-object/from16 v23, v13

    move/from16 v24, v14

    const-wide/16 v13, 0x0

    move-object/from16 v26, v15

    move-object/from16 v25, v16

    const-wide/16 v15, 0x0

    move/from16 v27, v0

    move-object/from16 v3, v23

    move-object/from16 v0, v25

    const/4 v4, 0x4

    invoke-static/range {v7 .. v21}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v11, v19

    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v8, v27, 0xe

    if-eq v8, v4, :cond_f

    const/4 v14, 0x0

    goto :goto_b

    :cond_f
    move/from16 v14, v22

    :goto_b
    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v4, v14

    invoke-virtual {v11, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v4, v8

    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v4, :cond_10

    if-ne v8, v3, :cond_11

    :cond_10
    new-instance v8, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel2ScreenKt$StoreModeLevel2Screen$4$1;

    const/4 v3, 0x0

    invoke-direct {v8, v1, v0, v2, v3}, Lcom/vuitton/android/presentation/screen/storemode/components/catalog/StoreModeLevel2ScreenKt$StoreModeLevel2Screen$4$1;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeCategoryL1UiModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v11, v8}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v11, v7, v8}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_c

    :cond_12
    move v0, v14

    move-object v3, v15

    const v4, -0xe940dfb

    invoke-virtual {v11, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v11, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const-string v0, "Catalog Store mode"

    const-string v4, "No catalog to display"

    sget-object v7, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    invoke-virtual {v7, v0, v4, v3}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_c
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_d

    :cond_13
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_d
    invoke-virtual {v11}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v8

    if-eqz v8, :cond_14

    new-instance v0, Lzs0;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lzs0;-><init>(Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V

    iput-object v0, v8, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method
