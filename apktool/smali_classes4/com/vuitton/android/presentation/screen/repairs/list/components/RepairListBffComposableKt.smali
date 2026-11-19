.class public abstract Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;",
        "contactUsUiModel",
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
.method public static final a(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x376fb71f

    move-object/from16 v2, p10

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v12, 0x4

    if-eqz v0, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p11, v0

    move-object/from16 v2, p1

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    const/16 v3, 0x10

    :goto_1
    or-int/2addr v0, v3

    move-object/from16 v3, p2

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x100

    goto :goto_2

    :cond_2
    const/16 v5, 0x80

    :goto_2
    or-int/2addr v0, v5

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x800

    goto :goto_3

    :cond_3
    const/16 v5, 0x400

    :goto_3
    or-int/2addr v0, v5

    move-object/from16 v13, p4

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v5, 0x4000

    goto :goto_4

    :cond_4
    const/16 v5, 0x2000

    :goto_4
    or-int/2addr v0, v5

    move-object/from16 v14, p5

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/high16 v5, 0x20000

    goto :goto_5

    :cond_5
    const/high16 v5, 0x10000

    :goto_5
    or-int/2addr v0, v5

    move-object/from16 v15, p6

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/high16 v5, 0x100000

    goto :goto_6

    :cond_6
    const/high16 v5, 0x80000

    :goto_6
    or-int/2addr v0, v5

    move-object/from16 v5, p7

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/high16 v6, 0x800000

    goto :goto_7

    :cond_7
    const/high16 v6, 0x400000

    :goto_7
    or-int/2addr v0, v6

    move-object/from16 v6, p8

    invoke-virtual {v8, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/high16 v7, 0x4000000

    goto :goto_8

    :cond_8
    const/high16 v7, 0x2000000

    :goto_8
    or-int/2addr v0, v7

    move-object/from16 v7, p9

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/high16 v9, 0x20000000

    goto :goto_9

    :cond_9
    const/high16 v9, 0x10000000

    :goto_9
    or-int/2addr v0, v9

    const v9, 0x12492493

    and-int/2addr v9, v0

    const v10, 0x12492492

    const/16 v16, 0x1

    if-eq v9, v10, :cond_a

    move/from16 v9, v16

    goto :goto_a

    :cond_a
    const/4 v9, 0x0

    :goto_a
    and-int/lit8 v10, v0, 0x1

    invoke-virtual {v8, v10, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_13

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v9, Lkotlin/Unit;->a:Lkotlin/Unit;

    and-int/lit8 v10, v0, 0xe

    if-eq v10, v12, :cond_b

    const/16 v17, 0x0

    goto :goto_b

    :cond_b
    move/from16 v17, v16

    :goto_b
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    const/4 v11, 0x0

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v17, :cond_c

    if-ne v7, v12, :cond_d

    :cond_c
    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffComposableKt$RepairListBffComposable$1$1;

    invoke-direct {v7, v1, v11}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffComposableKt$RepairListBffComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v9, v7}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v7

    invoke-static {v7, v8}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v17

    invoke-interface {v1}, Lcom/vuitton/android/presentation/contact/ContactUsDelegate;->i()Lkotlinx/coroutines/flow/Flow;

    move-result-object v5

    new-instance v18, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v31, 0xfff

    const/16 v32, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v18 .. v32}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v9, 0x0

    move v7, v10

    const/4 v10, 0x2

    move/from16 v19, v7

    const/4 v7, 0x0

    move/from16 v20, v0

    move-object/from16 v6, v18

    move/from16 v33, v19

    const/4 v0, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/compose/runtime/SnapshotStateKt;->a(Lkotlinx/coroutines/flow/Flow;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object v6

    const/4 v5, 0x7

    invoke-static {v0, v5, v8, v11}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-boolean v7, v7, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->b:Z

    const/4 v9, 0x6

    if-eqz v7, :cond_e

    const v5, 0x317c20be

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v5, Lkn0;

    const/16 v6, 0xc

    invoke-direct {v5, v4, v6}, Lkn0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v6, 0x68e1a78c

    invoke-static {v6, v5, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    invoke-static {v5, v8, v9}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListLoadingScreenKt;->a(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_d

    :cond_e
    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->e:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const v10, 0xe000

    if-eqz v7, :cond_f

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->d:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_f

    const v5, 0x317f128d

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    new-instance v5, Lkn0;

    const/16 v6, 0xd

    invoke-direct {v5, v4, v6}, Lkn0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v6, -0x6a9a697a

    invoke-static {v6, v5, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->k:Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    iget-boolean v6, v6, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->a:Z

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->k:Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    iget-boolean v7, v7, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->b:Z

    shl-int/lit8 v11, v20, 0x3

    and-int/lit16 v11, v11, 0x380

    or-int/2addr v11, v9

    shl-int/lit8 v9, v20, 0x6

    and-int/2addr v9, v10

    or-int/2addr v11, v9

    move-object v9, v3

    move-object v10, v8

    move v8, v7

    move-object v7, v2

    invoke-static/range {v5 .. v11}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListEmptyScreenKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;ZLkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v8, v10

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_d

    :cond_f
    const v2, 0x3185ada0

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-interface/range {v17 .. v17}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    invoke-interface {v6}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    new-instance v2, Lls0;

    const/4 v7, 0x0

    move-object v3, v5

    move-object v5, v4

    move-object v4, v3

    move-object/from16 v3, p9

    invoke-direct/range {v2 .. v7}, Lls0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    const v3, -0xfe06671

    invoke-static {v3, v2, v8}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    move/from16 v7, v33

    const/4 v2, 0x4

    if-eq v7, v2, :cond_10

    move v7, v0

    goto :goto_c

    :cond_10
    move/from16 v7, v16

    :goto_c
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v7, :cond_11

    if-ne v2, v12, :cond_12

    :cond_11
    new-instance v2, Lpr0;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Lpr0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;I)V

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_12
    check-cast v2, Lkotlin/jvm/functions/Function0;

    sget v3, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/2addr v3, v9

    or-int/lit16 v3, v3, 0xc00

    shl-int/lit8 v6, v20, 0x9

    and-int/2addr v6, v10

    or-int/2addr v3, v6

    shl-int/lit8 v6, v20, 0x3

    const/high16 v7, 0x70000

    and-int/2addr v7, v6

    or-int/2addr v3, v7

    const/high16 v7, 0x380000

    and-int/2addr v7, v6

    or-int/2addr v3, v7

    const/high16 v7, 0x1c00000

    and-int/2addr v7, v6

    or-int/2addr v3, v7

    const/high16 v7, 0xe000000

    and-int/2addr v6, v7

    or-int/2addr v3, v6

    shl-int/lit8 v6, v20, 0x15

    const/high16 v7, 0x70000000

    and-int/2addr v6, v7

    or-int v16, v3, v6

    shr-int/lit8 v3, v20, 0x18

    and-int/lit8 v3, v3, 0x7e

    move-object/from16 v6, v17

    move/from16 v17, v3

    move-object v3, v6

    move-object/from16 v6, p1

    move-object/from16 v10, p7

    move-object/from16 v12, p8

    move-object v7, v13

    move-object v9, v15

    move-object/from16 v13, p9

    move-object v15, v8

    move-object v8, v14

    move-object v14, v2

    move-object v2, v11

    move-object/from16 v11, p2

    invoke-static/range {v2 .. v17}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffScreenKt;->b(Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v8, v15

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_d

    :cond_13
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_d
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v13

    if-eqz v13, :cond_14

    new-instance v0, Lik;

    const/4 v12, 0x3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lik;-><init>(Lcom/vuitton/android/presentation/contact/ContactUsDelegate;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V

    iput-object v0, v13, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_14
    return-void
.end method
