.class public final synthetic Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lkotlin/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->g:Lkotlin/Function;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->d:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->e:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->f:Ljava/lang/Object;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->g:Lkotlin/Function;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->b:I

    const/16 v2, 0x30

    const/4 v3, 0x0

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->g:Lkotlin/Function;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->f:Ljava/lang/Object;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->d:Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x2

    const/4 v10, 0x1

    packed-switch v1, :pswitch_data_0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v11, p2

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    and-int/lit8 v12, v11, 0x3

    if-eq v12, v9, :cond_0

    move v4, v10

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    and-int/lit8 v9, v11, 0x1

    invoke-interface {v1, v9, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    invoke-interface {v9}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->yb()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v10

    invoke-static {v10, v1}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v10

    sget-object v11, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v12, :cond_1

    if-ne v13, v5, :cond_2

    :cond_1
    new-instance v13, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderScanComposableKt$ShadeFinderScanComposable$1$1$1;

    invoke-direct {v13, v4, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderScanComposableKt$ShadeFinderScanComposable$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v13, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v11, v13}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;

    iget-object v12, v12, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

    if-eqz v12, :cond_3

    iget-object v12, v12, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;->b:Ljava/util/List;

    goto :goto_1

    :cond_3
    move-object v12, v3

    :goto_1
    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v13, v14

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v13, v14

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_4

    if-ne v14, v5, :cond_5

    :cond_4
    new-instance v14, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderScanComposableKt$ShadeFinderScanComposable$1$2$1;

    invoke-direct {v14, v8, v0, v10, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderScanComposableKt$ShadeFinderScanComposable$1$2$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    check-cast v14, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v12, v14}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v8, v12

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v8, v12

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v8, :cond_6

    if-ne v12, v5, :cond_7

    :cond_6
    new-instance v12, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderScanComposableKt$ShadeFinderScanComposable$1$3$1;

    invoke-direct {v12, v4, v7, v10, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderScanComposableKt$ShadeFinderScanComposable$1$3$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v0, v12}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_8

    new-instance v7, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v7}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v7, Landroidx/compose/material3/SnackbarHostState;

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v8, v12

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v8, :cond_9

    if-ne v12, v5, :cond_a

    :cond_9
    new-instance v12, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderScanComposableKt$ShadeFinderScanComposable$1$4$1;

    invoke-direct {v12, v9, v7, v0, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderScanComposableKt$ShadeFinderScanComposable$1$4$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v11, v12}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v3, :cond_b

    if-ne v8, v5, :cond_c

    :cond_b
    new-instance v8, Lrv0;

    const/4 v3, 0x3

    invoke-direct {v8, v4, v6, v3}, Lrv0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v7, v8, v1, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderScanScreenKt;->b(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_d
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v7, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v11, p2

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    and-int/lit8 v12, v11, 0x3

    if-eq v12, v9, :cond_e

    move v12, v10

    goto :goto_3

    :cond_e
    const/4 v12, 0x0

    :goto_3
    and-int/2addr v11, v10

    invoke-interface {v1, v11, v12}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_29

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v11, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTrackerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    move-object v14, v11

    check-cast v14, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    invoke-interface {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->yb()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v12

    invoke-static {v12, v1}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v12

    invoke-interface {v7}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v13

    invoke-static {v13, v1}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v13

    invoke-interface {v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->e()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v15

    invoke-static {v15, v1}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v23

    invoke-interface {v12}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;

    iget-object v15, v15, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

    if-eqz v15, :cond_f

    iget-object v15, v15, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;->b:Ljava/util/List;

    if-eqz v15, :cond_f

    check-cast v15, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v15, v9}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v2, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;

    iget-object v15, v15, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;->a:Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;

    iget-object v15, v15, Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;->d:Ljava/lang/String;

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v4, v15}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_10
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v5, :cond_11

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-interface {v1, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v4, Landroidx/compose/runtime/MutableState;

    sget-object v9, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v15, v15, v16

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v15, :cond_12

    if-ne v10, v5, :cond_13

    :cond_12
    new-instance v10, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$1$1;

    invoke-direct {v10, v14, v2, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v9, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v13}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;->a:Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsBottomSheet;

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v15

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v16

    or-int v15, v15, v16

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v15, :cond_14

    if-ne v3, v5, :cond_15

    :cond_14
    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$2$1;

    const/4 v15, 0x0

    invoke-direct {v3, v11, v13, v15}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$2$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v10, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v3, v10

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v3, :cond_16

    if-ne v10, v5, :cond_17

    :cond_16
    new-instance v10, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$3$1;

    const/4 v15, 0x0

    invoke-direct {v10, v7, v11, v4, v15}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$3$1;-><init>(Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_17
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v9, v10}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v3, :cond_18

    if-ne v10, v5, :cond_19

    :cond_18
    new-instance v10, Lsq0;

    const/16 v3, 0x13

    invoke-direct {v10, v8, v3}, Lsq0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v10, Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    const/4 v13, 0x1

    invoke-static {v3, v10, v1, v3, v13}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object v3, Landroidx/compose/ui/platform/CompositionLocalsKt;->l:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    sget-object v10, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Context;

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v5, :cond_1a

    new-instance v13, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v13}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1a
    move-object/from16 v18, v13

    check-cast v18, Landroidx/compose/material3/SnackbarHostState;

    invoke-interface {v1, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v13

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v13, v15

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v13, v15

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/b;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v13, v15

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v13, v15

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v13, :cond_1c

    if-ne v15, v5, :cond_1b

    goto :goto_5

    :cond_1b
    move-object/from16 v19, v10

    move-object v3, v11

    move-object/from16 v21, v12

    move-object/from16 v0, v18

    goto :goto_6

    :cond_1c
    :goto_5
    new-instance v15, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1;

    const/16 v22, 0x0

    move-object/from16 v20, v0

    move-object/from16 v17, v3

    move-object/from16 v19, v10

    move-object/from16 v16, v11

    move-object/from16 v21, v12

    invoke-direct/range {v15 .. v22}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$5$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Landroidx/compose/material3/SnackbarHostState;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v3, v16

    move-object/from16 v0, v18

    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_6
    check-cast v15, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v9, v15}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v9, v10

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v9, :cond_1d

    if-ne v10, v5, :cond_1e

    :cond_1d
    new-instance v10, Lrv0;

    const/4 v9, 0x2

    invoke-direct {v10, v14, v8, v9}, Lrv0;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_1f

    if-ne v9, v5, :cond_20

    :cond_1f
    new-instance v9, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$7$1;

    invoke-direct {v9, v14, v2, v6}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$7$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v2, v6

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v2, :cond_21

    if-ne v6, v5, :cond_22

    :cond_21
    new-instance v6, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$8$1;

    invoke-direct {v6, v14, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$8$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;)V

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v2, :cond_23

    if-ne v8, v5, :cond_24

    :cond_23
    new-instance v12, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$9$1;

    const-string v17, "trackOnRecommendationsSwiped(Ljava/lang/String;)V"

    const/16 v18, 0x0

    const/4 v13, 0x1

    const-class v15, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/tracking/ShadeFinderTracker;

    const-string v16, "trackOnRecommendationsSwiped"

    invoke-direct/range {v12 .. v18}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v1, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v12

    :cond_24
    check-cast v8, Lkotlin/reflect/KFunction;

    move-object/from16 v16, v8

    check-cast v16, Lkotlin/jvm/functions/Function1;

    const/16 v18, 0x30

    move-object v12, v0

    move-object/from16 v17, v1

    move-object v15, v6

    move-object v14, v9

    move-object v13, v10

    invoke-static/range {v11 .. v18}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt;->d(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v0, v17

    invoke-interface/range {v23 .. v23}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;

    if-eqz v1, :cond_28

    const v1, 0x4098470d

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_25

    new-instance v1, Lav0;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lav0;-><init>(I)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_25
    check-cast v1, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x5

    const/16 v6, 0x30

    invoke-static {v6, v2, v0, v1}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v14

    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v1, v1

    sget-object v2, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const v2, 0x3f59999a    # 0.85f

    mul-float/2addr v2, v1

    const v1, 0x7f140319

    invoke-static {v0, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v12

    const/4 v1, 0x7

    const/4 v6, 0x0

    invoke-static {v6, v1}, Landroidx/compose/foundation/layout/WindowInsetsKt;->b(II)Landroidx/compose/foundation/layout/WindowInsets;

    move-result-object v15

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v1, :cond_26

    if-ne v6, v5, :cond_27

    :cond_26
    new-instance v6, Lke;

    const/4 v13, 0x1

    invoke-direct {v6, v3, v13}, Lke;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;I)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_27
    move-object v13, v6

    check-cast v13, Lkotlin/jvm/functions/Function0;

    new-instance v1, Lyv0;

    move-object v6, v4

    move-object v3, v7

    move-object/from16 v4, v19

    move-object/from16 v5, v23

    invoke-direct/range {v1 .. v6}, Lyv0;-><init>(FLcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Landroid/content/Context;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    const v2, 0x495a85de    # 895069.9f

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v20

    sget v1, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v1, v1, 0x9

    const/high16 v2, 0x6000000

    or-int v22, v1, v2

    const/16 v23, 0xe1

    const/4 v11, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v21, v0

    invoke-static/range {v11 .. v23}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_7

    :cond_28
    const v1, 0x40d0ac93

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->F()V

    :goto_7
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_8

    :cond_29
    move-object v0, v1

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->D()V

    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
